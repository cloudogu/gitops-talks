# Anwendungsfall:<br/>Migration CI/CD ➡️ GitOps (Public Cloud)



CD funktionert gut. Aber:

* Viele 3rd Party Anwendungen ohne CD Pipeline.  
  Manuelles Deployment  
  ➡ ️Gefahr:️ commit/push vergessen
* Schreibender Zugriff auf Cluster notwendig (Devs & CI)  
  ➡️ Security?  
  ➡️ Zusätzliche Gefahr: "ausversehen etwas deployt"
* Helm: Chart URL und Version in CD Pipeline festlegen? 🤔  
  ➡️ Helm Operator