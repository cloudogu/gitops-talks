# Herausforderungen in der Praxis



## Mehr Infrastruktur - GitOps Operator / CI/CD

* Flux (ehemals weaveworks, jetzt CNCF Sandbox)  
* Argo (CNCF Incubator)
* JenkinsX (CDF)
* Spinnaker (CDF)
* viele weitere:   
  <i class="fab fa-github"></i> https://github.com/weaveworks/awesome-gitops

<div class="floatRight" >
<img data-src="images/flux.png" width="100px" style="display: block;margin-bottom: 20px;"/>
<img data-src="images/argo.png" width="50px" style="display: block"/>
<img data-src="images/jenkinsx.svg" width="100px" style="display: block;margin-bottom: 20px;"/>
<img data-src="images/spinnaker.svg" width="80px" style="display: block;margin-bottom: 20px;"/>
</div>

Note:
* Flux vom Namensgeber gestartet, wirkt schon ausgereift und leichtgewichtig (integriert gut mit bestehender CI/CD Lösung)
* Da argo auch Flux verwendet planten beide Teams ein [Joint Venture](https://github.com/argoproj/gitops-engine/tree/ef4dcd6c122ffa40c44dde42f4fef11133b6af76):
 argoproj/gitops-engine - jetzt wohl aber [doch getrennt](https://github.com/fluxcd/flux2/blob/815dad18f4ddc231600054830e224ca3c542ed47/docs/faq/index.md#is-the-gitops-toolkit-related-to-the-gitops-engine), 
 Flux v2 im GitOps Toolkit



### Entscheidung und erste Erfahrungen 

* Viele Lösungen sind vollständige CI/CD Lösungen
* Flux: Reiner GitOps-Operator   
 ➡ Integriert gut mit bestehender CI/CD Lösung - **<i class="fab fa-jenkins" style="font-weight: bold;"></i>**
* Einfach deployt und konfiguriert
* Technischer Durchstich schnell erreicht



### Offene Fragen bei Flux

Aber: Es warten viele Detailfragen

* Git-sync via Polling?
* Wie Helm/Kustomize deployen?
* Ressourcen löschen?
* Umgang mit Fehlern?
* Wie Staging implementieren?
* Infrastruktur im Applikations-Repo oder im GitOps-Repo?
* Lokale Entwicklung?
* Zukunft: Flux v2 / GitOps Toolkit / GitOps Engine?
* ...



## Mehr Infrastruktur 2 - webhook receiver

* Flux pollt Git alle 5 Minuten ➡️ langsameres Deployment
* Alternativen
  * Mehr Infra: <i class="fab fa-github"></i> fluxcd/flux-recv
  * Manuell anstoßen: 
   ```shell script
   fluxctl sync --k8s-fwd-ns kube-system
   ```

Note: Teaser - wird mit Fluxv2 besser.



## Mehr Infrastruktur 3 - Helm/Kustomize Operators

Je nach verwendeten Tools, mehr Operators notwendig

* Helm Operator
* Kustomize Operator
* was tun bei anderen Templating Tools?

Note:
* Neue Herausforderungen, z.B. Helm Client Version durch Operator festgelgt.
* Was tun wenn Chart neuere Client Version braucht als neueste Opertor Version fest legt



## Löschen von Ressourcen

* "garbage collection" kann in Flux aktiviert werden
* 😰
* ... oder doch lieber manuell löschen



## Fehlerbehandlung

* Push, Build und Deployment entkoppelt
* Fehlermeldung asynchron ➡️ Fehler werden später bemerkt
* Ursachen im Flux und Helm Operator Log schwer zu finden 
* Abhilfe:
  * Fail early mit CI Server - wenn Pipeline vorhanden
  * Monitoring und Alerting - schwer wartbar



### Herausforderungen Flux Monitoring und Alerting

```
delta(flux_daemon_sync_duration_seconds_count{success='true'}[6m]) < 1
```

* Monitoring-Queries in Doku nicht intuitiv
* Erzeugt viele Alerts
* Betroffene Anwendung und Ursache muss im Log gesucht werden
* Alerts und Neustarts schwierig zu differenzieren von "echten" Deployment-Fehlern. Beispiele:
  * Alerts während Wartungsfenster von Git Server
  * Operator Pod Neustarts
  * Operator Pod OOM Kills

➡ Betriebsaufwände der Operator nicht vernachlässigbar  
➡ Umgewöhnung bei Entwicklern notwendig 

Note:
* Flux und Helm Operator brauchen jeweils fast 1GB RAM  
* Docs: https://docs.fluxcd.io/en/1.21.0/references/monitoring/



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



### Resultat

<!-- .slide: style="font-size: 0.9em;"  -->
> My gitops workflow might be turing complete  
> ― Darren Shepherd, CTO Rancher Labs  
<a href="https://twitter.com/ibuildthecloud/status/1311474999148961798"><i class="fab fa-twitter"></i> https://twitter.com/ibuildthecloud/status/1311474999148961798</a>

Note: 
Mehr Kritik:
* "I'm really starting to get irritated with "GitOps." Why does CI have to be reinvented for k8s. It's a simple problem. On git commit run "kubectl" Every CI system today can do this, do we have to reinvent "git clone" with ArgoCD/Flux. I question that this is the right approach."   
  https://twitter.com/ibuildthecloud/status/1263131200484372485
* GitOps: The Bad and the Ugly - Ádám Sándor
  https://twitter.com/adamsand0r/status/1301814503672344577
  🌐 https://blog.container-solutions.com/gitops-limitations
* Carlos Sanchez - GitOps: The Bad and the Ugly "Not designed for programmatic updates" totally agree, we had to do some ugly logic to work around git conflicts (more about it at https://buff.ly/3euUG29 )
  https://mobile.twitter.com/csanchez/status/1303371275168083968



### Nachteile

* Komplexität
* Entwicklungsaufwand für Logik der CI-Pipeline
* Viele Fehlerfälle. Beispiele:
  * Git Conflicts durch Concurrency
  * Dadurch Gefahr von Inkonsistenz
  * Ohne reproducible build: Jeder Build erstellt GitOps PR

<p class="fragment">
➡ Abhilfe: Wiederverwendung
<br/>
<br/>
Unser Beispiel: <i class='fab fa-github'></i> <a href="https://github.com/cloudogu/k8s-gitops-playground">github.com/cloudogu/k8s-gitops-playground</a>
</p>

Note:
* Ohne reproducible build - zB Versionsnummer mit Datum oder Docker Image RepoDigest in YAML verwenden



### Vorteile

* Fail early: statische YAML-Analyse durch CI-Server (kubeval, yamlint)
* Automatische PR-Erstellung
* Arbeit auf echten Dateien ➡ CI-Server erzeugt inline YAML
* Test-Deployment von Feature Branch möglich
* Lokale Entwicklung ohne GitOps weiterhin möglich
* Erleichterung von Reviews durch Anreicherung Commit Message:  
  Autor, original Commit, Issue-ID und Build-Nummer 

<br/>
<br/>
<div class="fragment">
<a href="https://scm-manager.org/"><img data-src="images/scm-manager_logo.png" width="26%" class="floatRight"/></a>
<img data-src="images/PR.png" width="70%"/>
</div>



## Lokale Entwicklung

* Option 1: Flux und Git Repo in lokalen Cluster deployen  
  ➡ Umständlich
* Option 2: Keine Änderung. Möglich, wenn Infrastruktur im Applikations-Repo verbleibt.



## Zukunft: Flux v2 / GitOps Toolkit / GitOps Engine?
TODO
