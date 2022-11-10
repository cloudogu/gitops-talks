<!-- .slide: data-background-image="images/challenge.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.8); width: 60%; margin-left: auto;margin-right: 0;">
  <br/>
  <h1 style="margin: 0 0 0 0; color: #5b5a5a;" >Challenges with GitOps</h1>
  <br/>
</div>
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



## Downsides

* More infra necessary
* Steep Learning curve



### GitOps infra

* GitOps Operator comprises several applications;  
* Cause ops efforts: maintenance, alerts
<br/><br/>

<div class="container">
    <div class="column">
        <figure>
            <img data-src="images/argocd_architecture.png" width="67%" style="border-radius: 1%"/>
            <figcaption style="font-size: 30%">🌐 <a href="https://argo-cd.readthedocs.io/en/stable/assets/argocd_architecture.png">argo-cd.readthedocs.io/en/stable/assets/argocd_architecture.png</a></figcaption>
        </figure>
    </div>
    <div class="column">
        <figure>
            <img data-src="images/gitops-toolkit.png" style="border-radius: 1%"/>
            <figcaption style="font-size: 30%">🌐 <a href="https://fluxcd.io/img/diagrams/gitops-toolkit.png">fluxcd.io/img/diagrams/gitops-toolkit.png</a></figcaption>
        </figure>
    </div>
</div>

Note:
* Source Controller, UI Server (ArgoCD/Weave GitOps), Notification Controller,
  Image Updater, ArgoCD: ApplicationSet Controller, Redis, Dex (AuthN), etc.
* operators cause alerts (OOM errors, on Git/API server down, etc.)



### Learning curve

* New concepts and tools for developers and platform teams
* Adapt deployment process
* Migrate applications
* Adapt error handling and alerting
  * avoid failing late and silently
  * accustom to new notification mechanism
  * still, reason might be difficult to pinpoint

Note:
* Migrate applications: CI/CD, if applicable adapt apps, e.g. Helm deployment, secrets mgmt
* Challenge: Using a template engine that is incompatible with GitOps



## Day two questions

* How to realize local dev env?
* How to delete resources?
* How to structure repos and folders?
* How to realize staging?
* Role of CI server?
* ...



## Local development

* Option 1: Deploy GitOps operator and Git server on local cluster   
  ➡ complicated
* Option 2: Just carry on without GitOps.  



## How to delete resources?

* `garbage collection` (Flux) / `resource pruning` (ArgoCD)   
  disabled by default
* 💡 Enable from beginning ➡️ avoid manual interaction
* Unfortunately, still often unreliable / too defensive (?) 😒



## Repo and folder structure

* No standard for structures (intentionally) ➡️ Conway's law
* Repo patterns: Monorepo vs Polyrepo (per app, team, stage) <i class="fas fa-blender"></i>
* Within repo: folder/~~branch~~ structure for stage, team, app
* More options:   
  * Topology: GitOps controller (s) ↔ Cluster(s) / Namespaces
  * GitOps controller-specific config


Note: 
* Conway's law applies ->️ structure will be dictated by organizational boundaries
* Repo Patterns: Mix and match is possible
* GitOps controller-specifics: ArgoCD has Projects and applications and the app of app pattern



### 🤯 GitOps Chasm

<div class="container">

<div class="column">
<img data-src="images/k8s_logo.svg" width="9%" />&nbsp;<img data-src="images/argo-icon.svg" width="7%;" /> <strong><i class="fab fa-git-alt" style="color: #F05133"></i> Infra</strong>
  <ul>
    <li>repos</li>
    <li>folders</li>
    <li>branches</li>
    <li>clusters</li>
    <li>namespaces</li>
    <li>controller instances</li>
    <li>controller-specific config</li>
  </ul>
</div>

<div class="column container" style="justify-content: center;align-content: center;flex-flow: wrap;" >
  <div>↔️</div>
  <span style="width: 100%;"></span>

  <div><strong>Mapping?</strong></div>
  <span style="width: 100%;"></span>

  <div>🤔</div>
  <span style="width: 100%;"></span>
</div>

<div class="column">
🌍 <strong>Real-world</strong><br/>
<ul>
  <li>company/departments</li>
  <li>teams</li>
  <li>projects</li>
  <li>applications</li>
  <li>microservices</li>
  <li>stages/environments</li>
  <li>customers</li>
  <li>tenants</li>
  <li>etc.</li>
</ul>
</div>

</div>
<br/>

Note:
Transition to next slide:
* We'll shed some light onto theses things in the following
* 



### App vs GitOps repo

<div class="container">
<div class="column">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  preserveAspectRatio="none" 
    viewBox="0 0 731 527" width="130%">
        <defs>
            <filter height="300%" id="a" width="300%" x="-1" y="-1">
                <feGaussianBlur result="blurOut" stdDeviation="2"/>
                <feColorMatrix in="blurOut" result="blurOut2" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .4 0"/>
                <feOffset dx="4" dy="4" in="blurOut2" result="blurOut3"/>
                <feBlend in="SourceGraphic" in2="blurOut3"/>
            </filter>
        </defs>
        <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M436 77.566h223v283H436z"/>
        <image height="48" width="48" x="523.5" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg==" y="79.566"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" font-weight="bold" textLength="91" x="502" y="140.561">K8s Cluster</text>
        <circle cx="43" cy="264.066" fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" r="16"/>
        <path d="M43 284.066c4 0 7 0 11-4 8 0 16 8 16 16v4c0 4-4 8-8 8H24c-4 0-8-4-8-8v-4c0-8 8-16 16-16 4 4 7 4 11 4" fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="74" x="6" y="322.561">Developer</text>
        <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M147.5 244.066h89v84.297h-89z"/>
        <image height="48" width="48" x="157.5" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg==" y="254.066"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="69" x="157.5" y="315.061">App Repo</text>
        <g class="fragment" data-fragment-index="2">
            <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M272 244.066h108v84.297H272z"/>
            <image height="48" width="48" x="282" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg==" y="254.066"/>
            <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="88" x="282" y="315.061">GitOps Repo</text>
            <path d="M385.29 286.066h50.591" fill="none" style="stroke:#fff;stroke-width:1"/>
            <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m380.16 286.066 9.011 3.974-4.011-3.988 3.988-4.012-8.988 4.026z"/>
            <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="399.82" y="302.133">pull</text>
        </g>
        <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M230.5 431.566h85v84.297h-85z"/>
        <image height="48" width="48" x="240.5" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII=" y="441.566"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="65" x="240.5" y="502.561">CI Server</text>
        <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M553 235.566h82V336.16h-82z"/>
        <image height="48" width="48" x="563" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC" y="245.566"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="47" x="563" y="306.561">GitOps</text>
        <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="62" x="563" y="322.858">operator</text>
        <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M411.5 431.566h107v84.297h-107z"/>
        <image height="48" width="48" x="421.5" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII=" y="441.566"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="87" x="421.5" y="502.561">OCI Registry</text>
        <path d="M80.21 286.066h62.01" fill="none" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m147.3 286.066-9-4 4 4-4 4 9-4z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="98.25" y="249.133">push</text>
        <g class="fragment" data-fragment-index="3">
            <text font-weight="bolder"  fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="101.75" y="264.266">app</text>
            <text font-weight="bolder"  fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="98.25" y="279.398">code</text>
            <path d="M46.21 246.166c6.44-50.48 25.79-135.54 83.79-174.6 45.71-30.79 79.26-32.18 124 0 52.72 37.92 67.38 116.32 71.14 167.1" fill="none" style="stroke:#fff;stroke-width:1"/>
            <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m325.49 243.796 3.373-9.253-3.716 4.265-4.265-3.716 4.608 8.704z"/>
            <text font-weight="bolder" fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="160.5" y="19.633">push</text>
            <text font-weight="bolder" fill="#FFF" font-family="sans-serif" font-size="13" textLength="30" x="161" y="34.766">infra</text>
            <text font-weight="bolder" fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="160.5" y="49.898">code</text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
            dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
            dur="2.0s" repeatCount="indefinite"/>
        </g>
        <path d="M212.06 332.996c13.18 30.2 30.28 69.36 43.01 98.52" fill="none" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m209.98 328.236-.069 9.849 2.068-5.266 5.265 2.067-7.264-6.65z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="241" y="397.633">pull</text>
        <path d="M315.61 473.566h90.54" fill="none" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m411.16 473.566-9-4 4 4-4 4 9-4z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="348" y="466.633">push</text>
        <path d="m452.361 360.926.159 1.405.32 2.82.641 5.674 1.293 11.42 4.956 43.81" fill="none" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m460.31 431.156 2.973-9.39-3.53 4.421-4.42-3.53 4.977 8.499z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="457" y="397.633">pull</text>
        <path d="M633 285.446c11.87-25.88 35.08-25.67 35.08.62 0 26.29-23.21 26.5-35.08.62" fill="none" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m633 286.686.116 9.848 1.969-5.303 5.303 1.968-7.388-6.513z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="44" x="674.08" y="290.633">deploy</text>
    </svg>
</div>
<div class="column fragment" style="font-size: 900%; text-align: right" data-fragment-index="4">
🤔
</div>
</div>

<div class="fragment" data-fragment-index="2" >
GitOps tools: Put infra in separate repo! See

<img data-src="images/argo-icon.svg" style="vertical-align: middle;" width="5%;"/><a href="https://argo-cd.readthedocs.io/en/release-2.5/user-guide/best_practices/">argo-cd.readthedocs.io/en/release-2.5/user-guide/best_practices</a>
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



### Using CI-Server with GitOps part 1
<!-- src: gitops-with-app-repo-ci.puml -->
<svg xmlns="http://www.w3.org/2000/svg"
     xmlns:xlink="http://www.w3.org/1999/xlink" contentScriptType="application/ecmascript" contentStyleType="text/css"
     version="1.1" viewBox="0 0 741 420">
    <defs id="defs843">
        <filter height="300%" id="f1mqeku6gmnp3v" width="300%" x="-1" y="-1">
            <feGaussianBlur result="blurOut" stdDeviation="2" id="feGaussianBlur834"/>
            <feColorMatrix in="blurOut" result="blurOut2" type="matrix"
                           values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .4 0" id="feColorMatrix836"/>
            <feOffset dx="4" dy="4" in="blurOut2" result="blurOut3" id="feOffset838"/>
            <feBlend in="SourceGraphic" in2="blurOut3" mode="normal" id="feBlend840"/>
        </filter>
    </defs>
    <g id="g934">
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect845"
              d="M446 7h223v216H446z"/>
        <image height="48" width="48" x="533.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg=="
               y="9" id="image847"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
              textLength="91" x="512" y="69.9951" id="text849">K8s Cluster
        </text>
        <circle cx="43" cy="126.5" fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5"
                id="ellipse851" r="16"/>
        <path d="M43 146.5c4 0 7 0 11-4 8 0 16 8 16 16v4c0 4-4 8-8 8H24c-4 0-8-4-8-8v-4c0-8 8-16 16-16 4 4 7 4 11 4"
              fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="path853"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="74" x="6"
              y="184.9951" id="text855">Developer
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect857"
              d="M157.5 106.5h89v84.2969h-89z"/>
        <image height="48" width="48" x="167.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
               y="116.5" id="image859"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="69" x="167.5"
              y="177.4951" id="text861">App Repo
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect863"
              d="M282 106.5h108v84.2969H282z"/>
        <image height="48" width="48" x="292"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
               y="116.5" id="image865"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="88" x="292"
              y="177.4951" id="text867">GitOps Repo
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect869"
              d="M268.5 324h85v84.2969h-85z"/>
        <image height="48" width="48" x="278.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
               y="334" id="image871"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65" x="278.5"
              y="394.9951" id="text873">CI Server
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect875"
              d="M563 98h82v100.5938h-82z"/>
        <image height="48" width="48" x="573"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC"
               y="108" id="image877"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="47" x="573"
              y="168.9951" id="text879">GitOps
        </text>
        <text fill="#FFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="62" x="573"
              y="185.292" id="text881">operator
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect883"
              d="M421.5 324h107v84.2969h-107z"/>
        <image height="48" width="48" x="431.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII="
               y="334" id="image885"/>
        <text fill="#FFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="87" x="431.5"
              y="394.9951" id="text887">OCI Registry
        </text>
        <path d="M80.28 148.5h71.84" fill="none" id="user-to-appRepo" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon890" d="m157.32 148.5-9-4 4 4-4 4 9-4z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="103.25"
              y="96.5669" id="text892">push
        </text>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="106.75"
              y="111.6997" id="text894">app
        </text>
        <text class="fragment" data-fragment-index="1" font-weight="bolder"  fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41" x="98.25"
              y="126.8325" id="text896">+infra
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
            dur="2.0s" repeatCount="indefinite"/>
        </text>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="103.25"
              y="141.9653" id="text898">code
        </text>
        <path d="M225.07 195.1c19.25 38.07 46.45 91.85 65.06 128.65" fill="none" id="appRepo-backto-ciServer"
              style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon901"
              d="m222.76 190.54.4849 9.8369 1.7683-5.3734 5.3733 1.7684-7.6265-6.2319z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="274"
              y="275.0669" id="text903">pull
        </text>
        <g class="fragment" data-fragment-index="2">
            <path d="M330.66 195.57c-4.42 38.03-10.62 91.53-14.87 128.18"
                  fill="none" id="configRepo-backto-ciServer" style="stroke:#fff;stroke-width:1">
            </path>
            <path font-weight="bolder"  fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon906"
                  d="m331.24 190.54-5.0016 8.4844 4.4306-3.5171 3.5171 4.4306-2.9461-9.3979z">
            </path>
            <text font-weight="bolder"  fill="#FFF" font-family="sans-serif" font-size="13"
                  lengthAdjust="spacing" textLength="31" x="326" y="260.0669" id="text908">push
            </text>
            <text font-weight="bolder"  fill="#FFF" font-family="sans-serif" font-size="13"
                  lengthAdjust="spacing" textLength="30" x="326.5" y="275.1997" id="text910">infra
            </text>
            <text font-weight="bolder"  fill="#FFF" font-family="sans-serif" font-size="13"
                  lengthAdjust="spacing" textLength="31" x="326" y="290.3325" id="text912">code
                    <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
            dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
            dur="2.0s" repeatCount="indefinite"/>
        </g>
        <path d="M353.66 366h62.53" fill="none" id="ciServer-to-registry" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon915" d="m421.39 366-9-4 4 4-4 4 9-4z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="372"
              y="359.0669" id="text917">push
        </text>
        <path d="M461.1867 223.2268c.0269.2753.0537.5509.0806.8268.0538.5519.1077 1.1051.1617 1.6595.4321 4.435.8718 8.9483 1.3159 13.5058.8881 9.115 1.7935 18.4073 2.6896 27.6056 1.7924 18.3968 3.548 36.418 5.0555 51.8955"
              fill="none" id="k8s-to-registry" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon920"
              d="m470.99 323.84 3.1085-9.3454-3.5933 4.369-4.369-3.5933 4.8538 8.5697z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="468"
              y="275.0669" id="text922">pull
        </text>
        <path d="M395.29 148.5H445.8809" fill="none" id="configRepo-backto-k8s" style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon925"
              d="m390.16 148.5 9.0114 3.9743-4.0114-3.9886 3.9885-4.0114L390.16 148.5z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="409.82"
              y="164.5669" id="text927">pull
        </text>
        <path d="M643 148.14c11.83-30.14 35.22-30.02 35.22.36s-23.39 30.5-35.22.36" fill="none" id="k8s-to-k8s"
              style="stroke:#fff;stroke-width:1"/>
        <path fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon930"
              d="m643 148.86-.4352 9.8392 2.262-5.1849 5.1849 2.262L643 148.86z"/>
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="684.22"
              y="153.0669" id="text932">deploy
        </text>
    </g>
</svg>

Note:
* ONE Option is using CI server (other would be pointing/linking to App repo from GitOps repo, e.g via ArgoCD app or GitRepo CR in flux)
* Multiple app repos, one GitOps repo for infra
* Depending on technology more repos for configuring operator
* CI Server push has one disadvantage: More complexity in pipelines



**Advantages**

* Single repo for development: higher efficiency
* Shift left: static code analysis + policy check on CI server,  
  e.g. yamlint, kubeval, helm lint, conftest
* Automated staging (e.g. PR creation, namespaces)
* Simplify review by adding info to PRs

<div class="fragment" style="margin-top: 20px">
<img style="border-radius: 5px" data-src="images/PR.png" width="65%"/>
</div>



**Disadvantages**

* Complexity in CI pipelines
<div class="fragment" >
➡ Recommendation: Use a plugin or library<span class="fragment">, e.g. <br/>
<i class='fab fa-github'></i> <a href="https://github.com/cloudogu/gitops-build-lib">cloudogu/gitops-build-lib</a> <i class="fab fa-jenkins"></i></span>
</div>
* Redundant code <!-- .element: class="fragment"  -->

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



### Alternative: Refer to app repo

<!-- src: gitops-with-app-repo-pointer.puml-->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
     preserveAspectRatio="none" viewBox="0 0 787 491" width="90%">
    <rect fill="#23A3DD" height="283" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:1" width="223" x="492"
          y="47.566"/>
    <image height="48" width="48" x="579.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg=="
           y="49.566"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" font-weight="bold" textLength="91" x="558" y="110.561">K8s
        Cluster
    </text>
    <circle cx="43" cy="234.066" fill="#23A3DD" style="stroke:#16688d;stroke-width:1.5" r="16"/>
    <path d="M43 254.066c4 0 7 0 11-4 8 0 16 8 16 16v4c0 4-4 8-8 8H24c-4 0-8-4-8-8v-4c0-8 8-16 16-16 4 4 7 4 11 4"
          fill="#23A3DD" style="stroke:#16688d;stroke-width:1.5"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="74" x="6" y="292.561">Developer</text>
    <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="89" x="157.5"
          y="214.066"/>
    <image height="48" width="48" x="167.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
           y="224.066"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="69" x="167.5" y="285.061">App Repo</text>
    <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="108" x="331"
          y="214.066"/>
    <image height="48" width="48" x="341"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
           y="224.066"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="88" x="341" y="285.061">GitOps Repo</text>
    <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="85" x="277.5"
          y="401.566"/>
    <image height="48" width="48" x="287.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
           y="411.566"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="65" x="287.5" y="472.561">CI Server</text>
    <rect fill="#23A3DD" height="100.594" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="82" x="609"
          y="205.566"/>
    <image height="48" width="48" x="619"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC"
           y="215.566"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="47" x="619" y="276.561">GitOps</text>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="62" x="619" y="292.858">operator</text>
    <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="107" x="470.5"
          y="401.566"/>
    <image height="48" width="48" x="480.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII="
           y="411.566"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="87" x="480.5" y="472.561">OCI Registry</text>
    <path d="M80.28 256.066h71.84" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#fff" style="stroke:#fff;stroke-width:1" d="m157.32 256.066-9-4 4 4-4 4 9-4z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="103.25" y="204.133">push</text>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="106.75" y="219.266">app</text>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="41" x="98.25" y="234.398">+infra</text>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="103.25" y="249.531">code</text>
    <g class="fragment" data-fragment-index="1">
        <path d="M251.91 256.066h79" fill="none" style="stroke:#fff;stroke-width:1"></path>
        <path fill="#fff" style="stroke:#fff;stroke-width:1" d="m246.77 256.066 9 4-4-4 4-4-9 4z"></path>
        <text font-weight="bolder" fill="#FFF" font-family="sans-serif" font-size="13" textLength="48" x="264.75" y="249.133">refer to</text>
        <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
        dur="2.0s" repeatCount="indefinite"/>
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
        dur="2.0s" repeatCount="indefinite"/>
    </g>
    <path d="M230.98 302.626c19.24 30.25 44.28 69.61 62.91 98.89" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#fff" style="stroke:#fff;stroke-width:1"
          d="m228.19 298.236 1.464 9.74 1.223-5.524 5.523 1.224-8.21-5.44z"/>
    <text font-family="sans-serif" font-size="13" textLength="24" x="273" y="367.633" fill="#FFF">pull</text>
    <path d="M362.77 443.566h102.42" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#fff" style="stroke:#fff;stroke-width:1" d="m470.38 443.566-9-4 4 4-4 4 9-4z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="401" y="436.633">push</text>
    <path d="m509.555 330.926.182 1.405.365 2.82.734 5.674a3043138.422 3043138.422 0 0 1 7.144 55.23" fill="none"
          style="stroke:#fff;stroke-width:1"/>
    <path fill="#fff" style="stroke:#fff;stroke-width:1"
          d="m518.64 401.156 2.81-9.44-3.453 4.481-4.481-3.452 5.124 8.41z"/>
    <text font-family="sans-serif" font-size="13" textLength="24" x="515" y="367.633" fill="#FFF">pull</text>
    <path d="M444.21 256.066H491.876" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m439.13 256.066 9 4-4-4 4-4-9 4z"/>
    <text font-family="sans-serif" font-size="13" textLength="24" x="457.32" y="272.133" fill="#FFF">pull</text>
    <g class="fragment" data-fragment-index="2">
        <path d="M215.03 209.116c15.3-45.09 45.49-110.63 97.97-140.55 54.83-31.26 92.44-39.07 142 0 16.3 12.85 27.344 30.474 34.723 49.805a163.077 163.077 0 0 1 1.98 5.48"
              fill="none" style="stroke:#fff;stroke-width:1"></path>
        <path fill="#fff" style="stroke:#fff;stroke-width:1"
              d="m213.42 213.966 6.628-7.285-5.055 2.539-2.54-5.055.967 9.8z"/>
        <text font-weight="bolder" font-family="sans-serif" font-size="13" textLength="24" x="425" y="19.633" fill="#FFF">pull</text>
        <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
        dur="2.0s" repeatCount="indefinite"/>
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
        dur="2.0s" repeatCount="indefinite"/>
    </g>
    <path d="M689 255.446c11.87-25.88 35.08-25.67 35.08.62 0 26.29-23.21 26.5-35.08.62" fill="none"
          style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1"
          d="m689 256.686.116 9.848 1.969-5.303 5.303 1.968-7.388-6.513z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="44" x="730.08" y="260.633">deploy</text>
</text>
</svg>

Note:
* There's always a downside. If avoiding redundancy is important, this would be an alternative
* Reference ("pointer") could be realized using ArgoCD's application CR or Flux GitRepository CR
* However, in the end the GitOps repo wouldn't include much actual code


# TODO

* Stage Übergänge als separates Thema. 
  Wie kommt neue Image Version ins Manifest?
  * Manuell
  * Image Updater
  * Renovate Bot
  * CI Server
* Our Example



### As example: Our approach

* `Trunk-based monorepo, folder per team, stage, app` pattern  
  ```text
    ├── a-team
    │   ├── staging
    │   │   └── application
    │   │       └── deployment.yaml
    │   └── production
    │       └── application
    │           └── deployment.yaml
    └── team-B
  ```
* Promote between stages:
  * commit to staging folder only (💡 protect `production`),
  * create short lived branches and pull requests for prod
* Duplication is tedious, but can be automized

Note:
* Might or might not be the best choice for you
* production branch: Protect via SCM
* Advantage: All infra in one place -> less complexity, standardized process
* Stages as namespace: Explicit namespace in resource YAMLs



## Basic role of CI server

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="405"
     preserveAspectRatio="none" style="width:599px;height:405px;background:#00000000" width="599">
    <defs>
        <filter height="300%" id="a" width="300%" x="-1" y="-1">
            <feGaussianBlur result="blurOut" stdDeviation="2"/>
            <feColorMatrix in="blurOut" result="blurOut2" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .4 0"/>
            <feOffset dx="4" dy="4" in="blurOut2" result="blurOut3"/>
            <feBlend in="SourceGraphic" in2="blurOut3"/>
        </filter>
    </defs>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M304 7h223v216H304z"/>
    <image height="48" width="48" x="391.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg=="
           y="9"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" font-weight="bold" textLength="91" x="370" y="69.995">K8s
        Cluster
    </text>
    <circle cx="43" cy="126.5" fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" r="16"/>
    <path d="M43 146.5c4 0 7 0 11-4 8 0 16 8 16 16v4c0 4-4 8-8 8H24c-4 0-8-4-8-8v-4c0-8 8-16 16-16 4 4 7 4 11 4"
          fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="74" x="6" y="184.995">Developer
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M147.5 106.5h81v84.297h-81z"/>
    <image height="48" width="48" x="157.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
           y="116.5"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="61" x="157.5" y="177.495">Git Repo
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M125.5 309h85v84.297h-85z"/>
    <image height="48" width="48" x="135.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
           y="319"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="65" x="135.5" y="379.995">CI Server
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M421 98h82v100.594h-82z"/>
    <image height="48" width="48" x="431"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC"
           y="108"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="47" x="431" y="168.995">GitOps
    </text>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="62" x="431" y="185.292">operator
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M278.5 309h107v84.297h-107z"/>
    <image height="48" width="48" x="288.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII="
           y="319"/>
    <text fill="#FFF" font-family="sans-serif" font-size="14" textLength="87" x="288.5" y="379.995">OCI Registry
    </text>
    <path d="M80.34 148.5h62.13" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m147.48 148.5-9-4 4 4-4 4 9-4z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="98.25" y="141.567">push
    </text>
    <path d="M183.37 195.94c-3.41 34.18-8.01 80.23-11.28 113.06" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m183.9 190.56-4.88 8.554 4.38-3.58 3.58 4.381-3.08-9.355z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="179" y="267.567">pull
    </text>
    <path d="M210.66 351h62.53" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m278.39 351-9-4 4 4-4 4 9-4z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="31" x="229" y="344.067">push
    </text>
    <path d="m319.386 223.533.077.766.615 6.171 2.508 25.147 4.774 47.873" fill="none"
          style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m327.87 308.64 3.08-9.355-3.58 4.38-4.38-3.58 4.88 8.555z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="340" y="260.067">pull
    </text>
    <text class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FFF" font-family="sans-serif"
          font-size="13" textLength="54" x="325" y="275.2">+ watch
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="2.0s" repeatCount="indefinite"/>
    </text>
    <path d="M233.84 148.5h69.993" fill="none" style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m228.6 148.5 9 4-4-4 4-4-9 4z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="24" x="258.07" y="164.567">pull
    </text>
    <text class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FFF" font-family="sans-serif"
          font-size="13" textLength="46" x="247.07" y="179.7">+ push
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="2.0s" repeatCount="indefinite"/>
    </text>
    <path d="M501 148.17c11.83-28.17 35.22-28.06 35.22.33 0 28.39-23.39 28.5-35.22.33" fill="none"
          style="stroke:#fff;stroke-width:1"/>
    <path fill="#FFF" style="stroke:#fff;stroke-width:1" d="m501 148.83-.203 9.847 2.139-5.237 5.237 2.14-7.173-6.75z"/>
    <text fill="#FFF" font-family="sans-serif" font-size="13" textLength="44" x="542.22" y="153.067">deploy
    </text>
</svg>

<div class="fragment">GitOps operator can update image version in Git  
<ul style="display: flow">
<li><img data-src="images/argo-icon.svg" style="vertical-align: middle;" width="3.5%;"/> <a href="https://github.com/argoproj-labs/argocd-image-updater">github.com/argoproj-labs/argocd-image-updater</a></li>
<li><img data-src="images/flux-icon.svg" style="vertical-align: middle;" width="4%;"/> <a href="https://fluxcd.io/docs/guides/image-update/">fluxcd.io/docs/guides/image-update</a></li>
</ul>
</div>

Note:
* Image updater writes back to Git!
* Flux also supports a simple staging mechanism:
> For production, you may choose to manually approve app version bumps by configuring Flux to push the changes to a new branch from which you can create a pull request.
https://fluxcd.io/flux/guides/repository-structure/
* For more complex use cases we might use CI server to automate