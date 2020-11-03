# Anwendungsfall:<br/>Neueinführung von GitOps (OnPrem)
<br/>
<img src="images/logo-itzbund.svg" class="centered"/>



<!-- .slide: data-background-color="white"  -->
<!-- .slide: data-background-image="images/itz-background.png"  -->
<!-- Important for PDF -->
<!-- .slide: style="color: black; font-size: 0.8em; margin: 0 0 0 0.9em !important;"  -->
<!-- .slide: data-background-size="100% 100%"  -->

GitOps mit K8s – Ausgangslage

<h3 style="color: black"> ITZBund  –  IT-Dienstleister für Bundesverwaltungen</h3>

<h4 style="color: black"> Dienstleistungen (u.a.)</h4>

* bietet IT-Infrastruktur (z.B. Einwahlplattformen, Client-Virtualisierung, Cloud-Lösungen)
* Hosting von Anwendungen

<h4 style="color: black"> Anforderungen</h4>

* Staging von SW-Entwicklungen im Haus (mittels standardisierter Entwicklungsumgebung)
* Staging für SW-Entwicklungen außerhalb des Hauses
* Continuous Delivery/Staging
  * Forderung, fertige SWE-Produkte schnell zu stagen
  * Abstimmung der Konfiguration → Infrastructure as Code



<!-- .slide: data-background-image="images/itz-background.png"  -->
<!-- .slide: data-background-color="white"  -->
<!-- Important for PDF -->
<!-- .slide: style="color: black; margin: 0 0 0 0.9em !important;font-size: 30px;"  -->
<!-- .slide: data-background-size="100% 100%"  -->

GitOps mit K8s  -  Motivation  
<br/>
  

**Motivation für GitOps**

* automatisiertes Stagen
* Berücksichtigung der Umgebungskonfiguration
* pull-Operationen von einem höheren Security-Level
* kein Veröffentlichen von credentials der Staging-Umgebungen an Dev

<br/>
<br/>

<img data-src="images/graphic-itz.svg" width=70% />