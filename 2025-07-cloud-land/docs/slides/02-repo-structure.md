# Basic repo structure  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: id="basic-structure" style="text-align: center !important"  data-auto-animate -->

<img src="images/basic-repo-structure1.svg" width="60%">



# Basic repo structure  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important"  data-auto-animate -->

<img src="images/basic-repo-structure2.svg" width="60%">



# Basic repo structure  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important"  data-auto-animate -->

<img src="images/basic-repo-structure3.svg" width="60%">



# Basic repo structure  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important"  data-auto-animate -->

<img src="images/basic-repo-structure3.svg" width="60%">



# Basic repo structure  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important"  data-auto-animate -->

<img src="images/basic-repo-structure4.svg" width="60%">



# Basic repo structure  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important"  data-auto-animate -->

<img src="images/basic-repo-structure5.svg" width="60%">



# Basic repo structure  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important"  data-auto-animate -->

<img src="images/basic-repo-structure.svg" width="60%">

Notes: Demo Argo CD Upgrade
`kubectl --context k3d-repo-structure -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d`



## Bootstrapping in vanilla cluster
<!-- .slide: id="bootstrapping"  -->

* Deploy Argo CD + repo secret 
* Apply `projects` + app `argocd`

```bash
# The only imperative commands you'll ever need
helm template argocd argo/argo-cd --version .. --namespace argocd --values .. \
  | kubectl apply -f-

kubectl apply ..
```

➡️ GitOps



## IDP Bootstrapping made simple: GOP <!-- .element style="font-size: 200%" -->
<!-- .slide: id="gop" style="font-size:70%"  -->

Creates a complete GitOps-based operational stack / IDP on your Kubernetes clusters

<i class="fab fa-github"></i> [cloudogu/gitops-playground](https://github.com/cloudogu/gitops-playground)

Also runs locally

<span style="font-size: 250%">
<i class="fab fa-linux" style="color: #FFD133;"></i> 
<i class="fab fa-windows" style="color: #2279D1;"></i> 
<i class="fab fa-apple" style="color: black;"></i>
<span style="margin: 0 30px">➕</span>
<i class="fab fa-docker" style="color: #1D63ED;"></i></span>

```bash
VERSION='cec82a7' # Preview for 0.12.0
bash <(curl -s \
  "https://raw.githubusercontent.com/cloudogu/gitops-playground/$VERSION/scripts/init-cluster.sh") \
   && docker run --rm -t -u $(id -u) \
    -v ~/.config/k3d/kubeconfig-gitops-playground.yaml:/home/.kube/config \
    --net=host \
    ghcr.io/cloudogu/gitops-playground:$VERSION --yes --argocd --ingress-nginx --base-url=http://localhost
# More IDP-features: --monitoring --vault=dev --cert-manager --mailhog
# More features for developers: --jenkins --registry --content-examples
```

Try new repo structure with GOP:

<i class="fab fa-github"></i> [github.com/cloudogu/gitops-talks/tree/772d0c79/src/repo-examples/basic-repo-structure](https://github.com/cloudogu/gitops-talks/tree/772d0c79/src/repo-examples/basic-repo-structure)





# Multi-Tenancy  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: id="multi-tenancy"  style="text-align: center !important"  -->

<img src="images/basic-repo-structure-with-tenant.svg" width="100%">




<!-- .slide: id="multi-tenancy-options" -->
<div class="floatRight" style="margin-right: 100px; width: 25%;">
    <div style="margin-bottom: 50px">
        <img src="images/instance-per-namespace.svg" width="100%"/>
    </div>
    <div>
        <img src="images/instance-per-cluster.svg" width="100%"/>
    </div>
</div>

## Options for multi-tenancy

* Shared
* Dedicated
  * Instance per Namespace
  * Instance per Cluster



## Managing dedicated tenant instances

<img src="images/hub-and-spoke.svg" class="floatRight" width="30%" style="margin-right: 100px;"/>

* Standalone
* Hub and Spoke  
  💡 Argo CD AppSets



## IDP as a Service using Argo CD AppSets  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: id="IDPaaS" data-auto-animate -->
<img src="images/IDPaaS.svg" width="60%">




## IDP as a Service using Argo CD AppSets  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-one-tenant.svg" width="60%">



## IDP as a Service using Argo CD AppSets  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-full.svg" width="60%">



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



<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-Repos-full.svg" width="100%">
Try with GOP:

<i class="fab fa-github"></i> [cloudogu/gop-multi-tenant-multi-cluster-example](https://github.com/cloudogu/gop-multi-tenant-multi-cluster-example)



# Developers  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: id="developers"  style="text-align: center !important" -->
<!-- .slide: data-auto-animate -->

<img src="images/basic-repo-structure-with-tenant-ci-1.svg" width="60%" >



# Developers  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important" -->
<!-- .slide: data-auto-animate -->

<img src="images/basic-repo-structure-with-tenant-ci.svg" width="60%">



# Developers  <!-- .element style="margin-bottom: 0px"-->
<!-- .slide:  style="text-align: center !important" -->
<!-- .slide: data-auto-animate -->

<img src="images/basic-repo-structure-with-tenant-ci.svg" width="60%">
<div style="position: absolute; top: 80%; left: 5%">
<i class="fab fa-github"></i> <a href="https://github.com/cloudogu/gitops-build-lib">cloudogu/gitops-build-lib</a>
</div>



## Alternatives for promotion <!-- .element style="margin-bottom: 0px"-->
<!-- .slide: id="promotion"  style="text-align: center !important"  -->
<!-- .slide: style="font-size:67%"  -->

* **CI** <img src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/> <img src="images/flux-icon.svg" style="vertical-align: middle;" width="3.5%;"/>  
  ➕ Can provide lots of features (PRs, hydration, validation, etc.)  
  ➖ Depends on CI and SCM  
* **Renovate** <img src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/> <img src="images/flux-icon.svg" style="vertical-align: middle;" width="3.5%;"/>  
  ➕ Generic solution  
  ➖ Less specific K8s or GitOps-related options  
* **Image Updaters** [<img src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/>](https://github.com/argoproj-labs/argocd-image-updater) [<img src="images/flux-icon.svg" style="vertical-align: middle;" width="3.5%;"/>](https://fluxcd.io/flux/guides/image-update/)  
  ➕ Good integration to GitOps operator  
  ➖ No PRs (so far)  
* **[argoproj-labs/gitops-promoter](https://github.com/argoproj-labs/gitops-promoter)** <img src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/>  
  ➕ First Party Argo CD solution (also does hydration)  
  ➖ Not stable, not for flux  
* **[akuity/kargo](https://github.com/akuity/kargo)** <img src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/>  
  ➕ Declarative promotions, UI   
  ➖ Yet another tool, not for flux  
