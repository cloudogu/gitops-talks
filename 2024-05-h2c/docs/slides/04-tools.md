<!-- .slide: style="text-align: center !important; font-size: 290%"  -->
<!-- .slide: data-background-image="images/tools.jpg"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.8); width: 80%; padding-top: 20px; padding-bottom: 20px; margin: auto">
  <h1 style="margin: 0 0 0 0; color: #5b5a5a; text-align: center">GitOps tools</h1>
</div>

Note:
* Source: https://pixabay.com/photos/tools-knives-wrenches-drills-1845426/



<!-- .slide: style="font-size: 180%"  -->
## GitOps operators/controllers

<a style="margin-left: 25px" href="https://github.com/fluxcd/flux2" class="tooltip-bellow">
  <img data-src="images/flux-icon.svg" width="7%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">Flux</span>
</a>
<a style="margin-left: 25px" href="https://github.com/argoproj/argo-cd/" class="tooltip-bellow">
  <img data-src="images/argo-icon.svg" width="8%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">ArgoCD</span>
</a>
<a style="margin-left: 25px" href="https://github.com/pipe-cd/pipecd" class="tooltip-bellow">
  <img data-src="images/pipecd-icon.svg" width="11%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text"> PipeCD </span>
</a>
<a style="margin-left: 25px" href="https://github.com/rancher/fleet" class="tooltip-bellow">
  <img data-src="images/fleet-icon.svg" width="12%" class="zoom1-5x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">Fleet</span>
</a>
<a style="margin-left: 25px"  href="https://github.com/jenkins-x/jx" class="tooltip-bellow">
  <img data-src="images/jenkinsx-icon.svg" width="13%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">JenkinsX</span>
</a>

Note:
* AFAIK the most well known tools. There are more of course!
* Flux + Argo: First tools on the market
  * Flux: Leightweight, but not GUI (weave-gitops); Lots of innovations, e.g. a VSCode Plugin, Support for OCI instead of Git, build in SOPS Support, TF Op., Subsystem for ArgoCD.
  * ArgoCD: GUI
  * [Flux: Platform integrations](https://fluxcd.io/ecosystem/#complete-list)
    * [AWS, VMware, D2iQ](https://www.cncf.io/blog/2021/10/19/flux-trusted-by-amazon-d2iq-microsoft-red-hat-vmware-and-weaveworks/), [2](https://www.cncf.io/blog/2021/10/13/flux-celebrates-major-milestone/),
    * [Microsoft Azure Arc](https://docs.microsoft.com/en-us/azure/azure-arc/kubernetes/conceptual-gitops-flux2)
    * [D2iq](https://twitter.com/jschnatterer/status/1448405170736541696) replaced argoCD by Flux
  * ArgoCD: [ArgoCD among CNCF projects with highest velocity](https://mobile.twitter.com/cra/status/1468988578357288962). Platform integrations:
    * OpenShift, 
    * Akuity,
    * CodeFresh
    * [Harness](https://enterprisetalk.com/news/harness-announces-enterprise-gitops-for-its-award-winning-software-delivery-platform/)
* Fleet: Millions of Cluster IoT/Edge; Nicely integrated into Rancher (k8s managment tool)
* JenkinsX: Wider scope - CI/Builds
* GitLab Agent: Specialty: Agent connects to GitLab server, allows for push without security risk; Nicely integrated into GitLab platform 
* Sources:
  * https://raw.githubusercontent.com/fluxcd/flux2/main/docs/_files/flux-icon.svg
  * https://raw.githubusercontent.com/argoproj/argoproj/master/docs/assets/argo.svg
  * https://raw.githubusercontent.com/jenkins-x/jx-docs/main/static/images/logo.svg
  * https://raw.githubusercontent.com/rancher/fleet/master/docs/assets/logo.svg
  * https://raw.githubusercontent.com/pipe-cd/pipe/master/docs/assets/icons/logo1.svg
  * https://raw.githubusercontent.com/werf/werf/master/docs/site/images/werf-logo.svg
  * https://upload.wikimedia.org/wikipedia/commons/e/e1/GitLab_logo.svg



<!-- .slide: style="font-size: 120%"  -->
## Supplementary GitOps tools
* Secrets Management
* Backup + Restore
* Deployment Strategies - Progressive Delivery  
  <a href="https://github.com/fluxcd/flagger" class="tooltip-bellow"><img data-src="images/flagger-icon.svg" width="9%" class="zoom1-5x" style="margin: 15px"/><span class="tooltip-bellow-text">Flagger</span></a>
  <a href="https://github.com/argoproj/argo-rollouts/" class="tooltip-right"><img data-src="images/argo-icon.svg" width="9%" class="zoom1-5x" style="margin: 15px"/><span class="tooltip-right-text">Argo Rollouts</span></a>
* ...

<strong class="fragment" style="font-size: 150%">➡ GitOps ♥ operators</strong>
<span class="fragment"  style="margin-left:50px">
<a href="https://github.com/kubernetes-sigs/cluster-api" class="tooltip-bellow" class="tooltip-bellow">
  <img data-src="images/capi-icon.svg" width="4%" class="zoom1-5x"/>
</a> 
<a href="https://github.com/crossplane/crossplane" class="tooltip-bellow">
  <img data-src="images/crossplane-icon.svg" width="4%" class="zoom1-5x"/>
</a>
<a href="https://github.com/pulumi/pulumi" class="tooltip-bellow">
  <img data-src="images/pulumi.svg" width="4%" class="zoom1-5x" style="margin: 10px" />
</a>
<a href="https://github.com/hashicorp/terraform" class="tooltip-bellow">
  <img data-src="images/open-tofu.svg" width="4%" class="zoom1-5x" />
</a>
<a href="https://github.com/hashicorp/terraform" class="tooltip-bellow">
  <img data-src="images/terraform-icon.svg" width="4%" class="zoom1-5x" />
</a>
<span>

Notes:
* Secrets
  * Operators: external secrets, SOPS operator (3rd party), sealed-secrets
  * side car: official solution for vault
  * Helm/Kustomize: Helm Secrets plugin, Kustomize SOPS plugin
  * GitOps: Flux native support SOPS; ArgoCD Plugin
* Secrets complex, separate talk; not necessarily a GitOps topic but cloesely related
* Progressive Delivery = canary releases, A/B tests, and blue/green deployments
* ... -> e.g. Database Schema (Schema Hero)
* More:
  * ~~Horizontal Pod Autoscaler~~  
    🌐 [argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices](https://argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices/#leaving-room-for-imperativeness)
* Sources:
  * https://raw.githubusercontent.com/fluxcd/flagger/main/docs/logo/flagger-icon-color.svg
