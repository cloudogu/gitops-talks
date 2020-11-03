# Fazit 
 
* ITZBund
  * Vereinfacht / beschleunigt Prozesse
  * Konfiguration liegt an definierter, zentraler Stelle vor
  * GitOps-Prozess als Konvention ➡️ einheitlich über viele Projekte
  * Vorteile bei Security
* Cloudogu
  * CI/CD-Prozess "runder"
    * schnelleres Deployment in Produktion 
    * Git und Cluster immer in Sync 
  * Aber: Security-Vorteile tragen erst nach vollständiger Migration



# Destillierte GitOps-Erfahrung

<i class="fas fa-plus"></i> Funktionierendes GitOps hat viele Vorteile

<i class="fas fa-minus"></i> Der Weg dorthin kann aufwendig sein!



# Empfehlung für Flux?

Dilemma: Flux v1 in maintenance, Flux v2 noch nicht stable. 

* Bei bestehendem CI/CD-Prozess:  
  Nur mit gutem Grund migrieren bevor Flux v2 stable ist 
* Bei Neueinführung von Kubernetes:   
  Flux v2 ausprobieren


Note: 
* Eigene "Technology Radar" Einkategorisierung: Trial.
➡️ Mit einem stabilen Flux v2 wird ein klarere Empfehlung wahrscheinlicher



<!-- .slide: data-background-image="images/title.svg"-->

Gerd Huber, ITZBund

Johannes Schnatterer, Cloudogu GmbH

🌐 [cloudogu.com/gitops](https://cloudogu.com/gitops/)
<br/>
🌐 [cloudogu.com/schulungen](https://cloudogu.com/schulungen/)

<br/>

🔥 In Arbeit
* GitOps-Jenkins Library  
  <i class='fab fa-github'></i> [github.com/cloudogu/k8s-gitops-playground](https://github.com/cloudogu/k8s-gitops-playground)
* GitOps-Artikel  
  🌐 [cloudogu.com/blog](https://cloudogu.com/blog/)
<p class="state-background">
    <a href='https://twitter.com/cloudogu' class="social" target="_blank">
        <i class='fab fa-twitter'></i>
        @cloudogu
    </a>
</p>
<p class="printOnly">
    <a href='https://twitter.com/cloudogu' class="social" target="_blank">
        <i class='fab fa-twitter'></i>
        @cloudogu
    </a>
    <br/>
    <a href='https://twitter.com/jschnatterer' class="social" target="_blank">
        <i class='fab fa-twitter'></i>
        @jschnatterer
    </a>
</p>
