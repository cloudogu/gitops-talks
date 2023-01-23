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

    // Build image versions
    // When updating, also update printPdf.sh
    headlessChromeImage = 'yukinying/chrome-headless-browser:96.0.4662.6'

    // Params for GitHub pages deployment
    String ghPageCredentials = 'cesmarvin'
    
    Git git = new Git(this, ghPageCredentials)
    Docker docker = new Docker(this)

    catchError {

        stage('Checkout') {
            checkout scm
            git.clean('')
        }

        String conferenceName = '2023-01-cloudogu'
        
        String pdfName = createPdfName()

        String versionName = createVersion()
        String imageName = "${env.JOB_NAME}:${versionName}"
        String packagePath = 'target'
        forceDeployGhPages = Boolean.valueOf(params.forceDeployGhPages)
        def image

        stage('Build') {
            writeVersionNameToIntroSlide(versionName, introSlidePath)
            image = docker.build imageName
        }

        stage('Print PDF & Package WebApp') {
            String pdfPath = "${packagePath}/${pdfName}"
            printPdfAndPackageWebapp image, pdfName, packagePath
            archiveArtifacts pdfPath

            // Make world readable (useful when accessing from docker)
            sh "chmod og+r '${pdfPath}'"

            // Use a constant name for the PDF for easier URLs, for deploying
            String finalPdfPath = "pdf/${createPdfName(false)}"
            sh "mkdir -p ${packagePath}/pdf/ pdf"
            sh "mv '${pdfPath}' '${packagePath}/${finalPdfPath}'"
            sh "cp '${packagePath}/${finalPdfPath}' '${finalPdfPath}'"
            // Build image again, so PDF is added
            image = docker.build imageName
        }

        stage('Deploy GH Pages') {

            if (env.BRANCH_NAME == 'main') {
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
    String title = sh (returnStdout: true, script: 'grep -r \'TITLE\' Dockerfile | sed "s/.*TITLE=\'\\(.*\\)\'.*/\\1/" ').trim()
    String pdfName = '';
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

void printPdfAndPackageWebapp(def image, String pdfName, String distPath) {
    Docker docker = new Docker(this)

    image.withRun("-v ${WORKSPACE}:/workspace -w /workspace") { revealContainer ->

        // Extract rendered reveal webapp from container for further processing
        sh "docker cp ${revealContainer.id}:/reveal '${distPath}'"

        def revealIp = docker.findIp(revealContainer)

        docker.image(headlessChromeImage)
        // Chromium writes to $HOME/local, so we need an entry in /etc/pwd for the current user
                .mountJenkinsUser()
        // Try to avoid OOM for larger presentations by setting larger shared memory
                .inside("--shm-size=4G") {
                    // If more flags should ever be necessary: https://peter.sh/experiments/chromium-command-line-switches
                    sh "/usr/bin/google-chrome-unstable --headless --no-sandbox --disable-gpu --disable-web-security " +
                            "--print-to-pdf='${distPath}/${pdfName}' --run-all-compositor-stages-before-draw --virtual-time-budget=10000 " +
                            "http://${revealIp}:8080/?print-pdf"
                }
    }
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