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

* Maintenance/patching (vendor dependency)
* Resource consumption
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
    * How to structure repos?
    * How to realize staging?
    * How to delete resources?
    * How to realize local dev env?
    * ...

Note:
More
  * Git-sync via Polling/Webhook? Flux v1 did not have built-in webhook support
  * Deploying resources with dependencies, e.g. CR and CRD  



## How to delete resources?

* "garbage collection" (Flux) / "resource pruning" (ArgoCD)   
   disabled by default 
* <i class="fas fa-thumbtack"></i> Enable from the start ➡️ avoid manual interaction 



## Local development

* Option 1: Deploy GitOps operator and Git server on local cluster   
  ➡ complicated
* Option 2: Just carry on without GitOps. Possible when IaC remains in app repo