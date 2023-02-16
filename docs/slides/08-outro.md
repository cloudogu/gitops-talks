<!-- .slide: style="color: #5b5a5a" class="floatRight"-->
<!-- .slide: data-background-image="images/question-mark-g8640ed2c2_1920.jpg" data-background-size="45%" data-background-color="white" data-background-position="left" -->
# The perfect GitOps process? <!-- .element: style="color: #5b5a5a; font-size: 130%"  class="floatRight" -->



## No such thing as the perfect GitOps process 

* Patterns exist - for different aspects, inconsistent naming
* Examples exist - different scopes (bootstrapping, apps only, etc.)
* Not very much examples on automation (e.g. CI)
* <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/> operator-agnostic choice for promotion <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> 

➡️ Use as inspiration, no silver bullet

Note:
* Patterns for Operator deployment, repos, promotion
* plain kustomize is operator-agnostic
* Silver bullet: each organization has different environment and requirements



<!-- .slide: data-background-image="images/trainings_16_9.png"  -->
<!-- .slide: data-background-color="#165D84"  -->
<!-- .slide: id="last" -->
<!-- .slide: style="font-size: 100%; " -->
<!-- .slide: style="text-align: center !important;"  -->

<span style="text-align: center !important;">
  <p>Johannes Schnatterer, Cloudogu GmbH</p>
  <p>☁ <a href="https://cloudogu.com/gitops/"  class="non-blue-link">cloudogu.com/gitops</a></p>
</span>
<br/>
<a href="https://cloudogu.github.io/gitops-talks"><img title="Slides" data-src="images/qr-slides.png" class="floatRight" width="15%" style="margin-right:250px"/></a>

<ul style="margin-left: 80px">
  <li><a href="https://cloudogu.com/gitops/" class="non-blue-link">GitOps Resources</a></li>
  <li><a href="https://community.cloudogu.com/c/gitops/23" class="non-blue-link">Community</a></li>
  <li><a href="https://cloudogu.com/de/schulungen/kubernetes/gitops-continuous-operations/" class="non-blue-link">Trainings</a></li> 
  <li><a href="https://cloudogu.com/de/consulting-gitops/" class="non-blue-link">Consulting</a></li>
</ul>

> 💪 Join my team: <a href="https://cloudogu.com/join/cloud-engineer" class="non-blue-link"> cloudogu.com/join/cloud-engineer</a> 

<a href='https://floss.social/@schnatterer' style="font-size:80%" class="non-blue-link"><i class='fab fa-mastodon'></i> @schnatterer@floss.social</a>
<span style="margin: 50px">
<a href='https://twitter.com/jschnatterer'  style="font-size:80%" class="non-blue-link"><i class='fab fa-twitter'></i> @jschnatterer</a>

Note:
articles, videos, projects, eBook



# Image sources
<!-- .slide: style="font-size: 80%; " -->

* coloured-parchment-paper background by brgfx on Freepik  
  https://www.freepik.com/free-vector/coloured-parchment-paper-designs_1078492.htm
* Basics:  
  https://pixabay.com/illustrations/blackboard-board-school-chalkboard-5639925/
* Example:  
  https://unsplash.com/photos/X2PWhiKDQww
* More examples   
  https://unsplash.com/photos/XZc4f2XZc84
* Perfect?  
  https://pixabay.com/illustrations/question-mark-question-response-1020165/

<style >  
a.non-blue-link:link {
    color: white
}
a.non-blue-link:visited {
    color: white
}
a.non-blue-link:hover {
 color: #004376;
}
</style>