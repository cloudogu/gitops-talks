# Personal Conclusion

After migrating to and operating with GitOps in production for > 1 year

* Smoother CI/CD,
  * *everything* declarative
  * faster deployment 
  * force sync desired state ↔️ actual state 
* But: security advantages only when finished migration
* A lot of potential ahead!



# GitOps experience distilled

<i class="fas fa-plus"></i> Has advantages, once established

<i class="fas fa-minus"></i> Mileage for getting there may vary



# Adopt?

* Greenfield
  * Kubernetes AppOps: Definitely
  * Cloud Infra: Depends
* Brownfield: Depends

Note:
* Greenfield - Cloud Infra:
  * single cluster: overkill,
  * at scale: automation provides advantages
* Brownfield: It might solve certain problems, but migration can cause a lot of effort



<!-- .slide: data-background-image="images/title.svg"-->

Johannes Schnatterer, Cloudogu GmbH
<img data-src="images/qr-slides.png" class="floatRight" width="24%"/>
<br/><br/>

🌐 [cloudogu.com/gitops](https://cloudogu.com/gitops/)
 * ℹ️ GitOps Resources (intro, tool comparison, etc.)
 * 💬 Discussions
 * 🧑‍🏫 Training

<br/>
<br/>

<i class='fab fa-github'></i> [cloudogu/k8s-gitops-playground](https://github.com/cloudogu/k8s-gitops-playground)

<i class='fab fa-github'></i> [cloudogu/gitops-build-lib](https://github.com/cloudogu/gitops-build-lib) <i class="fab fa-jenkins"></i>

