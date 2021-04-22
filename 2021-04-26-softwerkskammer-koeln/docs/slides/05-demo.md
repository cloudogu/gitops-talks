<!-- .slide: data-background-image="images/structure.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

<h1 style=";color: black "> How can GitOps be used?<br/> Design Decisions</h1>
<br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/>

Note:
Source: https://unsplash.com/photos/wWQ760meyWI




* Implementing stages
* Role of CI server
* Number of Repos
* ...

Note:
* Repos: One per app, including Infra, or a separate infra repo; Or both?
* Staging: One repo per stage, one branch per stage or folders?
* More
  * Authorization: Multiple tenants? How to implement authorization basing on repo/folder structure



### Implementing stages

#### Idea 1: Staging Branches

* Develop ➡ Staging
* Main ➡ Production
<br/><br/>

<div class="fragment" data-fragment-index="1">
<span class="floatLeft" style="font-size: 4em;">❌</span>
<br/>
<p>Logic for branching complicated and error prone (merges)</p>
</div>

Note:
* Branching might lead to merge conflicts, develop and master lose sync



#### Idea 2: Staging folders

* On the same branch: One folder per stage
* Explicit namespace in resource YAMLs, if necessary
* Process: Just commit to staging folder, create PRs for prod
* Risky, but can be automized
  <br/>
  <br/>

<div class="fragment" data-fragment-index="1">
<span class="floatLeft" style="font-size: 4em;">✅</span>
<br/>
<ul class="fragment" data-fragment-index="1">
    <li>Logic for branching simpler</li>
    <li>Supports arbitrary number of stages</li>
<ul/>
</div>



### Role of CI server
<!-- .slide: style="text-align: center !important;"  -->
<img data-src="images/gitops-with-image.svg" width="70%"/>



### Application repo vs GitOps repo

* Good pratice: Keeping everything in app repo (code, docs, infra)  
* GitOps: Put infra in separate repo?   
  Disadvantages:
  * Separated maintenance
  * Separated versioning
  * Review spans across multiple repos
  * Local dev more difficult
<br/><br/>

<div class="fragment" data-fragment-index="1">
<strong>Can't we have both?</strong>
</div>



**Yes, we can! Using a CI-Server**

<img data-src="images/gitops-with-app-repo.svg" />


Note:
* Multiple app repos, one GitOps repo for infra
* Depending on technology more repos for configuring operator



**Disadvantages**

* Complexity
* Efforts for developing CI pipelines
* A lot can go wrong. Examples
  * Git Conflicts caused by concurrency
  * Danger of inconsistencies

➡ Recommendation: Use a plugin or library  

Example: <i class='fab fa-github'></i> [cloudogu/gitops-build-lib](https://github.com/cloudogu/gitops-build-lib) <i class="fab fa-jenkins"></i>

Notes:
* More critics:
  * "I'm really starting to get irritated with "GitOps." Why does CI have to be reinvented for k8s. It's a simple problem. On git commit run "kubectl" Every CI system today can do this, do we have to reinvent "git clone" with ArgoCD/Flux. I question that this is the right approach."   
    https://twitter.com/ibuildthecloud/status/1263131200484372485
  * "My gitops workflow might be turing complete"  
    https://twitter.com/ibuildthecloud/status/1311474999148961798
  * GitOps: The Bad and the Ugly - Ádám Sándor
    https://twitter.com/adamsand0r/status/1301814503672344577
    🌐 https://blog.container-solutions.com/gitops-limitations
  * Carlos Sanchez - GitOps: The Bad and the Ugly "Not designed for programmatic updates" totally agree, we had to do some ugly logic to work around git conflicts (more about it at https://buff.ly/3euUG29 )
    https://mobile.twitter.com/csanchez/status/1303371275168083968



**Advantages**

* Fail early: static YAML analysis on CI server,  
  e.g. yamlint, kubeval, helm lint
* Automated staging (e.g. PR creation, namespaces)
* Use IaC for development environment
* Write config files not inline YAML  
  ➡ Automatically converted to configMap
* Simplify review by adding info to PRs 

<br/>
<br/>
<div class="fragment">
<img data-src="images/PR.png" width="70%"/>
</div>

Note:
* Enrich commit message: Author, original commit, issue ID and build number



# Demo

<object data="images/gitops-playground.svg" type="image/svg+xml" width="60%">
        <span>Your browser doesn't support SVG images</span>
</object>

<i class='fab fa-github'></i> [cloudogu/k8s-gitops-playground](https://github.com/cloudogu/k8s-gitops-playground)

Notes:
* Preparation: 
  * Start k3s cluster. In playground repo: ` scripts/apply.sh --argocd`
  * Speedup build for presentation 8min -> 1min
    * Uncomment   Build & test stages  
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
    * Reload prod applicationm
    * -> Change in welcome message shows
 
Image sources:
  * https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/cloudogu/k8s-gitops-playground/de7ba71/docs/gitops-playground.puml&fmt=svg  
    Manually edited:
    * Link on Jenkins Logo: http://localhost:9090
    * Link on SCMM Logo: http://localhost:9091/scm/repos
    * Link on GitOps operator Logo: http://localhost:9092
  * https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/cloudogu/k8s-gitops-playground/de7ba71/docs/production-setting.puml&fmt=svg
  