<!-- .slide: data-background-image="images/tools.jpg"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.9); width: 80%; margin: auto;">
  <br/>
  <h1 style="margin: 0 0 0 0; color: #5b5a5a; text-align: center">GitOps tools</h1>
  <br/>
</div>

Note:
* Source: https://pixabay.com/photos/tools-knives-wrenches-drills-1845426/



## GitOps tool categories

* GitOps operators/controllers
* Supplementary GitOps tools
* (Tools for operating cloud infra)



## GitOps operators/controllers

<a href="https://github.com/fluxcd/flux2" class="tooltip-bellow">
  <img data-src="images/flux-icon.svg" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">Flux</span>
</a>
<a href="https://github.com/argoproj/argo-cd/" class="tooltip-bellow">
  <img data-src="images/argo-icon.svg" width="6%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">ArgoCD</span>
</a>
<a href="https://github.com/rancher/fleet" class="tooltip-bellow">
  <img data-src="images/fleet-icon.svg" width="9%" class="zoom1-5x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">Fleet</span>
</a>
<a href="https://github.com/jenkins-x/jx" class="tooltip-bellow">
  <img data-src="images/jenkinsx-icon.svg" width="9%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">JenkinsX</span>
</a>
<a href="https://gitlab.com/gitlab-org/cluster-integration/gitlab-agent" class="tooltip-bellow">
  <img data-src="images/GitLab_logo.svg" width="8%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text" style="width:200px; left: -50%;">GitLab<br/>Agent for Kubernetes</span>
</a>

Note:
* AFAIK the most well known tools. There are more of course!
* Flux + Argo: First tools on the market
  * Flux: Leightweight, but not GUI (weave-gitops); Lots of innovations, e.g. a VSCode Plugin, Support for OCI instead of Git, build in SOPS Support, TF Op., Subsystem for ArgoCD.
  * ArgoCD: GUI
  * Flux: Platform integrations
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



<!-- .slide: style="font-size: 90%"  -->
## Supplementary GitOps tools
* Secrets
  * KMS, e.g. 
     [<i title="aws secrets manager or Systems Manager Parameter Store" class="fab fa-aws"></i>](https://aws.amazon.com/secrets-manager/)
     [<i title="azure key vault" class="fab fa-microsoft"></i>](https://docs.microsoft.com/en-us/azure/key-vault/general/overview)
     [<i title="google cloud secret manager" class="fab fa-google"></i>](https://cloud.google.com/secret-manager/)
     [<img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="5%;"/>](https://github.com/hashicorp/vault)
     ...
  * \+ K8s Integration
    * Operator
    * Container Storage Interface (CSI) driver
    * Side car (injector)
    * Helm/Kustomize plugin
    * GitOps Operator: native support or plugin
* Backup / **restore**
* Deployment Strategies - Progressive Delivery  
  <a href="https://github.com/fluxcd/flagger" class="tooltip-left"><img data-src="images/flagger-icon.svg" width="9%" class="zoom1-5x" style="margin: 15px"/><span class="tooltip-left-text">Flagger</span></a>
  <a href="https://github.com/argoproj/argo-rollouts/" class="tooltip-right"><img data-src="images/argo-icon.svg" width="9%" class="zoom1-5x" style="margin: 15px"/><span class="tooltip-right-text">Argo Rollouts</span></a>
* ...

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



## See also

* ☁️ [cloudogu.com/blog/gitops-tools](https://cloudogu.com/de/blog/gitops-tools)  ([iX 4/2021](https://www.heise.de/select/ix/2021/4/2100807514188955838))
  * General tool comparison,   
  * tips on criteria for tool selection,  
  * comparison of ArgoCD and Flux  
* ☁ [community.cloudogu.com/t/flux-or-argocd-the-great-controversy](https://community.cloudogu.com/t/flux-or-argocd-the-great-controversy/967)
  ArgoCD vs Flux (10/2022)