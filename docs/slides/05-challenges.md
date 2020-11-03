# Herausforderungen und <br/>Erkenntnisse aus der Praxis



## Mehr Infrastruktur - GitOps Operator / CI/CD

* Flux (ehemals weaveworks, jetzt CNCF Sandbox)  
* Argo (CNCF Incubator)
* JenkinsX (CDF)
* Spinnaker (CDF)
* viele weitere:   
  <i class="fab fa-github"></i> [weaveworks/awesome-gitops](https://github.com/weaveworks/awesome-gitops)

<div class="floatRight" >
<img data-src="images/flux.png" width="100px" style="display: block;margin-bottom: 20px;"/>
<img data-src="images/argo.png" width="50px" style="display: block"/>
<img data-src="images/jenkinsx.svg" width="100px" style="display: block;margin-bottom: 20px;"/>
<img data-src="images/spinnaker.svg" width="80px" style="display: block;margin-bottom: 20px;"/>
</div>



### Entscheidung und erste Erfahrungen 

* Viele Lösungen sind vollständige CI/CD Lösungen
* Flux: Reiner GitOps-Operator   
 ➡ Integriert gut mit bestehender CI/CD Lösung - **<i class="fab fa-jenkins" style="font-weight: bold;"></i>**
* Einfach deployt und konfiguriert



### Offene Fragen bei Flux

* Technischer Durchstich schnell erreicht 
* Direkt danach warten viele Detailfragen
    * Git-sync via Polling?
    * Wie Helm/Kustomize deployen?
    * Ressourcen löschen?
    * Umgang mit Fehlern?
    * Wie Staging implementieren?
    * Infrastruktur im Applikations-Repo oder im GitOps-Repo?
    * Lokale Entwicklung?
    * Zukunft von Flux?
    * ...

Note: Weitere interessante Erketnnisse:
* Eventual consistence: Push yaml with CR and CRD - Which one applied first? CR fails, next time might succeed. 



## Mehr Infrastruktur 2 - webhook receiver

* Flux pollt Git alle 5 Minuten ➡️ langsameres Deployment
* Alternativen
  * Mehr Infra: <i class="fab fa-github"></i> [fluxcd/flux-recv](https://github.com/fluxcd/flux-recv)
  * Manuell anstoßen 
   ```shell script
   fluxctl sync --k8s-fwd-ns kube-system
   ```
  * Warten ⏱️ 

Note: Teaser - wird mit Fluxv2 besser.



## Mehr Infrastruktur 3 - Helm/Kustomize Operators

Je nach verwendeten Tools, mehr Operators notwendig

* Helm Operator
* Kustomize Operator
* Was tun bei anderen Templating-Tools?

Note:
* Neue Herausforderungen, z.B. Helm Client Version durch Operator festgelegt.
* Was tun, wenn Chart neuere Client Version braucht, als neueste Operator Version fest legt



## Löschen von Ressourcen

* "garbage collection" kann in Flux aktiviert werden
* 😰
* ... oder doch lieber manuell löschen



## Fehlerbehandlung

* Push, Build und Deployment entkoppelt
* Fehlermeldung asynchron ➡️ Fehler werden später bemerkt
* Abhilfe:
  * Fail early mit CI Server - wenn Pipeline vorhanden
  * Monitoring und Alerting - mit Flux ineffizient



### Herausforderungen Monitoring und Alerting mit Flux (1)

```
delta(flux_daemon_sync_duration_seconds_count{success='true'}[6m]) < 1
```

🌐 [docs.fluxcd.io/en/1.21.0/references/monitoring](https://docs.fluxcd.io/en/1.21.0/references/monitoring/)

Note:
* Monitoring-Queries in Doku nicht intuitiv



### Herausforderungen Monitoring und Alerting mit Flux (2)

* Erzeugt viele Alerts
* Betroffene Anwendung und Ursache muss im Log gesucht werden
* Ursachen im Flux und Helm Operator Log schwer zu finden 
* Alerts und Neustarts schwierig zu differenzieren von "echten" Deployment-Fehlern. Beispiele:
  * Operator Pod Neustarts
  * Alerts während Wartungsfenster von Git Server
  * Operator Pod OOM Kills
  
Note:
* Flux und Helm Operator brauchen jeweils fast 1GB RAM  
* Docs: https://docs.fluxcd.io/en/1.21.0/references/monitoring/

➡ Betriebsaufwände der Operator nicht vernachlässigbar  



## Implementierung von Stages

### Idee 1: Staging Branches

* Develop ➡ Staging
* Main ➡ Production 
* Flux kann nur mit einem Git Repo umgehen  
  ➡ Ein Flux pro Stage (Cluster/Namespace)
<br/>
<br/>

<span class="floatLeft fragment" style="font-size: 4em;" data-fragment-index="2">❌</span>
<ul class="fragment" data-fragment-index="1">
    <li>Branching-Logik aufwendig und fehleranfällig</li>
    <li>Betrieb aufwendig (mehrere Flux-Instanzen notwendig)</li>
<ul/>

Note: Branching führt zu Konflikten beim Merge, Develop und Master laufen auseinander, etc



### Idee 2: Staging Ordner

* Ein Ordner pro Stage
* Alle auf demselben Branch
* Wenn nötig: Staging Namespace in Ressourcen nennen
* Prozess: Staging einfach committen; für Prod PR erstellen
* Manuell zwar umständlich, aber gut für Automatisierung
<br/>
<br/>

<span class="floatLeft fragment" style="font-size: 4em;" data-fragment-index="2">✅</span>
<ul class="fragment" data-fragment-index="1">
    <li>Branching-Logik simpler</li>
    <li>Betrieb weniger aufwendig</li>
<ul/>



## Applikations-Repo vs im GitOps-Repo

* Bisher: Infrastruktur direkt neben Code im App Repo
* Jetzt: Infrastruktur getrennt vom Code im GitOps Repo ?!

➡ Nachteile:
* Getrennte Pflege
* Getrennte Versionierung
* Aufwendigeres Review 
* Aufwendigere lokaler Entwicklung



### Lösung: CI-Server

<img data-src="images/gitops-with-app-repo.svg" />



**Resultat**

<!-- .slide: style="font-size: 0.9em;"  -->
> My gitops workflow might be turing complete  
> ― Darren Shepherd, CTO Rancher Labs  
<a href="https://twitter.com/ibuildthecloud/status/1311474999148961798"><i class="fab fa-twitter"></i> twitter.com/ibuildthecloud/status/1311474999148961798</a>

Note: 
Mehr Kritik:
* "I'm really starting to get irritated with "GitOps." Why does CI have to be reinvented for k8s. It's a simple problem. On git commit run "kubectl" Every CI system today can do this, do we have to reinvent "git clone" with ArgoCD/Flux. I question that this is the right approach."   
  https://twitter.com/ibuildthecloud/status/1263131200484372485
* GitOps: The Bad and the Ugly - Ádám Sándor
  https://twitter.com/adamsand0r/status/1301814503672344577
  🌐 https://blog.container-solutions.com/gitops-limitations
* Carlos Sanchez - GitOps: The Bad and the Ugly "Not designed for programmatic updates" totally agree, we had to do some ugly logic to work around git conflicts (more about it at https://buff.ly/3euUG29 )
  https://mobile.twitter.com/csanchez/status/1303371275168083968



**Nachteile** 

* Komplexität
* Entwicklungsaufwand für Logik der CI-Pipeline
* Viele Fehlerfälle. Beispiele:
  * Git Conflicts durch Concurrency
  * Dadurch Gefahr von Inkonsistenz

Note:

* Ohne reproducible build - zB Versionsnummer mit Datum oder Docker Image RepoDigest in YAML verwenden
* Abhilfe: Wiederverwendung



**Vorteile**  

* Fail early: statische YAML-Analyse durch CI-Server (yamlint, kubeval)
* Automatische PR-Erstellung
* Arbeit auf echten Dateien ➡ CI-Server erzeugt inline YAML
* Test-Deployment von Feature Branch möglich
* Lokale Entwicklung ohne GitOps weiterhin möglich
* Erleichterung von Reviews durch Anreicherung Commit Message  

<br/>
<br/>
<div class="fragment">
<a href="https://scm-manager.org/"><img data-src="images/scm-manager_logo.png" width="26%" class="floatRight"/></a>
<img data-src="images/PR.png" width="70%"/>
</div>

Note:
* Anreicherung Commit Message:Autor, original Commit, Issue-ID und Build-Nummer 



## Lokale Entwicklung

* Option 1: Flux und Git Repo in lokalen Cluster deployen  
  ➡ Umständlich
* Option 2: Keine Änderung. Möglich, wenn Infrastruktur im Applikations-Repo verbleibt.



## Zukunft von Flux

* August 2019: Flux + Argo GitOps Engine = Flux v2
* Juli 2020: Flux v2 ➡ ~~GitOps Engine~~ GitOps Toolkit
* Egal wie: Breaking Changes
* Dafür viele neue Features:
  * Alerting
  * Webhook Receiver eingebaut
  * Helm und Kustomize Operators 
  * Mehrere Git Repos
  * Mandanten 
  * Flux aktualisiert sich selbst mit GitOps
  * ... 🌐 [toolkit.fluxcd.io](https://toolkit.fluxcd.io)



**Das Flux-Dillema (Stand 11/2020)**
<!-- .slide: style="font-size: 0.95em;"  -->

> ⚠️ This also means that Flux v1 is in maintenance mode.  
> <i class="fab fa-github"></i> [github.com/fluxcd/flux/blob/738d47/README.md](https://github.com/fluxcd/flux/blob/738d47/README.md)

> Once we have reached feature-parity [..], we will continue to support Flux v1 and Helm Operator v1 for 6 more months  
<i class="fab fa-github"></i> [github.com/fluxcd/flux/issues/3320](https://github.com/fluxcd/flux/issues/3320)

* Flux v2 hat aber noch nicht alle Features von Flux:  
  🌐 [toolkit.fluxcd.io/roadmap](https://toolkit.fluxcd.io/roadmap/)
* und ist nicht stable - Version `0.x`  
  <i class="fab fa-github"></i> [github.com/fluxcd/flux2/releases](https://github.com/fluxcd/flux2/releases)

Note:
* Flux vom Namensgeber gestartet, wirkt schon ausgereift und leichtgewichtig (integriert gut mit bestehender CI/CD Lösung)
* Da argo auch Flux verwendet planten beide Teams ein [Joint Venture](https://github.com/argoproj/gitops-engine/tree/ef4dcd6c122ffa40c44dde42f4fef11133b6af76):
 argoproj/gitops-engine - jetzt wohl aber [doch getrennt](https://github.com/fluxcd/flux2/blob/815dad18f4ddc231600054830e224ca3c542ed47/docs/faq/index.md#is-the-gitops-toolkit-related-to-the-gitops-engine), 
 Flux v2 im GitOps Toolkit