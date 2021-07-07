# Demo
<!-- .slide: id="demo" -->

<img data-src="images/gitops-playground.svg" width="65%" />

<i class='fab fa-github'></i> [cloudogu/k8s-gitops-playground](https://github.com/cloudogu/k8s-gitops-playground)

Notes:
* Preparation:
  * Start k3s cluster. In playground repo: ` scripts/apply.sh --argocd`
  * Speedup build for presentation 8min -> 1min
    * Comment Build & test stages an `junit` line  
      http://localhost:9091/scm/repo/argocd/petclinic-plain/code/sourceext/edit/main/Jenkinsfile
    * Run build (warm up maven and docker cache). Note that "maven cache" for jenkins pods is cleared on host restart (/tmp)  
      http://localhost:9090/job/argocd-applications/job/petclinic-plain/
* Demo Ideas
  * Click on SCM-Manager
    * Explain repos:
      * controll-app (argo settings)
      * gitops repo
      * app repos
    * Enter petclinic-plain/code
      * Java code, Jenkinsfile, K8s
      * Briefly describe Jenkinsfile
      * Trigger build by editing welcome message
        http://localhost:9091/scm/repo/argocd/petclinic-plain/code/sourceext/edit/main/src/main/resources/messages/messages.properties
  * Click on Jenkins Controller
    * Navigate to argocd-applications/petclinic-plain job  
      http://localhost:9090/job/argocd-applications/job/petclinic-plain/
    * Job runs
  * ... meantime: Back to SCMM
    * Navigate to GitOps repo / code
    * Explain folder structure
      * Staging
      * K8s resource
      * Prod
  * Click on argo
  * Explain that we see applications as defined in control app.  
    There: app -> Repo
  * Go to petclinic-plain-staging
  * Click on service
  * Copy hostname and navigate there in browser
  * Same for petclinic-plain-production
  * Back to Jenkins: Job should have succeeded
  * Back to SCMM:
    * Show staging commit made by Jenkins
    * Show pull request
      * Click on Link to original commit. Then back in browser.
      * Show diff -> new image
      * Merge PR
  * Back to Argo
    * Sync
    * Wait for success
    * Reload prod application
    * -> Change in welcome message shows

Image sources:
* https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/cloudogu/k8s-gitops-playground/de7ba71/docs/gitops-playground.puml&fmt=svg  
  Manually edited:
  * Link on Jenkins Logo: http://localhost:9090
  * Link on SCMM Logo: http://localhost:9091/scm/repos
  * Link on GitOps operator Logo: http://localhost:9092
* https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/cloudogu/k8s-gitops-playground/de7ba71/docs/production-setting.puml&fmt=svg
  