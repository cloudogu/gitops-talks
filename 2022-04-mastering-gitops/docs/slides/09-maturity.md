<!-- .slide: data-background-image="images/age-g64af97fa4_1920.jpg"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.5); width: 80%; margin: auto;">
  <br/>
  <h1 style="margin: 0 0 0 0; color: #5b5a5a; text-align: center" >GitOps maturity</h1>
  <br/>
</div>

Note:
https://pixabay.com/photos/age-bacteria-bio-biology-blue-1238283/



<figure>
<img style="border-radius: 5px;" data-src="images/tec-radar-gitops.png"/>
<figcaption style="font-size: 0.8em"><a href="https://www.thoughtworks.com/radar/techniques/gitops">🌐 thoughtworks.com/radar/techniques/gitops</a></figcaption>
</figure>

Note: 
* https://thenewstack.io/wait-do-we-need-to-hold-up-on-gitops/



<figure>
<img style="border-radius: 5px;" data-src="images/hype-cycle.jpg"/>
<figcaption style="font-size: 0.8em"><a href="https://www.linkedin.com/pulse/hype-cycle-agile-devops-2021-joachim-herschmann/"><i class="fab fa-linkedin"></i> linkedin.com/pulse/hype-cycle-agile-devops-2021-joachim-herschmann/</a></figcaption>
</figure>

Note:
* At the beginning 
* that is: Hype is just beginning but plateau might be reached rather soon (2-5yrs) 

Note more GitOps Critics
* "I'm really starting to get irritated with "GitOps." Why does CI have to be reinvented for k8s. It's a simple problem. On git commit run "kubectl" Every CI system today can do this, do we have to reinvent "git clone" with ArgoCD/Flux. I question that this is the right approach."   
  https://twitter.com/ibuildthecloud/status/1263131200484372485
* "My gitops workflow might be turing complete"  
  https://twitter.com/ibuildthecloud/status/1311474999148961798
* GitOps: The Bad and the Ugly - Ádám Sándor
  https://twitter.com/adamsand0r/status/1301814503672344577
  🌐 https://blog.container-solutions.com/gitops-limitations
* Carlos Sanchez - GitOps: The Bad and the Ugly "Not designed for programmatic updates" totally agree, we had to do some ugly logic to work around git conflicts (more about it at https://buff.ly/3euUG29 )
  https://mobile.twitter.com/csanchez/status/1303371275168083968
* https://nivenly.com/lib/2021-10-20-gitops/



There are the challenges, but

* Mature tools
  * very active tool development
  * ArgoCD and Flux CNCF graduation ahead
  * Lots of new tools and integrations emerging, including platforms  
* Vibrant community
  * increasing adoption
  * several dedicated GitOps conferences:   
   GitOps Days, GitOps Con, GitOps Summit, Mastering GitOps 🤩
* I have used GitOps successfully in production for years 

Note:
* increasing adoption -> More and more artices, videos, conferences 
* GitOps Days (Weaveworks), GitOps Con (KubeCon day 0 event); GitOps Summit (cd.con)
* very active tool development: [ArgoCD among CNCF projects with highest velocity](https://mobile.twitter.com/cra/status/1468988578357288962)
* Lots of new tools and integrations emerging, including platforms,: 
  e.g. Public Cloud managed k8s, OpenShift, etc.



# My GitOps experience distilled

<i class="fas fa-plus"></i> Has advantages, once established

<i class="fas fa-minus"></i> Mileage for getting there may vary



# Adopt GitOps?

* Greenfield: Definitely
* Brownfield: Depends

Note:
* Important: IaC always definitely
* Greenfield - Cloud Infra:
  * single cluster: overkill?,
  * at scale: automation provides advantages
* Brownfield: It might solve certain problems, but migration can cause a lot of effort