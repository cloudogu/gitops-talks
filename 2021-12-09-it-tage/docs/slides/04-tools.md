<!-- .slide: data-background-image="images/tools.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.9); width: 80%">
  <br/>
  <h1 style="margin: 0 0 0 0; color: #5b5a5a" >How can GitOps be used?</h1>
  <br/>
</div>

Note:
* Source: https://pixabay.com/photos/tools-knives-wrenches-drills-1845426/
* Lots of tools.
  * Different understandings of "GitOps"
  * Different features
  * Different roles within the stack



# What can GitOps be used for?
<img data-src="images/gitops-tool-use-cases.svg"/>



## GitOps tool categories

* GitOps operators/controllers
* Supplementary GitOps tools
* Tools for operating cloud infra



## GitOps operators/controllers

<a title="Flux" href="https://github.com/fluxcd/flux2" ><img data-src="images/flux-icon.svg" /></a>
<a title="ArgoCD" href="https://github.com/argoproj/argo-cd/"><img data-src="images/argo-icon.svg" width="9%"/></a>
<a title="Fleet" href="https://github.com/rancher/fleet"><img data-src="images/fleet-icon.svg" width="9%"/></a>
<a title="PipeCD" href="https://github.com/pipe-cd/pipe"><img data-src="images/pipecd-icon.svg" width="9%"/></a>
<a title="JenkinsX" href="https://github.com/jenkins-x/jx"><img data-src="images/jenkinsx-icon.svg" width="9%"/></a>
<a title="Werf" href="https://github.com/werf/werf"><img data-src="images/werf-icon.svg" width="9%"/></a>
<a title="GitLab K8s Agent" href="https://gitlab.com/gitlab-org/cluster-integration/gitlab-agent"><img data-src="images/GitLab_logo.svg" width="9%"/></a>

Note:
* AFAIK the most well known tools. There are more of course! 
* Flux + Argo: First tools on the market
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

<div style="font-size: 26px">
<ul>
<li><i class='fab fa-github'></i> <a href="https://github.com/bitnami-labs/sealed-secrets">bitnami-labs/sealed-secrets</a></li>
<li><i class='fab fa-github'></i> <a href="https://github.com/Soluto/kamus">Soluto/kamus</a> </li>
<li><i class='fab fa-github'></i> <a href="https://github.com/mozilla/sops">mozilla/sops</a> + K8s integration </li>
<li>Operators for Key Management Systems</li>

</div>



### Others
* Backup / **restore**
* ~~Horizontal Pod Autoscaler~~  
  🌐 [argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices](https://argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices/#leaving-room-for-imperativeness)
* Deployment Strategies - Progressive Delivery  
  <a title="Flagger" href="https://github.com/fluxcd/flagger"><img data-src="images/flagger-icon.svg" width="9%"/></a>
  <a title="Argo Rollouts" href="https://github.com/argoproj/argo-rollouts/"><img data-src="images/argo-icon.svg" width="9%"/></a>
* ...
 

Notes:
* Progressive Delivery = canary releases, A/B tests, and blue/green deployments
* ... -> e.g. Database Schema (Schema Hero)
* Sources:
  * https://raw.githubusercontent.com/fluxcd/flagger/main/docs/logo/flagger-icon-color.svg



<strong style="font-size: 150%">
➡ GitOps ♥ operators

<span class="fragment">+</span>

<span class="fragment">Infra Operator</span>

<span class="fragment">=</span>

<u class="fragment">Operate cloud infra with GitOps</u>

<strong>



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

<a title="Flux" href="https://github.com/fluxcd/flux2" ><img data-src="images/flux-icon.svg" /></a>
<a title="ArgoCD" href="https://github.com/argoproj/argo-cd/"><img data-src="images/argo-icon.svg" width="9%"/></a>
<a title="Fleet" href="https://github.com/rancher/fleet"><img data-src="images/fleet-icon.svg" width="9%"/></a>
<a title="PipeCD" href="https://github.com/pipe-cd/pipe"><img data-src="images/pipecd-icon.svg" width="9%"/></a>
<a title="JenkinsX" href="https://github.com/jenkins-x/jx"><img data-src="images/jenkinsx-icon.svg" width="9%"/></a>
<a title="Werf" href="https://github.com/werf/werf"><img data-src="images/werf-icon.svg" width="9%"/></a>
<a title="GitLab K8s Agent" href="https://gitlab.com/gitlab-org/cluster-integration/gitlab-agent"><img data-src="images/GitLab_logo.svg" width="9%"/></a>

<span style="font-size: 60px;">+</span>

<a title="ClusterAPI" href="https://github.com/kubernetes-sigs/cluster-api"><img data-src="images/capi-icon.svg" width="9%" class="floatLeft"/></a>
<a title="Crossplane" href="https://github.com/crossplane/crossplane"><img data-src="images/crossplane-icon.svg" width="9%" class="floatLeft"/></a>
<span style="font-size: 60px;" class="floatLeft">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
<img title="Terraform" data-src="images/terraform-icon.svg" width="9%" class="floatLeft"/>
<span style="font-size: 60px;" class="floatLeft">-</span>
Cloud or Operator
* <a title="PipeCD" href="https://github.com/pipe-cd/pipe"><img data-src="images/pipecd-icon.svg" width="9%"/></a>
* <i class='fab fa-github'></i> <a title="Terraform Controller" href="https://github.com/rancher/terraform-controller">rancher/terraform-controller</a>
* <a title="Atlantis" href="https://github.com/runatlantis/atlantis"><img data-src="images/atlantis-logo.png" width="7%" /></a>

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