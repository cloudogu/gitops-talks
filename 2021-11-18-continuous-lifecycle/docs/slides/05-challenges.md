<!-- .slide: data-background-image="images/challenge.jpg"  -->
<!-- .slide: style="color: black;"  -->

<h1 style="color: black; text-align: right">What challenges arise with GitOps?</h1>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
Note:
Source: https://unsplash.com/photos/bJhT_8nbUA0



## More Infra ...

* GitOps Operator: One or more custom controllers
* Helm, Kustomize Controllers
* Operators for Supplementary tools (secrets, etc.)
* Monitoring/Alerting systems
* ...

Note:
* Most operators comprise multiple components. E.g. argo:  
  app controller, UI server, repo server, redis, dex
* Challenge: Using a template engine that is incompatible with GitOps



## ... higher cost

* Maintenance/patching (vendor lock-in)
* Resource consumption
* Learning curve
* Error handling
  * failing late and silently
  * monitoring/alerting required
  * reason might be difficult to pinpoint
  * operators cause alerts (OOM errors, on Git/API server down, etc.)

Note:
* Fail earlier using validation in CI, for example



## Day two questions

* POC is simple
* Operations in prod has its challenges
  * How to realize local dev env?
  * How to delete resources?
  * How to realize staging?
  * How to structure repos and how many of them?
  * Role of CI server?
  * ...

Note:
* Repos: One per app, including Infra, or a separate infra repo; Or both?
* Staging: One repo per stage, one branch per stage or folders?

More Challenges
* Authorization: Multiple tenants? How to implement authorization basing on repo/folder structure
* Git-sync via Polling/Webhook? Flux v1 did not have built-in webhook support
* Deploying resources with dependencies, e.g. CR and CRD



## Local development

* Option 1: Deploy GitOps operator and Git server on local cluster   
  ➡ complicated
* Option 2: Just carry on without GitOps.  
  Easy, when IaC remains in app repo [🧐](#extended-ci)



## How to delete resources?

* `garbage collection` (Flux) / `resource pruning` (ArgoCD)   
  disabled by default
* <i class="fas fa-thumbtack"></i> Enable from beginning ➡️ avoid manual interaction
* Unfortunately, still often unreliable / too defensive (?) 😒



### Implementing stages

<figure class="floatRight fragment"  data-fragment-index="2" style="width:55%">
<img style="border-radius: 5px;" data-src="images/tec-radar-gitops.png"/>
<figcaption style="font-size: 0.8em"><a href="https://www.thoughtworks.com/radar/techniques/gitops">🌐 thoughtworks.com/radar/techniques/gitops</a></figcaption>
</figure>

#### Idea 1: Staging Branches

* Develop ➡ Staging
* Main ➡ Production
  <br/><br/>
  <br/><br/>
  <br/>

<div class="fragment" data-fragment-index="1">
<span class="floatLeft" style="font-size: 4em;">❌</span>
<br/>
<p>Logic for branching complicated and error prone (merges)</p>
</div>

Note:
* Branching might lead to merge conflicts, develop and master lose sync
* One operator per namespace necessary (flux v1)



#### Idea 2: Staging folders
* On the same branch: One folder per stage
  ```text
  ├── production
  │   └── application
  │       └── deployment.yaml
  └── staging
      └── application
          └── deployment.yaml
  ```
* Process:
  * commit to staging folder only (<i class="fas fa-thumbtack"></i> protect prod),
  * create short lived branches and pull requests for prod
* Duplication is tedious, but can be automized
  <br/>

<div class="fragment" data-fragment-index="1">
<span class="floatLeft" style="font-size: 4em;">✅</span>
<br/>
<ul class="fragment" data-fragment-index="1">
    <li>Logic for branching simpler</li>
    <li>Supports arbitrary number of stages</li>
<ul/>
</div>
Note:
* production branch: Protect via SCM
* Stages as namespace: Explicit namespace in resource YAMLs



### Basic role of CI server

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     contentScriptType="application/ecmascript" contentStyleType="text/css" height="405px" preserveAspectRatio="none"
     style="width:599px;height:405px;background:#00000000;" version="1.1" viewBox="0 0 599 405" width="599px"
     zoomAndPan="magnify">
    <defs>
        <filter height="300%" id="fuq97gpm1ife7" width="300%" x="-1" y="-1">
            <feGaussianBlur result="blurOut" stdDeviation="2.0"/>
            <feColorMatrix in="blurOut" result="blurOut2" type="matrix"
                           values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .4 0"/>
            <feOffset dx="4.0" dy="4.0" in="blurOut2" result="blurOut3"/>
            <feBlend in="SourceGraphic" in2="blurOut3" mode="normal"/>
        </filter>
    </defs>
    <g><!--MD5=[81d16cdabbe89c1a39395d00a8354929]
cluster k8s-->
        <rect fill="#23A3DD" filter="url(#fuq97gpm1ife7)" height="216" style="stroke:#16688D;stroke-width:1.5;"
              width="223" x="304" y="7"/>
        <image height="48" width="48" x="391.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg=="
               y="9"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
              textLength="91" x="370" y="69.9951">K8s Cluster
        </text><!--MD5=[8fc3522a43f8c7199df5e09e5bb0188e]
entity user-->
        <ellipse cx="43" cy="126.5" fill="#23A3DD" filter="url(#fuq97gpm1ife7)" rx="16" ry="16"
                 style="stroke:#16688D;stroke-width:1.5;"/>
        <path d="M43,146.5 C47,146.5 50,146.5 54,142.5 C62,142.5 70,150.5 70,158.5 L70,162.5 C70,166.5 66,170.5 62,170.5 L24,170.5 C20,170.5 16,166.5 16,162.5 L16,158.5 C16,150.5 24,142.5 32,142.5 C36,146.5 39,146.5 43,146.5 "
              fill="#23A3DD" filter="url(#fuq97gpm1ife7)" style="stroke:#16688D;stroke-width:1.5;"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="74" x="6"
              y="184.9951">Developer
        </text><!--MD5=[2d94fc62261c263c33f9f9bac55ce66f]
entity gitRepo-->
        <rect fill="#23A3DD" filter="url(#fuq97gpm1ife7)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
              width="81" x="147.5" y="106.5"/>
        <image height="48" width="48" x="157.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
               y="116.5"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61" x="157.5"
              y="177.4951">Git Repo
        </text><!--MD5=[74390af0ae73874b51733bcf12dfbf23]
entity ciServer-->
        <rect fill="#23A3DD" filter="url(#fuq97gpm1ife7)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
              width="85" x="125.5" y="309"/>
        <image height="48" width="48" x="135.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
               y="319"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65" x="135.5"
              y="379.9951">CI Server
        </text><!--MD5=[0050c6625e3b42e2857ba4d8ed699679]
entity operator-->
        <rect fill="#23A3DD" filter="url(#fuq97gpm1ife7)" height="100.5938" style="stroke:#16688D;stroke-width:1.5;"
              width="82" x="421" y="98"/>
        <image height="48" width="48" x="431"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC"
               y="108"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="47" x="431"
              y="168.9951">GitOps
        </text>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="62" x="431"
              y="185.292">operator
        </text><!--MD5=[aff0e67a1692f4b0d96c087fa0872bfd]
entity registry-->
        <rect fill="#23A3DD" filter="url(#fuq97gpm1ife7)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
              width="107" x="278.5" y="309"/>
        <image height="48" width="48" x="288.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII="
               y="319"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="87" x="288.5"
              y="379.9951">OCI Registry
        </text><!--MD5=[fa80713961aad1a9227454d611548202]
link user to gitRepo-->
        <path d="M80.34,148.5 C99.29,148.5 122.47,148.5 142.47,148.5 " fill="none" id="user-to-gitRepo"
              style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <polygon fill="#FFFFFF" points="147.48,148.5,138.48,144.5,142.48,148.5,138.48,152.5,147.48,148.5"
                 style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="98.25"
              y="141.5669">push
        </text><!--MD5=[9b6a36c92dd00df2eedffcbb73bc0b2b]
reverse link gitRepo to ciServer-->
        <path d="M183.37,195.94 C179.96,230.12 175.36,276.17 172.09,309 " fill="none" id="gitRepo-backto-ciServer"
              style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <polygon fill="#FFFFFF" points="183.9,190.56,179.0194,199.1145,183.3997,195.5349,186.9793,199.9151,183.9,190.56"
                 style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="179"
              y="267.5669">pull
        </text><!--MD5=[6e71d5477669f604efc6fc864e405280]
link ciServer to registry-->
        <path d="M210.66,351 C229.73,351 252.53,351 273.19,351 " fill="none" id="ciServer-to-registry"
              style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <polygon fill="#FFFFFF" points="278.39,351,269.39,347,273.39,351,269.39,355,278.39,351"
                 style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="229"
              y="344.0669">push
        </text><!--MD5=[2af2e9f7a28b0a46167c4c3f580b1b31]
link k8s to registry-->
        <path d="M319.3863,223.5332 C319.4117,223.7882 319.4372,224.0433 319.4626,224.2987 C319.6665,226.342 319.8718,228.4004 320.0783,230.4701 C320.9041,238.7491 321.748,247.2105 322.5864,255.6166 C324.2631,272.4288 325.9175,289.02 327.36,303.49 "
              fill="none" id="k8s-to-registry" style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <polygon fill="#FFFFFF"
                 points="327.87,308.64,330.9493,299.2849,327.3697,303.6651,322.9894,300.0855,327.87,308.64"
                 style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="340"
              y="260.0669">pull
        </text>
        <text  class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="54" x="325"
              y="275.1997">+ watch
            <animate
                    attributeType="XML"
                    attributeName="fill-opacity"
                    values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                    dur="3.0s"
                    repeatCount="indefinite"/>
        </text><!--MD5=[0228b28100242e3bab3e0386537f9f49]
reverse link gitRepo to k8s-->
        <path d="M233.84,148.5 C250.34,148.5 268.4825,148.5 283.1312,148.5 C290.4556,148.5 296.9066,148.5 301.842,148.5 C302.459,148.5 303.0522,148.5 303.6205,148.5 C303.6916,148.5 303.7622,148.5 303.8325,148.5 "
              fill="none" id="gitRepo-backto-k8s" style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <polygon fill="#FFFFFF" points="228.6,148.5,237.6,152.5,233.6,148.5,237.6,144.5,228.6,148.5"
                 style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="258.07"
              y="164.5669">pull
        </text>
        <text class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="46" x="247.07"
              y="179.6997">+ push
            <animate
                    attributeType="XML"
                    attributeName="fill-opacity"
                    values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                    dur="3.0s"
                    repeatCount="indefinite"/>
        </text><!--MD5=[c37bcddf6a32e5819c6ccca45277b72d]
link k8s to k8s-->
        <path d="M501,148.17 C512.83,120 536.22,120.11 536.22,148.5 C536.22,176.89 512.83,177 501,148.83 " fill="none"
              id="k8s-to-k8s" style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <polygon fill="#FFFFFF" points="501,148.83,500.7967,158.6768,502.936,153.44,508.1727,155.5792,501,148.83"
                 style="stroke:#FFFFFF;stroke-width:1.0;"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="542.22"
              y="153.0669">deploy
        </text>
    </g>
</svg>


<div class="fragment"><i class="fas fa-thumbtack"></i> Optional: GitOps operator updates image version in Git 
<ul style="display: flow">
<li><img data-src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/><a href="https://github.com/argoproj-labs/argocd-image-updater">github.com/argoproj-labs/argocd-image-updater</a></li>
<li><img data-src="images/flux-icon.svg" style="vertical-align: middle;" width="5%;"/> <a href="https://fluxcd.io/docs/guides/image-update/">fluxcd.io/docs/guides/image-update</a></li>
</ul>
</div>

Note:
* Image updater writes back to Git!
* But: How to implement staging?



### Number of repositories: application vs GitOps repo

<img data-src="images/gitops-with-image.svg" width="40%"/>
<div data-fragment-index="2" class="fragment" style="vertical-align: 5em !important; display: inline-block;height: 100%; margin-left: 5px; margin-right: 15px">➡</div>

<img data-fragment-index="2" class="fragment"  data-src="images/gitops-with-app-repo-manual.svg" width="50%"/>

<div class="fragment" data-fragment-index="1" >
GitOps tools: Put infra in separate repo! See

<img data-src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/><a href="https://argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices/">argo-cd.readthedocs.io/en/release-2.0/user-guide/best_practices</a>
</div>

Note:
* Good practice: Keeping everything in app repo (code, docs, infra)
* GitOps Repo aka `config`, `infra`, `payload`, `environment`, ...
* App Repo aka Source Code Repo



**Disadvantages**
* Separated maintenance & versioning of app and infra code
* Review spans across multiple repos
* Local dev more difficult
* Static code analysis for IaC code not possible
  <br/><br/>

<div class="fragment" data-fragment-index="1">
<strong style="font-size: 300%">How to avoid those?</strong>
</div>




### Extended role of CI server
<!-- .slide: id="extended-ci" -->

<img data-src="images/gitops-with-app-repo-manual.svg" width="40%"/>
<div data-fragment-index="1" class="fragment" style="vertical-align: 5em !important; display: inline-block;height: 100%; margin-left: 5px; margin-right: 15px">➡</div>

<img data-fragment-index="1" class="fragment" data-src="images/gitops-with-app-repo-ci.svg" width="50%" />

Note:
* Multiple app repos, one GitOps repo for infra
* Depending on technology more repos for configuring operator
* CI Server push has one disadvantage: More complexity in pipelines



**Advantages**

* Single repo for development: higher efficiency
* Automated staging (e.g. PR creation, namespaces)
* Shift left: static code analysis + policy check on CI server,  
  e.g. yamlint, kubeval, helm lint, conftest
* Simplify review by adding info to PRs

<div class="fragment" style="margin-top: 20px">
<img style="border-radius: 5px" data-src="images/PR.png" width="65%"/>
</div>

<div class="fragment">
Disadvantage: Complexity in CI pipelines
</div>

<div class="fragment">
➡ Recommendation: Use a plugin or library, e.g. <br/>
<i class='fab fa-github'></i> <a href="https://github.com/cloudogu/gitops-build-lib">cloudogu/gitops-build-lib</a> <i class="fab fa-jenkins"></i>
</div>

Notes:
* Shift left (Fail Early) Validation - OPA Gatekeeper, Image Signature, etc
  * Plus: Layered approach -> "If we dont find it here, we're gonna find it there"
  * See also: Shifting Policy Enforcement to the Left using GitOps von Sandeep Parikh
* Enrich commit message: Author, original commit, issue ID and build number
* Disadvantages
  * Complexity in CI pipelines -> efforts for development
  * A lot can go wrong. Examples
    * Git Conflicts caused by concurrency
    * Danger of inconsistencies
* More critics:
  * "I'm really starting to get irritated with "GitOps." Why does CI have to be reinvented for k8s. It's a simple problem. On git commit run "kubectl" Every CI system today can do this, do we have to reinvent "git clone" with ArgoCD/Flux. I question that this is the right approach."   
    https://twitter.com/ibuildthecloud/status/1263131200484372485
  * "My gitops workflow might be turing complete"  
    https://twitter.com/ibuildthecloud/status/1311474999148961798
  * GitOps: The Bad and the Ugly - Ádám Sándor
    https://twitter.com/adamsand0r/status/1301814503672344577
    🌐 https://blog.container-solutions.com/gitops-limitations
  * Carlos Sanchez - GitOps: The Bad and the Ugly "Not designed for programmatic updates" totally agree, we had to do some ugly logic to work around git conflicts (more about it at https://buff.ly/3euUG29 )
    https://mobile.twitter.com/csanchez/status/1303371275168083968