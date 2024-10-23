<!-- .slide: data-background-image="images/examples.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.8);">
<br/>
<h1 style="margin: 0 0 0 0; color: #5b5a5a;" >More examples</h1>
<br/>
</div>


  
Note:
* Source:  https://unsplash.com/photos/ZI_GICTqBSY
* Different scope in examples: Some include tool bootstrapping, others focus on folder structure



## Example 3: ArgoCD autopilot <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="ex3"  -->

<div class="container">
    <div class="column" style="color: #5b5a5a; font-size:70%; background-image: url(images/parchment-paper.svg);background-repeat: no-repeat; background-size: contain;">
        <ul style="margin-left: 85px; margin-top: 15px; margin-right: 50px;">
          <li><strong>Repo pattern:</strong> Monorepo</li>
          <li><strong>Operator pattern:</strong><br/> Standalone / Hub and Spoke</li>
          <li><strong>Operator:</strong>
            <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> 
          </li>
          <li><strong>Boostrapping:</strong> <code>argocd-autopilot</code></li>
          <li><strong>Linking:</strong> <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> <code>Application</code>, <code>ApplicationSet</code>, <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></li>
          <li><strong>Features:</strong> 
            <ul>
              <li>Operate ArgoCD with GitOps</li>
              <li>Opinionated structure and YAML creation via CLI</li>
            </ul>
          <li><strong>Source:</strong> <span style="font-size:95%"><i class='fab fa-github'></i> <a href="https://github.com/argoproj-labs/argocd-autopilot/releases/tag/v0.4.10">argoproj-labs/argocd-autopilot</a></span></li>
        </ul>
        <br/><br/><br/>
    </div>
    <div class="column">
      <img src="images/example-autopilot.svg"/>
    </div>
</div>

Note: 
* * [Examplary folder Structure](https://github.com/cloudogu/gitops-talks/tree/ca16fe/docs/image-sources/repo-examples/3)
* Alternative for argocd-repo in Ex 3
* Opinionated structure (standard) saves effort, good practices for free.
* But 
  - Always refers [latest ArgoCD](https://github.com/argoproj-labs/argocd-autopilot/blob/84ec8989a3ebae132b9a8a019f8a6bd2eb76bac5/manifests/base/kustomization.yaml#L4).  
    No way to reproduce on disaster recovery.
  - [No yet clear how to upgrade ArgoCD](https://github.com/argoproj-labs/argocd-autopilot/issues/45)
  - Repo per Team not in concept. App Of app would be possible but then CLI commands would no longer work
  - only works with a specific SCM providers
  - officially not ready for production, yet
  - complicated
* proj1 and app1 generated via CLI
* projects as environments, ex 3 uses projects as tenants/teams



## Example 4: Flux Monorepo <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="ex4"  -->

<div class="container">
    <div class="column" style="color: #5b5a5a; font-size:70%; background-image: url(images/parchment-paper.svg);background-repeat: no-repeat; background-size: contain;">
        <ul style="margin-left: 85px; margin-top: 5px; margin-right: 55px;">
          <li><strong>Repo pattern:</strong> Monorepo</li>
          <li><strong>Operator pattern:</strong> Standalone</li>
          <li><strong>Operator:</strong>
            <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> 
            (<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" />?) 
          </li>
          <li><strong>Boostrapping:</strong> <code>flux</code></li>
          <li><strong>Linking:</strong> <img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> <code>Kustomization</code>, <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></li>
          <li><strong>Features:</strong>
            <ul>
              <li>Cross-cutting infra</li>
              <li>Operate Flux with GitOps</li>
            </ul>
        <li><strong>Source:</strong><br/><span style="font-size:80%"><i class='fab fa-github'></i> <a href="https://github.com/fluxcd/flux2-kustomize-helm-example/issues/16">fluxcd/flux2-kustomize-helm-example#16<br/></a>
          <a href="https://fluxcd.io/flux/guides/repository-structure/">🌐 fluxcd.io/flux/guides/repository-structure</a></span></li>
        </ul>
        <br/><br/><br/><br/>
    </div>
    <div class="column" >
      <img src="images/example-flux-mono.svg"/>
    </div>
</div>

Note:

* * [Examplary folder Structure](https://github.com/cloudogu/gitops-talks/tree/ca16fe/docs/image-sources/repo-examples/4)
* Officially only one app, discussion about multiple apps in [issue](https://github.com/fluxcd/flux2-kustomize-helm-example/issues/16)
* `clusters` - One operator per cluster
* `infrstructure` - cross-cutting infra
  * controllers: e.g. ingress controller, cert-manager,
  * `config`: such netpols, rbac, namespaces
* Boostrapping via CLI: Pushes manifests to repo, applies Kustomization to cluster imperatively (only once) -> GitOps
  (e.g. [flux-system](https://github.com/cloudogu/gitops-playground/tree/main/fluxv2/clusters/gitops-playground/flux-system))



## Example 5: Flux repo per team <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="ex5"  -->

<div class="container">
    <div class="column" style="color: #5b5a5a; font-size:75%; background-image: url(images/parchment-paper.svg);background-repeat: no-repeat; background-size: contain; ">
        <ul style="margin-left: 90px; margin-top: 50px; margin-right: 65px">
          <li><strong>Repo pattern:</strong> Repo per team</li>
          <li><strong>Operator pattern:</strong> Standalone</li>
          <li><strong>Operator:</strong>
            <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> 
            (<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" />?) 
          </li>
          <li><strong>Boostrapping:</strong> <code>flux</code></li>
          <li><strong>Linking:</strong> <img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> <code>Kustomization</code>, <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></li>
          <li><strong>Features:</strong> Ex 5 with repo for team</li>
<li><strong>Source:</strong><br/><span style="font-size:80%"><i class='fab fa-github'></i> <a href="https://github.com/fluxcd/flux2-multi-tenancy">fluxcd/flux2-multi-tenancy<br/></a>
          <a href="https://fluxcd.io/flux/guides/repository-structure/">🌐 fluxcd.io/flux/guides/repository-structure</a></span></li>
        </ul>
        <br/><br/><br/><br/>
    </div>
    <div class="column" style="margin-top: 100px;">
      <img src="images/example-flux-repo-per-team.svg"/>
    </div>
</div>

Note:
* [Examplary folder Structure](https://github.com/cloudogu/gitops-talks/tree/ca16fe/docs/image-sources/repo-examples/5)
* Same as for app(s) in monorepo: Does this work with multiple tenants?



## Example 6: ArgoCD and Flux alternative <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="ex6"  -->

<div class="container">
    <div class="column" style="color: #5b5a5a; font-size:60%; background-image: url(images/parchment-paper.svg);background-repeat: no-repeat; background-size: contain; ">
        <ul style="margin-left: 90px; margin-top: 10px; margin-right: 65px;">
          <li><strong>Repo pattern:</strong> Monorepo</li>
          <li><strong>Operator pattern:</strong> Standalone</li>
          <li><strong>Operator:</strong>
            <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> 
            <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> 
          </li>
          <li><strong>Boostrapping:</strong> <code>kubectl</code></li>
          <li><strong>Linking:</strong> <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> <code>Application</code>, <code>ApplicationSet</code> / <br/><img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" />&nbsp;<code>Kustomization</code>, <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></li>
          <li><strong>Features:</strong>
            <ul>
                <li>Cross-cutting infra and app(s)</li>
                <li>ArgoCD <strong>and</strong> Flux examples</li>
            </ul>
            </li>
          <li><strong>Source:</strong><br/><span style="font-size:80%"><i class='fab fa-github'></i> <a href="https://github.com/christianh814/example-kubernetes-go-repo">christianh814/example-kubernetes-go-repo<br/></a>
          📘 C. Hernandez - The Path to GitOps</span></li>
        </ul>
        <br/><br/><br/><br/>
    </div>
    <div class="column">
      <img data-src="images/example-alternative.svg" width="65%"/>
    </div>
</div>

Note:
* [Examplary folder Structure](https://github.com/cloudogu/gitops-talks/tree/ca16fe/docs/image-sources/repo-examples/6)



## Example 7: Environment variations <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="ex7"  -->

<div class="container">
    <div class="column" style="color: #5b5a5a; font-size:70%; background-image: url(images/parchment-paper.svg);background-repeat: no-repeat; background-size: contain; ">
        <ul style="margin-left: 90px; margin-top: 50px; margin-right: 65px">
          <li><strong>Operator:</strong>
            <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> 
            (<img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/>) 
          </li>
          <li><strong>Linking:</strong> <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></li>
          <li><strong>Features:</strong> 
            <ul>
                <li>Env variants for a single app</li>
                <li>Promotion "via <code>cp</code>"</li>
            </ul>
        <li><strong>Source:</strong><br/>
                <span style="font-size:70%">
                    <i class='fab fa-github'></i> <a href="https://github.com/kostis-codefresh/gitops-environment-promotion">kostis-codefresh/gitops-environment-promotion</a>
                </span>
            </li>
        </ul>
        <br/><br/><br/><br/>
    </div>
    <div class="column">
      <img data-src="images/example-variants.svg" width="75%"/>
    </div>
</div>

Note:
* [Examplary folder Structure](https://github.com/cloudogu/gitops-talks/tree/ca16fe/docs/image-sources/repo-examples/7)
* Characteristics
  * Could be used in monorepo, repo per app, repo per team
  * Should also work in Flux
  * Also works with helm (more cumbersome).  
    See [GitOps Cert](https://learning.codefresh.io/course/gitops-scale) - `Use folders for environments`
  * Small files that mostly contain one property so they can be promoted with a single `cp` action
    -> should be automated
  * See also [Article](https://codefresh.io/blog/how-to-model-your-gitops-environments-and-promote-releases-between-them/)
* Tree
  * Simplified, repo contains more variants, like GPU and non-GPU (13 envs!)
  * qa has no variants
  * all non-prod variants are shared -> can be changed at once
  * Interesting question: How to test something in eu on staging?
    * Change base? Might break prod.
    * 💡 Add extra setting to `staging-eu`.
    * If it works, copy to prod-eu
    * Finally move to eu.
    * Analogy: Gradual database refactoring pattern
