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
* Tools for operating cloud infra



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
<a href="https://github.com/pipe-cd/pipe" class="tooltip-bellow">
  <img data-src="images/pipecd-icon.svg" width="9%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">PipeCD</span>
</a>
<a href="https://github.com/jenkins-x/jx" class="tooltip-bellow">
  <img data-src="images/jenkinsx-icon.svg" width="9%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">JenkinsX</span>
</a>
<a href="https://github.com/werf/werf" class="tooltip-bellow">
  <img data-src="images/werf-icon.svg" width="8%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text">Werf</span>
</a>
<a href="https://gitlab.com/gitlab-org/cluster-integration/gitlab-agent" class="tooltip-bellow">
  <img data-src="images/GitLab_logo.svg" width="8%" class="zoom2x" style="margin: 15px"/>
  <span class="tooltip-bellow-text" style="width:200px; left: -50%;">GitLab<br/> K8s Agent</span>
</a>

Note:
* AFAIK the most well known tools. There are more of course! 
* Flux + Argo: First tools on the market
  * Flux: Platform integrations
    * [AWS, D2iQ, Microsoft, Red Hat, VMware](https://www.cncf.io/blog/2021/10/19/flux-trusted-by-amazon-d2iq-microsoft-red-hat-vmware-and-weaveworks/) [2](https://www.cncf.io/blog/2021/10/13/flux-celebrates-major-milestone/)
    * [D2iq](https://twitter.com/jschnatterer/status/1448405170736541696) replaced argoCD by Flux
    * [Azure Arc](https://docs.microsoft.com/en-us/azure/azure-arc/kubernetes/conceptual-gitops-flux2)
  * ArgoCD: [ArgoCD among CNCF projects with highest velocity](https://mobile.twitter.com/cra/status/1468988578357288962). Platform integrations:
    * OpenShift
    * [Harness Announces Enterprise GitOps For Its Award-Winning Software Delivery Platform - EnterpriseTalk](https://enterprisetalk.com/news/harness-announces-enterprise-gitops-for-its-award-winning-software-delivery-platform/)
* Fleet and PipeCD: Wider scope - multi cluster
* JenkinsX + Werf: Wider scope - CI/Builds
* GitLab Agent: [premium use only](https://docs.gitlab.com/ee/user/clusters/agent/), though the agent itself is OSS 
* Sources:
  * https://raw.githubusercontent.com/fluxcd/flux2/main/docs/_files/flux-icon.svg
  * https://raw.githubusercontent.com/argoproj/argoproj/master/docs/assets/argo.svg
  * https://raw.githubusercontent.com/jenkins-x/jx-docs/main/static/images/logo.svg
  * https://raw.githubusercontent.com/rancher/fleet/master/docs/assets/logo.svg
  * https://raw.githubusercontent.com/pipe-cd/pipe/master/docs/assets/icons/logo1.svg
  * https://raw.githubusercontent.com/werf/werf/master/docs/site/images/werf-logo.svg
  * https://upload.wikimedia.org/wikipedia/commons/e/e1/GitLab_logo.svg



## Supplementary GitOps tools

### Secrets

Note:
* Not necessarily a GitOps topic
* But: 



#### Secrets - Ways of storing secrets

* Store Secrets in Repo (encrypted/sealed) 🔑
* Store Secrets in Key Management System (KMS)
  * Different KMS
    * Proprietary KMS: 
     [<i title="aws secrets manager or Systems Manager Parameter Store" class="fab fa-aws"></i>](https://aws.amazon.com/secrets-manager/) 
     [<i title="azure key vault" class="fab fa-microsoft"></i>](https://docs.microsoft.com/en-us/azure/key-vault/general/overview)
     [<i title="google cloud secret manager" class="fab fa-google"></i>](https://cloud.google.com/secret-manager/)
      ...
    * Hashicorp Vault [<img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="5%;"/>](https://github.com/hashicorp/vault)
  * Different K8s Integrations
    * Operator
    * Container Storage Interface (CSI) driver
    * Side car (injector)
    * Helm/Kustomize plugin
    * GitOps Operator: native support or plugin



<!-- .slide: style="font-size: 100%"  -->
#### Secrets - Tools
* <i class='fab fa-github'></i> [bitnami-labs/sealed-secrets](https://github.com/bitnami-labs/sealed-secrets) <span title="RSA+AES">🔑</span>
* <i class='fab fa-github'></i> [mozilla/sops](https://github.com/mozilla/sops) <i title="aws" class="fab fa-aws"></i> <i title="azure" class="fab fa-microsoft"></i> <i title="google cloudm" class="fab fa-google"></i> <img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="4%;"/> <span title="PGP">🔑</span> + K8s integration 
  * <i class='fab fa-github'></i> [isindir/sops-secrets-operator](https://github.com/isindir/sops-secrets-operator)
  * <i class='fab fa-github'></i> [jkroepke/helm-secrets](https://github.com/jkroepke/helm-secrets) (plugin)
  * <i class='fab fa-github'></i> [viaduct-ai/kustomize-sops](https://github.com/viaduct-ai/kustomize-sops) (plugin)
  * <img title="flux only" data-src="images/flux-icon.svg"  style="vertical-align: middle;" width="4%;"/> flux v2 ([native support](https://fluxcd.io/docs/guides/mozilla-sops/))
* <img title="argocd only" data-src="images/argo-icon.svg" style="vertical-align: middle;" width="3.5%;"/> [argoproj-labs/argocd-vault-plugin](https://github.com/argoproj-labs/argocd-vault-plugin) <i title="aws" class="fab fa-aws"></i> <i title="azure" class="fab fa-microsoft"></i> <i title="google cloudm" class="fab fa-google"></i><img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="4%;"/><span title="via SOPS">🔑</span>
* <img data-src="images/k8s_logo.svg" style="vertical-align: middle;" width="4%;"/> [kubernetes-sigs/secrets-store-csi-driver](https://github.com/kubernetes-sigs/secrets-store-csi-driver)
  [<i title="aws/secrets-store-csi-driver-provider-aws" class="fab fa-aws"></i>](https://github.com/aws/secrets-store-csi-driver-provider-aws)
  [<i title="Azure/secrets-store-csi-driver-provider-azure" class="fab fa-microsoft"></i>](https://github.com/Azure/secrets-store-csi-driver-provider-azure)
  [<i title="GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp" class="fab fa-google"></i>](https://github.com/GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp)
  [<img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="4%;"/>](https://github.com/hashicorp/vault-csi-provider)
* <i class='fab fa-github'></i> <a href="https://github.com/external-secrets/external-secrets">external-secrets/external-secrets</a> <i title="aws" class="fab fa-aws"></i> <i title="azure" class="fab fa-microsoft"></i> <i title="google cloudm" class="fab fa-google"></i> <img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="4%;"/>
* <i class='fab fa-github'></i> [hashicorp/vault-k8s](https://github.com/hashicorp/vault-k8s) <img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="4%;"/> (sidecar injector) &nbsp; 

Note:
* History of external secrets
  * ContainerSolutions/externalsecret-operator -> external-secrets/external-secrets
  * godaddy/external-secrets -> external-secrets/kubernetes-external-secrets --> external-secrets/external-secrets
* `hashicorp/vault-k8s` - mutation webhook controller that injects Vault Agent containers into pods meeting specific annotation criteria
* More tools
  * <i class='fab fa-github'></i> [Soluto/kamus](https://github.com/Soluto/kamus) <i title="aws" class="fab fa-aws"></i> <i title="azure" class="fab fa-microsoft"></i> <i title="google cloudm" class="fab fa-google"></i>  <span title="AES only!">🔑</span>
  * <i class='fab fa-github'></i> <a href="https://github.com/ricoberger/vault-secrets-operator">ricoberger/vault-secrets-operator</a> <img title="hashicorp vault" data-src="images/vault-logo.svg" style="vertical-align: middle;" width="4%;"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
  * [banzaicloud/bank-vaults](https://github.com/banzaicloud/bank-vaults) - operator to deploy vault instances?
  * [3rd Party injector](https://github.com/Talend/vault-sidecar-injector)
* More info
  * [Kubernetes Vault Integration via Sidecar Agent Injector vs. CSI Provider](https://www.hashicorp.com/blog/kubernetes-vault-integration-via-sidecar-agent-injector-vs-csi-provider)
  * [cdcon talk about secrets](https://twitter.com/gitopsweekly/status/1493897404655058947)



### Others
* Backup / **restore**
* Deployment Strategies - Progressive Delivery  
  <a href="https://github.com/fluxcd/flagger" class="tooltip-left"><img data-src="images/flagger-icon.svg" width="9%" class="zoom1-5x" style="margin: 15px"/><span class="tooltip-left-text">Flagger</span></a>
  <a href="https://github.com/argoproj/argo-rollouts/" class="tooltip-bellow"><img data-src="images/argo-icon.svg" width="9%" class="zoom1-5x" style="margin: 15px"/><span class="tooltip-bellow-text">Argo Rollouts</span></a>
* ...

Notes:
* Progressive Delivery = canary releases, A/B tests, and blue/green deployments
* ... -> e.g. Database Schema (Schema Hero)
* More:
  * ~~Horizontal Pod Autoscaler~~  
    🌐 [argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices](https://argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices/#leaving-room-for-imperativeness)
* Sources:
  * https://raw.githubusercontent.com/fluxcd/flagger/main/docs/logo/flagger-icon-color.svg



<strong style="font-size: 150%">
➡ GitOps ♥ operators

<span class="fragment">+</span>

<span class="fragment">Infra Operator</span>

<span class="fragment">=</span>

<u class="fragment">Operate cloud infra with GitOps</u>

</strong>



## Operate Kubernetes with Kubernetes

<div class="fragment" style="text-align: center !important;">
  <img data-src="images/infra-cluster-target-clusters.svg" width="70%"/>
</div>

Note:
* Deployment also possible without dedicated cluster:  https://www.cncf.io/blog/2021/08/12/august-2021-update/
* Management Cluster, aka Infrastructure Cluster, Controller Cluster
* Target Cluster, aka Workload Cluster, Downstream Cluster



<div style="text-align: center !important;">
  <img data-src="images/infra-cluster-target-clusters-detail.svg" width="95%"/>
</div>
Note:
* Infra operator: Depending on the setting create VMs (e.g. EC2) or clusters directly (e.g. EKS) via cloud providers.  
  In case of VMs the infra operator create control plane e.g. with kubeadm 
* gitops operator might deploy resources (apps) into target clusters
* See also
  * https://cluster-api.sigs.k8s.io/user/concepts.html
  * https://www.weave.works/blog/manage-thousands-of-clusters-with-gitops-and-the-cluster-api



## Tools for operating cloud infra

<a href="https://github.com/kubernetes-sigs/cluster-api" class="tooltip-bellow" class="tooltip-bellow">
  <img data-src="images/capi-icon.svg" width="9%" class="zoom1-5x"/>
  <span class="tooltip-bellow-text">Kubernetes<br/>ClusterAPI</span>
</a>

<a href="https://github.com/crossplane/crossplane" class="tooltip-bellow">
  <img data-src="images/crossplane-icon.svg" width="9%" class="zoom1-5x"/>
  <span class="tooltip-bellow-text ">Crossplane</span>
</a>

<a href="https://github.com/pulumi/pulumi" class="tooltip-bellow">
  <img data-src="images/pulumi.svg" width="8%" class="zoom1-5x" style="margin: 10px" />
  <span class="tooltip-bellow-text">Pulumi</span>
</a>

<a href="https://github.com/hashicorp/terraform" class="tooltip-bellow" style="margin: 300px">
  <img data-src="images/terraform-icon.svg" width="9%" class="zoom1-5x" />
  <span class="tooltip-bellow-text">Terraform</span>
</a>

Note:
Source: https://www.pulumi.com/logos/brand/avatar-on-white.svg



### Terraform + GitOps

<a href="https://github.com/hashicorp/terraform">
  <img title="Terraform" data-src="images/terraform-icon.svg" width="25%" class="floatRight" />
</a>

Terraform Cloud or K8s Operator
* <a href="https://github.com/pipe-cd/pipe" class="tooltip-right">
    <img data-src="images/pipecd-icon.svg" width="9%" class="zoom2x"/>
    <span class="tooltip-right-text">PipeCD</span>
  </a>
* <i class='fab fa-github'></i> <a href="https://github.com/weaveworks/tf-controller">weaveworks/tf-controller</a>
* <i class='fab fa-github'></i> <a href="https://github.com/rancher/terraform-controller">rancher/terraform-controller</a>

Notes:
* Operators use different ways to connect to target Cluster
  * Fleet/PipeCD: Built in concepts (manager operator/the agent operators; control plane / daemons)
  * Others: kubeconfig
* Also here: Different scopes - CAPI lower level, Crossplane high level abstractions for cloud vendors 
* Sources
  * https://raw.githubusercontent.com/kubernetes-sigs/cluster-api/master/logos/kubernetes-cluster-logos_final-02.svg
  * https://raw.githubusercontent.com/crossplane/crossplane/master/docs/media/logo.svg
  * https://www.terraform.io/assets/images/product-icons/terraform-icon-color-7fbc9ecc.svg



## See also

 ☁️ [cloudogu.com/blog/gitops-tools](https://cloudogu.com/de/blog/gitops-tools)  ([iX 4/2021](https://www.heise.de/select/ix/2021/4/2100807514188955838))
* General tool comparison,   
* tips on criteria for tool selection,  
* comparison of ArgoCD and Flux  