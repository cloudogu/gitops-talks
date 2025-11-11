<!-- .slide: id="multi-tenancy-options" -->
<div class="floatRight" style="margin-right: 100px; width: 25%;">
    <div style="margin-bottom: 50px">
        <img src="images/Shared-Instance.svg" width="70%" style="margin-left: 15%"/>
    </div>
    <div>
        <img src="images/Dedicated-Instances.svg" width="100%"/>
    </div>
</div>

## Multi-tenancy strategies

* Shared instance
* Dedicated instances




# Shared Instance: A first approach <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: id="shared-instance" style="text-align: center !important" -->

<img src="images/basic-repo-structure-with-tenant.svg" width="100%">

Note:
* Repo per Team Pattern




# Shared vs Dedicated Instance <!-- .element style="margin-bottom: 0px;text-align: center !important""-->

<div class="container">
  <div class="column">
    <ul>
      <li>Easy to maintain</li>
      <li>Low infra usage</li>
    </ul>
  </div>
  <div class="column">
    <ul>
      <li>Higher isolation</li>
      <li>Easier to configure <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /></li>
    </ul>
<p style="font-size: 40%;"><img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /><a href="https://blog.argoproj.io/best-practices-for-multi-tenancy-in-argo-cd-273e25a047b0">blog.argoproj.io/best-practices-for-multi-tenancy-in-argo-cd-273e25a047b0</a></p>
  </div>
</div>


Note:
* Higher isolation: Shared Metrics, Domains, etc
Not recommended by Argo CD: https://blog.argoproj.io/best-practices-for-multi-tenancy-in-argo-cd-273e25a047b0
* Easier to configure: Argo Projects, Apps in any namespace. Projects could be used to separate envs.



<div class="floatRight" style="margin-right: 100px; width: 20%;">
    <div style="margin-bottom: 50px">
        <img src="images/instance-per-namespace.svg" width="100%"/>
    </div>
    <div>
        <img src="images/instance-per-cluster.svg" width="100%"/>
    </div>
    <div>
        <img src="images/hub-and-spoke.svg" width="100%"/>
    </div>
</div>

## Dedicated instances: Options

**Topology**:
* Instance per Namespace
* Instance per Cluster

**Management**:
* Standalone
* Hub and Spoke (IDP as a Service)  
  💡 Argo CD AppSets

Note:
* Standalone: Autonomous Teams
* Hub and Spoke: Platform teams



## IDP as a Service using Argo CD AppSets  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: id="IDPaaS" data-auto-animate -->
<img src="images/IDPaaS-full.svg">




## IDP as a Service using Argo CD AppSets  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-gop.svg">



<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-Repos-1.svg" width="100%">
<div style="visibility: hidden;">blocker</div>

<p style="visibility: hidden;">blocker</p>



<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-Repos-3.svg" width="100%">
<div style="visibility: hidden;">blocker</div>

<p style="visibility: hidden;">blocker</p>



<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-Repos-full.svg" width="100%">
<div style="visibility: hidden;">blocker</div>

<p style="visibility: hidden;">blocker</p>




# Instance per Namespace vs per Cluster <!-- .element style="margin-bottom: 0px;text-align: center !important""-->

<div class="container">
  <div class="column">
    <ul>
      <li>Easy to maintain</li>
      <li>Low infra usage</li>
    </ul>
  </div>
  <div class="column">
    <ul>
      <li>Higher isolation</li>
      <li>Easier to configure <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /></li>
    </ul>
  </div>
</div>

Notes:
* Shared cluster - less k8s controllers, less node fragmentation



## What about env/stages? <!-- .element style="margin-bottom: 0px"-->

<span>Each tenant might have multiple envs</span>

<img src="images/tenants-and-envs.drawio.svg" width="60%">

Notes:
* It gets more complex: Each tenant has multiple envs.
* Does each get its own cluster and its own IDP?
