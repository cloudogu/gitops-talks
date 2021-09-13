<!-- .slide: data-background-image="images/challenge.jpg"  -->
<!-- .slide: style="color: black;"  -->

<h1 style="color: black; text-align: right">What challenges arise with GitOps?</h1>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
Note:
Source: https://unsplash.com/photos/bJhT_8nbUA0



## More Infra ...

* GitOps Operator: One or more custom controllers
* Helm, Kustomize Controllers
* Operators for Supplementary tools (secrets, etc.)
* Monitoring/Alerting systems
* ...

Note:
* Most operators comprise multiple components. E.g. argo:  
  app controller, UI server, repo server, redis, dex
* Challenge: Using a template engine that is incompatible with GitOps



## ... higher cost

* Maintenance/patching (vendor lock-in)
* Resource consumption
* Learning curve
* Error handling
  * failing late and silently
  * monitoring/alerting required
  * reason might be difficult to pinpoint
  * operators cause alerts (OOM errors, on Git/API server down, etc.)

Note:
* Fail earlier using validation in CI, for example



## Day two questions

* POC is simple
* Operations in prod has its challenges
  * How to realize staging?
  * How to structure repos and how many of them?
  * Role of CI server?
  * How to realize local dev env?
  * How to delete resources?
  * ...

Note:
* Repos: One per app, including Infra, or a separate infra repo; Or both?
* Staging: One repo per stage, one branch per stage or folders?

More Challenges
* Authorization: Multiple tenants? How to implement authorization basing on repo/folder structure
* Git-sync via Polling/Webhook? Flux v1 did not have built-in webhook support
* Deploying resources with dependencies, e.g. CR and CRD



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
* One operator per namespace necessary (flux v1)



#### Idea 2: Staging folders

* On the same branch: One folder per stage
  ```text
  ├── production
  │   └── application
  │       ├── deployment.yaml
  │       └── ...
  └── staging
      └── application
          ├── deployment.yaml
          └── ...
  ```
* Process:
  * commit to staging folder only,
  * create short lived branches and pull requests for prod
* Duplication is tedious, but can be automized
  <br/>

<div class="fragment" data-fragment-index="1">
<span class="floatLeft" style="font-size: 4em;">✅</span>
<br/>
<ul class="fragment" data-fragment-index="1">
    <li>Logic for branching simpler</li>
    <li>Supports arbitrary number of stages</li>
<ul/>
</div>
Note:
* production branch: Protect via SCM
* Stages as namespace: Explicit namespace in resource YAMLs



### Role of CI server
<!-- .slide: style="text-align: center !important;"  -->
<img data-src="images/gitops-with-image.svg" width="70%"/>



### Number of repositories: application vs GitOps repo

GitOps tools: Put infra in separate repo!

<img data-src="images/gitops-with-app-repo-manual.svg" width="65%"/>



### Advantages
* Audit: All cluster infra (and only infra) in one repo
* 🌐 [argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices](https://argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices/)

### Disadvantages
* Separated maintenance & versioning of app and infra code
* Review spans across multiple repos
* Local dev more difficult
  <br/><br/>

<div class="fragment" data-fragment-index="1">
<strong>Can't we have both?</strong>
</div>

Note:
* Good pratice: Keeping everything in app repo (code, docs, infra)
* GitOps Repo aka Config Repo
* App Repo aka Source Code Repo



**Yes, we can! Using a CI-Server**

<img data-src="images/gitops-with-app-repo-ci.svg" />


Note:
* Multiple app repos, one GitOps repo for infra
* Depending on technology more repos for configuring operator



**Disadvantages**

* Complexity in CI pipelines ➡ efforts for development
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

* Shift left: static code analysis + policy check on CI server,  
  e.g. yamlint, kubeval, helm lint, conftest
* Automated staging (e.g. PR creation, namespaces)
* Use IaC for local dev
* Simplify review by adding info to PRs

<br/>
<br/>
<div class="fragment">
<img data-src="images/PR.png" width="70%"/>
</div>

Note:
* Shift left (Fail Early) Validation - OPA Gatekeeper, Image Signature, etc
  * Plus: Layered approach -> "If we dont find it here, we're gonna find it there"
  * See also: Shifting Policy Enforcement to the Left using GitOps von Sandeep Parikh
* Enrich commit message: Author, original commit, issue ID and build number



## Local development

* Option 1: Deploy GitOps operator and Git server on local cluster   
  ➡ complicated
* Option 2: Just carry on without GitOps.  
  Easy, when IaC remains in app repo



## How to delete resources?

* "garbage collection" (Flux) / "resource pruning" (ArgoCD)   
  disabled by default
* <i class="fas fa-thumbtack"></i> Enable from beginning ➡️ avoid manual interaction