#!groovy

//Keep this version in sync with the one used in Maven.pom-->
@Library('github.com/cloudogu/ces-build-lib@1.48.0')
import com.cloudogu.ces.cesbuildlib.*

node('docker') {

    properties([
            // Keep only the last 10 build to preserve space
            buildDiscarder(logRotator(numToKeepStr: '10')),
            // Don't run concurrent builds for a branch, because they use the same workspace directory
            disableConcurrentBuilds(),
            parameters([
                    booleanParam(defaultValue: false, name: 'forceDeployGhPages',
                            description: 'GH Pages are deployed on main Branch only. If this box is checked it\'s deployed no what Branch is built.')
            ])
    ])

    def introSlidePath = 'docs/slides/01-intro.md'

    // Params for GitHub pages deployment
    String ghPageCredentials = 'cesmarvin'
    
    Git git = new Git(this, ghPageCredentials)
    Docker docker = new Docker(this)

    catchError {

        stage('Checkout') {
            checkout scm
            git.clean('')
        }

        String conferenceName = '2024-11-continuous-lifecycle'
        
        String pdfName = createPdfName()

        String versionName = createVersion()
        String imageName = "${env.JOB_NAME}:${versionName}"
        String packagePath = 'target'
        forceDeployGhPages = Boolean.valueOf(params.forceDeployGhPages)
        def image

        stage('Build') {
            writeVersionNameToIntroSlide(versionName, introSlidePath)
            image = docker.build imageName

            // Extract rendered reveal webapp from container
            sh "tempContainer=\$(docker create ${image.id}) && " +
                "docker cp \${tempContainer}:/reveal ${packagePath} && " +
                "docker rm \${tempContainer}"
        }

        stage('Print PDF & Package WebApp') {
            String pdfPath = "${packagePath}/${pdfName}"
            printPdf pdfPath
            // Avoid "ERROR: No artifacts found that match the file pattern " by using *.
            // Has the risk of archiving other PDFs that might be there
            archiveArtifacts "${packagePath}/*.pdf"

            // Make world readable (useful when accessing from docker)
            sh "chmod og+r '${pdfPath}'"

            // Use a constant name for the PDF for easier URLs, for deploying
            String finalPdfPath = "pdf/${createPdfName(false)}"
            sh "mkdir -p ${packagePath}/pdf/ pdf"
            sh "mv '${pdfPath}' '${packagePath}/${finalPdfPath}'"
            sh "cp '${packagePath}/${finalPdfPath}' '${finalPdfPath}'"
        }

        stage('Deploy GH Pages') {

            if (env.BRANCH_NAME == 'main' && conferenceName) {
                git.pushGitHubPagesBranch(packagePath, versionName, conferenceName)
            } else {
                echo "Skipping deploy to GH pages, because not on main branch"
            }
        }
    }

    mailIfStatusChanged(git.commitAuthorEmail)
}

String headlessChromeImage

String createPdfName(boolean includeDate = true) {
  String forbiddenChars = "[\\\\/:*?\"<>|]"
  String title = sh (returnStdout: true, script: 'grep -r \'TITLE\' Dockerfile | sed "s/.*TITLE=\'\\(.*\\)\'.*/\\1/" ')
    .trim()
    .replaceAll(forbiddenChars, '')
  
    String pdfName = ''
    if (includeDate) {
        pdfName = "${new Date().format('yyyy-MM-dd')}-"
    }
    pdfName += "${title}.pdf"
    return pdfName
}

String createVersion() {
    // E.g. "201708140933-1674930"
    String versionName = "${new Date().format('yyyyMMddHHmm')}-${new Git(this).commitHashShort}"

    if (env.BRANCH_NAME == "main") {
        currentBuild.description = versionName
        echo "Building version $versionName on branch ${env.BRANCH_NAME}"
    } else {
        versionName += '-SNAPSHOT'
    }
    return versionName
}

void writeVersionNameToIntroSlide(String versionName, String introSlidePath) {
    def distIntro = "${introSlidePath}"
    String filteredIntro = filterFile(distIntro, "<!--VERSION-->", "Version: $versionName")
    sh "cp $filteredIntro $distIntro"
    sh "mv $filteredIntro $introSlidePath"
}

void printPdf(String pdfPath) {
    sh (returnStdout: true, script: "COMPRESS=true ./printPdf.sh | xargs -I{} mv {} '${pdfPath}'").trim()
}

/**
 * Filters a {@code filePath}, replacing an {@code expression} by {@code replace} writing to new file, whose path is returned.
 *
 * @return path to filtered file
 */
String filterFile(String filePath, String expression, String replace) {
    String filteredFilePath = filePath + ".filtered"
    // Fail command (and build) if file not present
    sh "test -e ${filePath} || (echo Title slide ${filePath} not found && return 1)"
    sh "cat ${filePath} | sed 's/${expression}/${replace}/g' > ${filteredFilePath}"
    return filteredFilePath
}
