# Was ist GitOps
<!-- .slide: style="font-size: 0.97em;"  -->
* Begriff (August 2017):

> use developer tooling to drive operations  
🌐 https://www.weave.works/blog/gitops-operations-by-pull-request

* Funktioniert gut mit k8s ist aber nicht darauf beschränkt




Continuous Delivery

<img data-src="images/cicd.svg" width="50%"/>

GitOps

<img data-src="images/gitops-simple.svg" width="50%"/>



# Vorteile von GitOps
<!-- .slide: style="font-size: 0.9em;"  -->

<img data-src="images/gitops-simple.svg" width="34%" class="floatRight"/>

* Config As Code: Auditierung, Reproduzierbarkeit
* Weniger schreibender Zugriff auf Cluster nötig
* Keine Credentials im CI Server
* Zugriff auf Git oft organisatorisch einfacher als  
  auf API-Server. Stichwort: Firewall-Freischaltung

Note:
* "Weniger Schreibender Zugriff" - bspw Anwendungen ohne CD Pipeline