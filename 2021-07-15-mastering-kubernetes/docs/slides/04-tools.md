<!-- .slide: data-background-image="images/tools.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

# How can GitOps be used?<br/>Tools
<br/><br/><br/><br/>
<br/><br/><br/><br/>

Note:
* Source: https://pixabay.com/photos/tools-knives-wrenches-drills-1845426/
* Lots of tools.
  * Different understandings of "GitOps"
  * Different features
  * Different roles within the stack



## Categories

<img data-src="images/gitops-tool-maturity2.svg" class="floatRight" width="50%"/>

* Tools for Kubernetes AppOps
* Tools for Kubernetes ClusterOps
* Tools Close to Infrastructure
  * with or
  * without Kubernetes  
* Supplementary GitOps tools



## GitOps Tools for Kubernetes AppOps

<a title="Flux v2" href="https://github.com/fluxcd/flux2" ><img data-src="images/flux-icon.svg" /></a>
<a title="ArgoCD" href="https://github.com/argoproj/argo-cd/"><img data-src="images/argo-icon.svg" width="9%"/></a>
<a title="Fleet" href="https://github.com/rancher/fleet"><img data-src="images/fleet-icon.svg" width="9%"/></a>
<a title="PipeCD" href="https://github.com/pipe-cd/pipe"><img data-src="images/pipecd-icon.svg" width="9%"/></a>
<a title="JenkinsX" href="https://github.com/jenkins-x/jx"><img data-src="images/jenkinsx-icon.svg" width="9%"/></a>
<a title="Werf" href="https://github.com/werf/werf"><img data-src="images/werf-icon.svg" width="9%"/></a>

Note:
* AFAIK the most well known tools. There are more of course! 
* Flux + Argo: First tools on the market
* Fleet and PipeCD: Wider scope - multi cluster
* JenkinsX + Werf: Wider scope - CI/Builds
* Sources:
  * https://raw.githubusercontent.com/fluxcd/flux2/main/docs/_files/flux-icon.svg
  * https://raw.githubusercontent.com/argoproj/argoproj/master/docs/assets/argo.svg
  * https://raw.githubusercontent.com/jenkins-x/jx-docs/main/static/images/logo.svg
  * https://raw.githubusercontent.com/rancher/fleet/master/docs/assets/logo.svg
  * https://raw.githubusercontent.com/pipe-cd/pipe/master/docs/assets/icons/logo1.svg
  * https://raw.githubusercontent.com/werf/werf/master/docs/site/images/werf-logo.svg



## Operate Kubernetes with Kubernetes

<div style="text-align: center !important;">
  <img data-src="images/infra-cluster-target-clusters.svg" width="50%"/>
</div>

Note: 
* Management Cluster, aka Infrastructure Cluster, Controller Cluster
* Target Cluster, aka Workload Cluster, Downstream Cluster



## GitOps Tools for Kubernetes ClusterOps

<a title="Flux v2" href="https://github.com/fluxcd/flux2" ><img data-src="images/flux-icon.svg" /></a>
<a title="ArgoCD" href="https://github.com/argoproj/argo-cd/"><img data-src="images/argo-icon.svg" width="9%"/></a>
<a title="Fleet" href="https://github.com/rancher/fleet"><img data-src="images/fleet-icon.svg" width="9%"/></a>
<a title="PipeCD" href="https://github.com/pipe-cd/pipe"><img data-src="images/pipecd-icon.svg" width="9%"/></a>
<a title="JenkinsX" href="https://github.com/jenkins-x/jx"><img data-src="images/jenkinsx-icon.svg" width="9%"/></a>
<a title="Werf" href="https://github.com/werf/werf"><img data-src="images/werf-icon.svg" width="9%"/></a>

<span style="font-size: 60px;">+</span>

<a title="ClusterAPI" href="https://github.com/kubernetes-sigs/cluster-api"><img data-src="images/capi-icon.svg" width="9%" class="floatLeft"/></a>
<a title="Crossplane" href="https://github.com/crossplane/crossplane"><img data-src="images/crossplane-icon.svg" width="9%" class="floatLeft"/></a>
<span style="font-size: 60px;" class="floatLeft">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
<img title="Terraform + Operator" data-src="images/terraform-icon.svg" width="9%" class="floatLeft"/>
<span style="font-size: 60px;" class="floatLeft">+</span>
Operator
* <i class='fab fa-github'></i> <a title="Terraform Cloud Operator" href="https://github.com/hashicorp/terraform-k8s">hashicorp/terraform-k8s</a>
* <i class='fab fa-github'></i> <a title="Terraform Controller" href="https://github.com/rancher/terraform-controller">rancher/terraform-controller</a>
* <a title="PipeCD" href="https://github.com/pipe-cd/pipe"><img data-src="images/pipecd-icon.svg" width="9%"/></a>


Notes:
* Operators use different ways to connect to target Cluster
  * Fleet/PipeCD: Built in concepts (manager operator/the agent operators; control plane / daemons)
  * Others: kubeconfig
* Also here: Different scopes - CAPI lower level, Crossplane high level abstractions for cloud vendors 
* Sources
  * https://raw.githubusercontent.com/kubernetes-sigs/cluster-api/master/logos/kubernetes-cluster-logos_final-02.svg
  * https://raw.githubusercontent.com/crossplane/crossplane/master/docs/media/logo.svg
  * https://www.terraform.io/assets/images/product-icons/terraform-icon-color-7fbc9ecc.svg



## Tools Close to Infrastructure
* with Kubernetes  
  <a title="PipeCD" href="https://github.com/pipe-cd/pipe"><img data-src="images/pipecd-icon.svg" width="15%" /></a>
  <a title="Crossplane" href="https://github.com/crossplane/crossplane"><img data-src="images/crossplane-icon.svg" width="10%" /></a>
  <span style="font-size: 60px;" >&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
  <img title="Terraform + Operator" data-src="images/terraform-icon.svg" width="15%" />
  <span style="font-size: 60px;" >+</span> Operator
* without Kubernetes  
  <a title="Atlantis" href="https://github.com/runatlantis/atlantis"><img data-src="images/atlantis-logo.png" width="15%" /></a>
  <a title="AWX/Ansible Tower" href="https://github.com/ansible/awx"><img data-src="images/awx-logo.svg" width="20%" /></a>
  <a title="Ignite" href="https://github.com/weaveworks/ignite"><img data-src="images/ignite-logo.png" width="15%" /></a>
  
Notes:
* *few* tools for managing lower level infra / cloud accounts 
* even *fewer* tools without Kubernetes
* without a platform such as Kubernetes it's more difficult to define what is GitOps.  
  e.g.
  * AWX/Ansible Tower: https://www.ansible.com/blog/ops-by-pull-request-an-ansible-gitops-story
  * Pulumi: Triggered by CI-Server on Push -> CIOps?! Pulumi [calls it GitOps](https://www.pulumi.com/product/github-actions/).
* Sources:
  * https://raw.githubusercontent.com/runatlantis/atlantis/master/runatlantis.io/.vuepress/public/hero.png
  * https://raw.githubusercontent.com/ansible/awx-logos/master/awx/ui/client/assets/logo-login.svg?sanitize=true
  * https://raw.githubusercontent.com/weaveworks/ignite/master/docs/logo.png



## Supplementary GitOps tools

### Secrets

<div style="font-size: 26px">
<ul>
<li><i class='fab fa-github'></i> <a href="https://github.com/bitnami-labs/sealed-secrets">bitnami-labs/sealed-secrets</a></li>
<li><i class='fab fa-github'></i> <a href="https://github.com/mozilla/sops">mozilla/sops</a> + K8s integration </li>
  <ul>
      <li><i class='fab fa-github'></i> <a href="https://github.com/isindir/sops-secrets-operator">isindir/sops-secrets-operator</a></li>
      <li><i class='fab fa-github'></i> <a href="https://github.com/jkroepke/helm-secrets">jkroepke/helm-secrets</a> (plugin)</li>
      <li>flux v2 (native support)</li>
  </ul>
<li><i class='fab fa-github'></i> <a href="https://github.com/Soluto/kamus">Soluto/kamus</a> </li>
<li>Operators for Key Management Systems</li>
  <ul>
    <li><i class='fab fa-github'></i> <a href="https://github.com/external-secrets/kubernetes-external-secrets">external-secrets/kubernetes-external-secrets</a></li>
    <li><i class='fab fa-github'></i> <a href="https://github.com/ContainerSolutions/externalsecret-operator">ContainerSolutions/externalsecret-operator</a></li>
    <li><i class='fab fa-github'></i> <a href="https://github.com/ricoberger/vault-secrets-operator">ricoberger/vault-secrets-operator</a></li>
  </ul>
</ul>

</div>



### Others
* Deployment Strategies - Progressive Delivery  
  <a title="Flagger" href="https://github.com/fluxcd/flagger"><img data-src="images/flagger-icon.svg" width="9%"/></a>
  <a title="Argo Rollouts" href="https://github.com/argoproj/argo-rollouts/"><img data-src="images/argo-icon.svg" width="9%"/></a>
* Backups  
* Horizontal Pod Autoscaler
* ...

Notes:
* Progressive Delivery = canary releases, A/B tests, and blue/green deployments 
* Sources:
  * https://raw.githubusercontent.com/fluxcd/flagger/main/docs/logo/flagger-icon-color.svg



## See also

  <a title="CNCF Tech Radar 2021-02" href="https://radar.cncf.io/2021-02-secrets-management"><img data-src="images/2021-02-secrets-management.svg"  class="floatRight" width="27%"/></a>
* ☁️ [cloudogu.com/blog/gitops-tools](https://cloudogu.com/de/blog/gitops-tools)  ([iX 4/2021](https://www.heise.de/select/ix/2021/4/2100807514188955838))
  * General tool comparison,   
  * tips on criteria for tool selection,  
  * comparison of ArgoCD v1 and Flux v2  
* 🌐 [radar.cncf.io/2021-02-secrets-management](https://radar.cncf.io/2021-02-secrets-managemen)
*  <i class='fab fa-github'></i> [weaveworks/awesome-gitops](https://github.com/weaveworks/awesome-gitops)
* 🌐 [gitops.tech](https://www.gitops.tech/)
