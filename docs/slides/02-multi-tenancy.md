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

<img src="images/basic-repo-structure-with-tenant.svg" width="90%">

<p style="margin: 0 0 0 0"><i class="fab fa-github"></i><a href="https://github.com/cloudogu/gop-multi-tenant-shared-example">cloudogu/gop-multi-tenant-shared-example</a></p> 

Note:
* Repo per Team Pattern



# Don't forget to authz

<div class="container">
  <div class="column" style="font-size: 45%">
    <div style="text-align: center">
      <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 3em" />
    </div>
<pre><code class="yaml">policy.csv: |
  # groups: Mapping from groups to RBAC roles
  g, tenant1, role:role-tenant1
  # policies:
  g, tenant1, role:role-tenant1
  p, role:role-tenant1, applications, get, role-tenant1/*, allow
  p, role:role-tenant1, applications, sync, role-tenant1/*, allow
  p, role:role-tenant1, applications, get, argo-project/role-tenant1-control-app, allow
  p, role:role-tenant1, applications, sync, argo-project/role-tenant1-control-app, allow
  p, role:role-tenant1, projects, get, role-tenant1, allow
  p, role:role-tenant1, clusters, get, "https://kubernetes.default.svc", allow
  p, role:role-tenant1, repositories, get, "ssh://...tenant1/gitops", allow
</code></pre>
  <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> <a href="https://github.com/argoproj/argo-cd/blob/v3.2.0/docs/operator-manual/rbac.md">github.com/argoproj/argo-cd/blob/v3.2.0/docs/operator-manual/rbac.md</a>
  </div>
  <div class="column" style="font-size: 40%"> 
    <div style="text-align: center">
      <img data-src="images/kubernetes.svg" title="Kubernetes" style="height: 3em" />
    </div>
<pre><code class="yaml">apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  # Allows users read-only access to all resources
  name: viewers
  namespace: tenant1
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: view
subjects:
  - apiGroup: rbac.authorization.k8s.io
    kind: Group
    name: tenant1</code></pre>
  </div>
</div>

And all other tools (if necessary and supported)
<img data-src="images/grafana.svg" title="Grafana" style="height: 1.1em; vertical-align: middle;" />
<img data-src="images/prometheus.svg" title="Prometheus" style="height: 1.1em; vertical-align: middle;" />
<img data-src="images/cert-manager.svg" title="Cert-Manager" style="height: 1.1em; vertical-align: middle;" />
<img data-src="images/nginx.svg" title="Nginx" style="height: 1.1em; vertical-align: middle;" />
<img data-src="images/velero.svg" title="Velero" style="height: 1.1em; vertical-align: middle;" />
<img data-src="images/eso-icon.svg" title="Velero" style="height: 1.1em; vertical-align: middle;" />
⋯



# Shared vs Dedicated Instance <!-- .element style="text-align: center !important""-->

<div class="container">
  <div class="column">
    <ul>
      <li>Lower infra usage</li>
      <li>Easier to maintain</li>
    </ul>
  </div>
  <div class="column">
    <ul>
      <li>Higher isolation</li>
      <li>Easier to configure</li>
    </ul>
<p style="font-size: 40%;"><img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /><a href="https://blog.argoproj.io/best-practices-for-multi-tenancy-in-argo-cd-273e25a047b0">blog.argoproj.io/best-practices-for-multi-tenancy-in-argo-cd-273e25a047b0</a></p>
  </div>
</div>


Note:
* Higher isolation: Instead of authz in tools, each tenant has its own tool.   
  No shared CPU/RAM, Metrics, Domains, etc
  Works well in argo cd, Argo Projects, Apps in any namespace, RBAC but still not recommended (see link)
* Easier to configure: Projects could be used to separate envs.



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
* Standalone (decentralized, autonomous)
* Hub and Spoke (centralized, platform)  
  **IDP as a Service**  
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



<!-- .slide: data-auto-animate -->
<img src="images/IDPaaS-Repos-full.svg" width="100%">
<div style="visibility: hidden;">blocker</div>

<i class="fab fa-github"></i> [cloudogu/gop-multi-tenant-multi-cluster-example](https://github.com/cloudogu/gop-multi-tenant-multi-cluster-example)




# Instance per Namespace vs per Cluster <!-- .element style="text-align: center !important""-->

<div class="container">
  <div class="column">
    <ul>
      <li>Lower infra usage</li>
      <li>Easier to maintain</li>
    </ul>
  </div>
  <div class="column">
    <ul>
      <li>Higher isolation</li>
      <li>Easier to configure <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> <img data-src="images/prometheus.svg" title="Prometheus" style="height: 1.1em; vertical-align: middle;" /> <img data-src="images/eso-icon.svg" title="External Secrets Operator" style="height: 1.1em; vertical-align: middle;" /> ⋯</li>
    </ul>
<p style="font-size: 40%;"><img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /><a href="https:/github.com/argoproj-labs/argocd-operator">github.com/argoproj-labs/argocd-operator</a></p>
  </div>
</div>

Notes:
* Shared cluster - less k8s controllers, less node fragmentation
* Dedicated cluster - easier to configure: Helm charts are cluster-admin by default.
  Some support multiple namespaces but you'll have to to write your own RBAC and NetPols.
* Recommendation for Argo CD: Use Operator



## What about env/stages? <!-- .element style="margin-bottom: 0px"-->

<span>Each tenant might have multiple envs</span>

<img src="images/tenants-and-envs.drawio.svg" width="60%">

Notes:
* It gets more complex: Each tenant has multiple envs.
* Does each get its own cluster and its own IDP?
