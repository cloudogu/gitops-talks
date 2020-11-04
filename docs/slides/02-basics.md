# Was ist GitOps?
<!-- .slide: style="font-size: 0.97em;"  -->
* Begriff (August 2017):

> use developer tooling to drive operations  
🌐 [weave.works/blog/gitops-operations-by-pull-request](https://weave.works/blog/gitops-operations-by-pull-request)

* Funktioniert gut mit K8s ist aber nicht darauf beschränkt




"Klassisches" Continuous Delivery ("CIOps" 😕)

<img data-src="images/cicd.svg" width="48%"/>

<p class="fragment">
GitOps
<br/>
<img data-src="images/gitops-simple.svg" width="48%" />
<img class="floatRight fragment" data-src="images/gitops-with-image.svg" width="48%"/>

</p>
Note:
* Config Repo AKA Environment Repo AKA GitOps Repo 



# Vorteile von GitOps
<!-- .slide: style="font-size: 0.9em;"  -->

<img data-src="images/gitops-simple.svg" width="34%" class="floatRight"/>

* Weniger schreibende Zugriff auf Cluster nötig
* Keine Credentials im CI Server
* Config As Code: Auditierung, Reproduzierbarkeit,   
  Cluster und Git automatisch synchronisiert 
* Zugriff auf Git oft organisatorisch einfacher als  
  auf API-Server. Stichwort: Firewall-Freischaltung

Note:
* "Weniger Schreibender Zugriff" - bspw Anwendungen ohne CD Pipeline