# Anwendungsfall:<br/>Migration CI/CD ➡️ GitOps (Public Cloud)



## Ausgangslage

<img data-src="images/mycloudogu_logo.svg" width="25%" class="floatRight"/>

* Kleines, junges Unternehmen
* Ziel: Quick Time to Market, geringe Aufwände
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
* Helm: Chart URL und Version in CD Pipeline festlegen? 🤔  
  ➡️ Helm Operator