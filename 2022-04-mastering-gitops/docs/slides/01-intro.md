
<style>
/* Increase images on hover */
.zoom2x {
  transition: transform .2s; /* Animation */
}

.zoom2x:hover {
  transform: scale(2);
}
.zoom1-5x {
  transition: transform .2s; /* Animation */
}

.zoom1-5x:hover {
  transform: scale(1.5);
}

/* tooltips */
.tooltip-bellow .tooltip-bellow-text {
  visibility: hidden;
  background-color: rgba(0, 0, 0, 0.3);
  color: #fff;
  text-align: center;
  padding: 5px 5px;
  border-radius: 5px;

  /* Position of text */
  position: absolute;
  z-index: 1;
  top: 125%;
  left: 0;

  /* Fade in */
  opacity: 0;
  transition: opacity 1s;
}

.tooltip-bellow:hover .tooltip-bellow-text {
  visibility: visible;
  opacity: 1;
} 

.tooltip-right .tooltip-right-text {
  visibility: hidden;
  background-color: rgba(0, 0, 0, 0.3);
  color: #fff;
  text-align: center;
  padding: 5px 5px;
  border-radius: 5px;

  /* Position of text */
  position: absolute;
  z-index: 1;
  left: 100%;
  top: 0;

  /* Fade in */
  opacity: 0;
  transition: opacity 1s;
}

.tooltip-right:hover .tooltip-right-text {
  visibility: visible;
  opacity: 1;
} 

.tooltip-left .tooltip-left-text {
  visibility: hidden;
  background-color: rgba(0, 0, 0, 0.3);
  color: #fff;
  text-align: center;
  padding: 5px 5px;
  border-radius: 5px;

  /* Position of text */
  position: absolute;
  z-index: 1;
  right: 100%;
  top: 0;

  /* Fade in */
  opacity: 0;
  transition: opacity 1s;
}

.tooltip-left:hover .tooltip-left-text {
  visibility: visible;
  opacity: 1;
} 
</style>


<!-- .slide: style="text-align: center !important;"  -->
<!-- .slide: data-background-image="dist/theme/images/title-black.svg"  -->
<font size="100"><i class="fab fa-git-alt" style="color: #F05133"></i>&nbsp;<i class="fas fa-sync"></i></font>
<img data-src="images/k8s_logo.svg" width="5%;" />

<h1  class="title">
    <span class="title-accent">//</span> 
    GitOps - <br/>is this something for me?
</h1>


<font size="5">Johannes Schnatterer, Cloudogu GmbH</font>
<p class="printOnly">
    <a href='https://twitter.com/jschnatterer' class="social" target="_blank">
        <i class='fab fa-twitter'></i>
        @jschnatterer
    </a>
</p>

<div class="title-version">
Version: 202204051711-c0d5fc3
</div>

<p class="state-background" style="font-size: 0.9em">
    <a href="pdf/GitOps: It this something for me.pdf">
       <i class="far fa-file-pdf"></i>
</a></p>

<a class="state-background" href="https://cloudogu.github.io/gitops-talks/"><img data-src="images/qr-slides.png" width="15%"/></a>

<br/>
<br/>




## Agenda

- Basics
- Tools
- Challenges
- Maturity

Note:

- Definitions and boundaries
- Use Cases
- Tools
- challenges for dev and ops
