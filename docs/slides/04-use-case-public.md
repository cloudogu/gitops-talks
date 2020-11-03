# Anwendungsfall:<br/>Migration CI/CD ➡️ GitOps (Public Cloud)
<br/>
<img src="images/logo-cloudogu.png" class="centered"/>



## Ausgangslage

<a href="https://my.cloudogu.com/"><img data-src="images/mycloudogu_logo.svg" width="25%" class="floatRight"/></a>

* Kleines, junges Unternehmen
* Prio: Quick Time to Market
* Seit 2017 Continuous Delivery nach K8s in public Cloud



## Motivation für GitOps

Continuous Delivery funktionert gut. Aber:

* Viele 3rd Party Anwendungen ohne CD Pipeline,  
  mit manuellem Deployment  
  ➡ ️Gefahr:️ commit/push vergessen
* Schreibender Zugriff auf Cluster notwendig (Devs & CI)  
  ➡️ Security?  
  ➡️ Zusätzliche Gefahr: "ausversehen etwas deployt"
* Erneuter Build für jede Stage  
  ➡️ langsam