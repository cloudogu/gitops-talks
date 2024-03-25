<!-- .slide: data-background-image="images/challenge.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.8); width: 60%; margin-left: auto;margin-right: 0;">
  <br/>
  <h1 style="margin: 0 0 0 0; color: #5b5a5a;" >Challenges with GitOps</h1>
  <br/>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
Note:
Source: https://unsplash.com/photos/bJhT_8nbUA0



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



### Learning curve

* New concepts and tools for developers and platform teams
* Adapt deployment process
* Migrate applications
* Adapt error handling and alerting
  * avoid failing late and silently
  * accustom to new notification mechanism
  * still, reason might be difficult to pinpoint

Note:
* Migrate applications: CI/CD, if applicable adapt apps, e.g. Helm deployment, secrets mgmt
* Challenge: Using a template engine that is incompatible with GitOps



## Day two questions

* How to realize local dev env?
* How to delete resources?
* How to structure repos and folders?
* How to realize different stages/environments?
* Role of CI server?
* ...



### Local development

* App development: Just carry on without GitOps.  
  Setting up GitOps operator, SCM, etc. complicated  
* 💡 Integration: Run GitOps+k8s-based ops platform locally  
  
  <a href="https://meine.doag.org/events/cloudland/2024/agenda/#eventDay.1718834400#agendaId.4234"><img data-src="images/CloudLand.jpeg" class="floatRight" style="border-radius: 15px;" width="30%;"/></a>
  
  * <i class='fab fa-github'></i> [cloudogu/gitops-playground](https://github.com/cloudogu/gitops-playground)
  * [2024-06-20 Workshop at CloudLand](https://meine.doag.org/events/cloudland/2024/agenda/#eventDay.1718834400#agendaId.4234)


Note:
* Operator, SCMM, OCI-Registry, etc.



### How to delete resources?

* <img data-src="images/flux-icon.svg" style="vertical-align: middle;" width="4%;"/> `garbage collection` / <img data-src="images/argo-icon.svg" style="vertical-align: middle;" width="3.5%;"/>  `resource pruning`  
  disabled by default
* 💡 Enable from beginning ➡️ avoid manual interaction
* Unfortunately, still often unreliable / too defensive (?) 😒



### Repo and folder structure

* No standard for structures (intentionally) ➡️ Conway's law
* How many repos?
* Within repo: folder/branch structure for stage, team, app  
* More options:   
  * Topology: GitOps controller (s) ↔ Cluster(s) / Namespaces
  * GitOps controller-specific config

Note: 
* Conway's law applies ->️ structure will be dictated by organizational boundaries
* GitOps controller-specifics: ArgoCD has Projects and applications and the app of app pattern



### Promotion

How to model environments/stages?

* ⚡️ User branches or folders?
* "Operations by Pull Request": (How to) use PRs?
* How to integrate CM tools? <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/> <img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" /> <img title="jsonnet" data-src="images/jsonnet-icon.svg" style="height: 1.1em; vertical-align: middle;"/> <img title="cuelang" data-src="images/cue-icon.svg" style="height: 1.1em; vertical-align: middle;"/> <img title="timoni" data-src="images/timoni-icon.svg" style="height: 1.1em; vertical-align: middle;"/>
* How to automate?
* 🔥 (How to) use preview environments?



## Further reading
<!-- .slide: style="font-size: 85%;"  -->

<a href="https://dpunkt.de/produkt/gitops/"><img data-src="images/Cubukcuoglu_GitOps.png" class="floatRight" style="border-radius: 15px;" width="35%;"/></a>

* GitOps Repository Structures and Patterns
  * <img data-src="images/gitops-patterns-series.png" title="Helm" style="vertical-align: middle;" width=5%> [Blog post series (Cloudogu Blog)](https://cloudogu.com/en/blog/gitops-repository-patterns-part-1-introduction); [Book](https://dpunkt.de/produkt/gitops/)
  * <i class="fas fa-microphone"></i> [Slides (Continuous Lifecycle 23)](https://cloudogu.github.io/gitops-talks/2023-11-continuous-lifecycle/#/)
* <i class='fab fa-github'></i> [cloudogu/gitops-patterns](https://github.com/cloudogu/gitops-patterns)
* <i class='fab fa-github'></i> [cloudogu/gitops-playground](https://github.com/cloudogu/gitops-playground)

<a href="https://github.com/cloudogu/gitops-playground"><img data-src="images/gitops-playground-features.drawio.svg" width="33%;"/></a>


Note:
* Patterns repos for future maintenance and discussion
* Playground offers opinionated answers to some of the questions, e.g. repo structure and promotion 
