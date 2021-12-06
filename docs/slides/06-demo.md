# Demo
<!-- .slide: id="demo" -->

<img data-src="images/gitops-playground.svg" width="60%" />

<i class='fab fa-github'></i> [cloudogu/gitops-playground](https://github.com/cloudogu/gitops-playground)

Notes:
* Preparation:
  * Start k3s cluster. In playground repo: ` scripts/apply.sh --argocd`
  * Speedup build for presentation 8min -> 1min
    * Comment Build & test stages and `junit` line  
      http://localhost:9091/scm/repo/argocd/petclinic-plain/code/sourceext/edit/main/Jenkinsfile
    * Run build (warm up maven and docker cache). Note that "maven cache" for jenkins pods is cleared on host restart (/tmp)  
      http://localhost:9090/job/argocd-applications/job/petclinic-plain/
  * Open Tabs, log in increase zoom: SCMM, ArgoCD, Staging App  
* Demo Ideas
  * Show Staging app, explain what we will change
  * Click on SCM-Manager
    * Explain repos:
      * gitops repo
      * app repos
    * Enter petclinic-plain/code -> Show on diagram on slide
      * First: Trigger build by editing welcome message
        http://localhost:9091/scm/repo/argocd/petclinic-plain/code/sourceext/edit/main/src/main/resources/messages/messages.properties
      * Show Jenkins Job starts
      * Back to SCMM: Explain Jenkinsfile especially gitops build lib 
      * Briefly show k8s resources
  * Navigate to GitOps repo / code -> Show on diagram on slide
    * Explain folder structure
      * Show k8s resource -> Image Name
      * Show staging commit, click on app commit
  * Click on argo
    * Go to petclinic-plain-staging
    * Upgrade should have happened
  * Reload Staging App in other Tab
  * Back to argo, petclinic-plain-production
    * Click on service
    * Copy hostname and navigate there in browser
  * Back to SCMM:
    * Show pull request
      * Click on Link to original commit. Then back in browser.
      * Show diff -> new image
      * Merge PR
  * Back to Argo
    * Sync
    * Wait for success
    * Reload prod application
    * -> Change in welcome message shows
      eu.gcr.io/cloudogu-trainings/gitops-playground
    * /cloudogu-trainings/global/gitops-playground

Image sources:
* https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/cloudogu/k8s-gitops-playground/de7ba71/docs/gitops-playground.puml&fmt=svg  