<!-- .slide: data-background-image="images/challenge.jpg"  -->
<!-- .slide: style="text-align: center !important; font-size: 190%"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.8); padding-top: 20px; padding-bottom: 20px; margin-bottom: 250px">
  <h1 style="margin: 0 0 0 0; color: #5b5a5a;" >Challenges with GitOps</h1>
</div>

Note:
Source: https://unsplash.com/photos/bJhT_8nbUA0



<!-- .slide: style="font-size: 200%"  -->
## Downsides

* More infra necessary
* Steep learning curve
* Lots of day two questions



### GitOps infra

* GitOps Operator comprises several applications
* Cause ops efforts: maintenance, alerts
<br/><br/>

<div class="container">
    <div class="column">
        <figure>
            <img data-src="images/argocd_architecture.png" width="67%" style="border-radius: 1%"/>
            <figcaption style="font-size: 30%">🌐 <a href="https://argo-cd.readthedocs.io/en/stable/assets/argocd_architecture.png">argo-cd.readthedocs.io/en/stable/assets/argocd_architecture.png</a></figcaption>
        </figure>
    </div>
    <div class="column">
        <figure>
            <img data-src="images/gitops-toolkit.png" style="border-radius: 1%"/>
            <figcaption style="font-size: 30%">🌐 <a href="https://fluxcd.io/img/diagrams/gitops-toolkit.png">fluxcd.io/img/diagrams/gitops-toolkit.png</a></figcaption>
        </figure>
    </div>
</div>

Note:
* ArgoCD: API(UI), Repo Svc, App Controller. Plus not on image: redis, optionally: dex (AuthN), Notification Controller,
  Image Updater, ApplicationSet Controller
* Flux: Source Helm, Kustomize Controllers. Plus not on image:  Notification Controller, Image Updater, TF controller, weave GitOps
* operators cause alerts (OOM errors, on Git/API server down, etc.)



<!-- .slide: style="font-size: 135%"  -->
### Learning curve

* New concepts + tools for devs and platform teams
* Adapt deployment process + error handling
* Migrate applications

Note:
* Migrate applications: CI/CD, if applicable adapt apps, e.g. Helm deployment, secrets mgmt
* Challenge: Using a template engine that is incompatible with GitOps



<!-- .slide: style="font-size: 130%"  -->
## Day two questions

* How to realize local dev env?
* How to delete resources?
* How to structure repos, folders, branches?
* How to realize different stages/environments?
* How to do monitoring and alerting?
* Role of CI server?
* ...



<!-- .slide: style="font-size: 120%"  -->
### Local development

* App development: Carry on without GitOps.  
  Setting up GitOps operator, SCM, etc. complicated  
* 💡 Integration: Run GitOps+k8s-based ops platform locally  
  
  <a class="fragment" data-fragment-index="2" href="https://meine.doag.org/events/cloudland/2024/agenda/#eventDay.1718834400#agendaId.4234"><img data-src="images/CL_2024_Shared Pics_Schnatterer.jpg" class="floatRight" style="border-radius: 15px;" width="37%;"/></a>
  
  * <!-- .element: class="fragment" data-fragment-index="1" --> <i class='fab fa-github'></i>  <a href="https://github.com/cloudogu/gitops-playground">cloudogu/gitops-playground</a> 
  * <!-- .element: class="fragment" data-fragment-index="2" --> <a href="https://meine.doag.org/events/cloudland/2024/agenda/#eventDay.1718834400#agendaId.4234">2024-06-20 Workshop at CloudLand</a>


Note:
* Operator, SCMM, OCI-Registry, etc.



<!-- .slide: data-visibility="hidden" -->
<!-- .slide: style="font-size: 120%"  -->
### How to delete resources?

* <img data-src="images/flux-icon.svg" style="vertical-align: middle;" width="4%;"/> `garbage collection` / <img data-src="images/argo-icon.svg" style="vertical-align: middle;" width="3.5%;"/>  `resource pruning`  
  disabled by default
* 💡 Enable from beginning ➡️ avoid manual interaction
* Unfortunately, still often unreliable / too defensive (?) 😒



<!-- .slide: style="font-size: 115%"  -->
### Structuring repos

* How many repos?
* Within repo: folder/branch structure for stage, team, app  
* More considerations:
  * Topology: GitOps controller (s) ↔ Cluster(s) / Namespaces
  * GitOps controller-specific config / CRDs
  * ➡️ Multi-tenancy

Note: 
* Conway's law applies ->️ structure will be dictated by organizational boundaries
* GitOps controller-specifics: ArgoCD has Projects and applications and the app of app pattern



<!-- .slide: style="font-size: 140%"  -->
### Promotion

How to model environments/stages?


* ⚡️ Use branches or folders?
* `Operations by Pull Request`:  
   (How to) use PRs? 
* How to integrate CM tools?
  <a href="https://kustomize.io/" class="tooltip-bellow">
    <img data-src="images/kustomize-icon.svg" style="height: 1.1em; margin-left: 20px; vertical-align: middle;" class="zoom1-5x"/>
    <span class="tooltip-bellow-text" style="top: -130%">Kustomize</span>
  </a>
  <a href="https://helm.sh" class="tooltip-bellow">
    <img data-src="images/helm-icon.svg" style="height: 1.1em; margin-left: 20px; vertical-align: middle;" class="zoom1-5x" />
    <span class="tooltip-bellow-text" style="top: -130%">Helm</span>
  </a>
  <a href="https://jsonnet.org/" class="tooltip-bellow">
    <img data-src="images/jsonnet-icon.svg" style="height: 1.1em; margin-left: 20px; vertical-align: middle;" class="zoom1-5x"/>
    <span class="tooltip-bellow-text" style="top: -130%">Jsonnet</span>
  </a>
  <a href="https://cuelang.org/" class="tooltip-bellow">
    <img data-src="images/cue-icon.svg" style="height: 1.1em; margin-left: 20px; vertical-align: middle;" class="zoom1-5x"/>
    <span class="tooltip-bellow-text" style="top: -130%">CUE</span>
  </a>
  <a href="https://timoni.sh/" class="tooltip-bellow">
    <img data-src="images/timoni-icon.svg" style="height: 1.1em; margin-left: 20px; vertical-align: middle;" class="zoom1-5x"/>
    <span class="tooltip-bellow-text" style="top: -130%">timoni</span>
  </a>
* How to automate?
* 🔥 (How to) use preview environments?



<!-- .slide: style="font-size: 130%"  -->
<a href="https://dpunkt.de/produkt/gitops/"><img data-src="images/Cubukcuoglu_GitOps.png" class="floatRight" width="40%;" style="margin-top: 5%"/></a>

<span style="position: absolute; top: 15%">
<h2 id="further-reading">Further reading</h2>
<ul>
  <li><i class="fas fa-microphone"></i> <a href="https://cloudogu.github.io/gitops-talks/2023-11-continuous-lifecycle/#/">Slides (Continuous Lifecycle 23)</a></li>
  <li><img data-src="images/gitops-patterns-series.png" style="vertical-align: middle;" width=5%> <a href="https://cloudogu.com/en/blog/gitops-repository-patterns-part-1-introduction">Blog post series (Cloudogu Blog)</a>
  <li>📘 <a href="https://dpunkt.de/produkt/gitops/">GitOps book</a></li>
  <li><i class='fab fa-github'></i> <a href="https://github.com/cloudogu/gitops-patterns">cloudogu/gitops-patterns</a></li>
</ul>
</span>

Note:
* Patterns repos for future maintenance and discussion
* Playground offers opinionated answers to some of the questions, e.g. repo structure and promotion 