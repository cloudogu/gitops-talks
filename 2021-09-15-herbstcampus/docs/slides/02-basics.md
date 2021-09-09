<!-- .slide: data-background-image="images/questionmarks.jpg"  -->
# What is GitOps?

Note:
* Source: https://pixabay.com/illustrations/question-mark-important-sign-1872665/



* Operating model  
* Origin: blog post by Weaveworks, August 2017

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

[<img data-src="images/gitops-wg.png" width="10%;" style="border-radius: 50%" class="floatRight"/>](https://github.com/gitops-working-group)

[<img data-src="images/opengitops.png" width="10%;" style="border-radius: 50%" class="floatRight"/>](https://github.com/open-gitops)


1. The principle of declarative desired state
2. The principle of immutable desired state versions
3. The principle of continuous state reconciliation
4. The principle of operations through declaration


<i class='fab fa-github'></i> [github.com/open-gitops/documents/blob/main/PRINCIPLES.md](https://github.com/open-gitops/documents/blob/v0.1.0/PRINCIPLES.md)

Note:
1. and 2. -> Git, but could also be a different system with theses attributes
   Fun Fact: GitOps is possible without Git
3. Continuously! Not only when a change is triggered, also when the actual state "drifts"
4. No more tinkering!



## GitOps vs DevOps

* DevOps is about collaboration of formerly separate groups (mindset)
* GitOps focuses on ops (operations model)
* GitOps can be used with or without DevOps 

Note:

Some other opinions

> "The right way to do DevOps" (Alexis Richardson)  

<li>🌐 <a href="https://schlomo.schapiro.org/2021/04/the-gitops-journey.html">schlomo.schapiro.org/2021/04/the-gitops-journey.html</a></li>: 
<img data-src="images/gitops-map.svg" width="40%" />

See also:
<span style="font-size: 20px;"><ul>
<li>🎥 <a href="https://youtu.be/lvLqJWOixDI">youtu.be/lvLqJWOixDI</a></li>
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