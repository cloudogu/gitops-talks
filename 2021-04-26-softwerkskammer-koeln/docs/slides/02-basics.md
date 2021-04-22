<!-- .slide: data-background-image="images/questionmarks.jpg"  -->
# What is GitOps?

Note:
* Source: https://pixabay.com/illustrations/question-mark-important-sign-1872665/



* Operating model  
* Term (August 2017):

> Use developer tooling to drive operations  
🌐 [weave.works/blog/gitops-operations-by-pull-request](https://weave.works/blog/gitops-operations-by-pull-request)



"Classic" Continuous Delivery ("CIOps")

<img data-src="images/cicd.svg" width="60%"/>

<p class="fragment">
GitOps
<br/>
<img data-src="images/gitops-simple.svg" width="60%" />

</p>



## GitOps Principles

[<img data-src="images/gitops-wg.png" width="15%;" style="border-radius: 50%" class="floatRight"/>](https://github.com/gitops-working-group)

1. The principle of declarative desired state
2. The principle of immutable desired state versions
3. The principle of state reconciliation
4. The principle of operations through declaration

♨️ WIP!

<i class='fab fa-github'></i> [github.com/gitops-working-group/gitops-working-group/pull/48](https://github.com/gitops-working-group/gitops-working-group/pull/48)

<i class="fas fa-file-alt"></i> [hackmd.io/arwvV8NUQX683uBM3HzyNQem](hackmd.io/arwvV8NUQX683uBM3HzyNQem)

Note:
1. and 2. -> Git, but could also be a different system with theses attributes
   Fun Fact: GitOps is possible without Git
3. Continuously! Not only when a change is triggered, also when the actual state "drifts"
4. No more tinkering!



## GitOps vs DevOps

* DevOps is about collaboration of formerly separate groups (mindset)
* GitOps focuses on ops (operations model)
* GitOps can be used with or without DevOps 



> "The right way to do DevOps" (Alexis Richardson)  
 
<img data-src="images/gitops-map.svg" width="40%" />

<span style="font-size: 20px;"><ul>
<li>🎥 <a href="https://youtu.be/lvLqJWOixDI">youtu.be/lvLqJWOixDI</a></li>
<li><i class="fas fa-newspaper"></i> <a href="https://www.heise.de/select/ix/2021/4/2032116550453239806">heise.de/select/ix/2021/4/2032116550453239806</a><br/> 
(iX 4/2021) 🇩🇪</li>
<li>🌐 <a href="https://schlomo.schapiro.org">schlomo.schapiro.org</a></li>
</ul></span>



## Advantages of GitOps
<!-- .slide: style="font-size: 0.9em;"  -->

<img data-src="images/gitops-simple.svg" width="34%" class="floatRight"/>

* (Almost) no access to cluster from outside
* No credentials on CI server
* Forces 100% declarative description 
  * auditable
  * automatic sync of cluster and git 
* Enterprise: Accessing git is simpler  
  (no new firewall rules)