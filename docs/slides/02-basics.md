<!-- .slide: data-background-image="images/questionmarks.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

<div style="border-radius: 5px; border: 4px solid; border-color: #777; background-color: rgba(255,255,255,0.7); width: 80%; margin: auto;">
  <br/>
  <h1 style="margin: 0 0 0 0; color: #5b5a5a" >GitOps basics</h1>
  <br/>
</div>


Note:
* Source: https://pixabay.com/illustrations/question-mark-important-sign-1872665/




**August 2017: GitOps - Operations by Pull Request**  


🌐 ~~[weave.works/blog/gitops-operations-by-pull-request](https://web.archive.org/web/20240202145840/https://www.weave.works/blog/gitops-operations-by-pull-request)~~ 

> Use developer tooling to drive operations  



<!-- .slide: style="font-size: 75%;"  -->

<span style="margin: 0">
"Classic" Continuous Delivery ("CIOps")<br/>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
contentScriptType="application/ecmascript" contentStyleType="text/css"
style="background:#00000000;" version="1.1" viewBox="0 0 626 232" width="45%" >
<defs>
<filter height="300%" id="f1ocnou988k1ak" width="300%" x="-1" y="-1">
<feGaussianBlur result="blurOut" stdDeviation="2.0"/>
<feColorMatrix in="blurOut" result="blurOut2" type="matrix"
values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .4 0"/>
<feOffset dx="4.0" dy="4.0" in="blurOut2" result="blurOut3"/>
<feBlend in="SourceGraphic" in2="blurOut3" mode="normal"/>
</filter>
</defs>
<g><!--MD5=[8fc3522a43f8c7199df5e09e5bb0188e]
entity user-->
<ellipse cx="43" cy="58.5659" fill="#23A3DD" filter="url(#f1ocnou988k1ak)" rx="16" ry="16"
style="stroke:#16688D;stroke-width:1.5;"/>
<path d="M43,78.5659 C47,78.5659 50,78.5659 54,74.5659 C62,74.5659 70,82.5659 70,90.5659 L70,94.5659 C70,98.5659 66,102.5659 62,102.5659 L24,102.5659 C20,102.5659 16,98.5659 16,94.5659 L16,90.5659 C16,82.5659 24,74.5659 32,74.5659 C36,78.5659 39,78.5659 43,78.5659 "
fill="#23A3DD" filter="url(#f1ocnou988k1ak)" style="stroke:#16688D;stroke-width:1.5;"/>
<text fill="#000000" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="74" x="6"
y="117.061">Developer
</text><!--MD5=[2d94fc62261c263c33f9f9bac55ce66f]
entity gitRepo-->
<rect fill="#23A3DD" filter="url(#f1ocnou988k1ak)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
width="81" x="147.5" y="38.5659"/>
<image height="48" width="48" x="157.5"
xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
y="48.5659"/>
<text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61" x="157.5"
y="109.561">Git Repo
</text><!--MD5=[74390af0ae73874b51733bcf12dfbf23]
entity ciServer-->
<rect fill="#23A3DD" filter="url(#f1ocnou988k1ak)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
width="85" x="289.5" y="38.5659"/>
<image height="48" width="48" x="299.5"
xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
y="48.5659"/>
<text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65" x="299.5"
y="109.561">CI Server
</text>
<path class="fragment" data-fragment-index="6" d="M240,183.5659 L240,223.8315 A0,0 0 0 0 240,223.8315 L424,223.8315 A0,0 0 0 0 424,223.8315 L424,193.5659 L414,183.5659 L336,183.5659 L332,122.8659 L328,183.5659 L240,183.5659 A0,0 0 0 0 240,183.5659 "
filter="url(#f1ocnou988k1ak)" style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
<path class="fragment" data-fragment-index="6" d="M414,183.5659 L414,193.5659 L424,193.5659 L414,183.5659 "
style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
<text class="fragment" data-fragment-index="6" fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="163" x="246"
y="200.6328">Continuous Integration +
</text>
<text class="fragment" data-fragment-index="6" fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="132" x="246"
y="215.7656">Continuous Delivery
</text><!--MD5=[4c2941fc370d514d93699c1b32a2ff4b]
entity k8s-->
<rect fill="#23A3DD" filter="url(#f1ocnou988k1ak)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
width="99" x="515.5" y="38.5659"/>
<image height="48" width="48" x="525.5"
xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg=="
y="48.5659"/>
<text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="79" x="525.5"
y="109.561">K8s Cluster
</text><!--MD5=[fa80713961aad1a9227454d611548202]
link user to gitRepo-->
<path d="M80.34,80.5659 C99.29,80.5659 122.47,80.5659 142.47,80.5659 " fill="none" id="user-to-gitRepo"
style="stroke:#000000;stroke-width:1.0;"/>
<polygon fill="#000000" points="147.48,80.5659,138.48,76.5659,142.48,80.5659,138.48,84.5659,147.48,80.5659"
style="stroke:#000000;stroke-width:1.0;"/>
<text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="98.25"
y="73.6328">push
</text><!--MD5=[9b6a36c92dd00df2eedffcbb73bc0b2b]
reverse link gitRepo to ciServer-->
<path d="M234.28,80.5659 C251.93,80.5659 271.95,80.5659 289.26,80.5659 " fill="none"
id="gitRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
<polygon fill="#000000" points="228.88,80.5659,237.88,84.5659,233.88,80.5659,237.88,76.5659,228.88,80.5659"
style="stroke:#000000;stroke-width:1.0;"/>
<text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="247"
y="73.6328">pull
</text><!--MD5=[b323151e64608fa388c3f18ea67cc40a]
link ciServer to k8s-->
<path d="M374.74,80.5659 C412.78,80.5659 468.67,80.5659 510.03,80.5659 " fill="none" id="ciServer-to-k8s"
style="stroke:#000000;stroke-width:1.0;"/>
<polygon fill="#000000" points="515.26,80.5659,506.26,76.5659,510.26,80.5659,506.26,84.5659,515.26,80.5659"
style="stroke:#000000;stroke-width:1.0;"/>
<text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="423"
y="69.6328">deploy
</text>                                                d="m 479,28.6987 v 10 h 10 l -10,-10"
<path class="fragment" data-fragment-index="2"      d="m 397,90.6987 v 40 h 92 v -30 l -10,-10 h -82"
filter="url(#f1ocnou988k1ak)" style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
<path class="fragment" data-fragment-index="2"       d="m 397,90.6987 v 40 h 92 v -30 l -10,-10 h -82"
style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
<text class="fragment" data-fragment-index="2" fill="#000000" font-family="sans-serif" font-size="16" lengthAdjust="spacing" textLength="85" x="403"
y="105">imperative,
</text>
<text class="fragment" data-fragment-index="4" fill="#000000" font-family="sans-serif" font-size="16" font-weight="bold" lengthAdjust="spacing"
textLength="45" x="403" y="120">once
</text>
</g>
</svg>
</span>

<div class="fragment" data-fragment-index="1" style="margin: 0">
GitOps
<br/>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     contentScriptType="application/ecmascript" contentStyleType="text/css" preserveAspectRatio="none"
     style="background:#00000000;" version="1.1" viewBox="0 0 701 390" width="50%">
    <defs>
        <filter height="300%" id="f28rmzu5vsmjt" width="300%" x="-1" y="-1">
            <feGaussianBlur result="blurOut" stdDeviation="2.0"/>
            <feColorMatrix in="blurOut" result="blurOut2" type="matrix"
                           values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .4 0"/>
            <feOffset dx="4.0" dy="4.0" in="blurOut2" result="blurOut3"/>
            <feBlend in="SourceGraphic" in2="blurOut3" mode="normal"/>
        </filter>
    </defs>
    <g><!--MD5=[81d16cdabbe89c1a39395d00a8354929]
cluster k8s-->
        <rect fill="#23A3DD" filter="url(#f28rmzu5vsmjt)" height="216" style="stroke:#16688D;stroke-width:1.5;"
              width="289" x="281" y="7"/>
        <image height="48" width="48" x="401.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg=="
               y="9"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
              textLength="91" x="380" y="69.9951">K8s Cluster
        </text><!--MD5=[8fc3522a43f8c7199df5e09e5bb0188e]
entity user-->
        <ellipse cx="43" cy="126.5" fill="#23A3DD" filter="url(#f28rmzu5vsmjt)" rx="16" ry="16"
                 style="stroke:#16688D;stroke-width:1.5;"/>
        <path d="M43,146.5 C47,146.5 50,146.5 54,142.5 C62,142.5 70,150.5 70,158.5 L70,162.5 C70,166.5 66,170.5 62,170.5 L24,170.5 C20,170.5 16,166.5 16,162.5 L16,158.5 C16,150.5 24,142.5 32,142.5 C36,146.5 39,146.5 43,146.5 "
              fill="#23A3DD" filter="url(#f28rmzu5vsmjt)" style="stroke:#16688D;stroke-width:1.5;"/>
        <text fill="#000000" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="74" x="6"
              y="184.9951">Developer
        </text><!--MD5=[2d94fc62261c263c33f9f9bac55ce66f]
entity gitRepo-->
        <rect fill="#23A3DD" filter="url(#f28rmzu5vsmjt)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
              width="81" x="147.5" y="106.5"/>
        <image height="48" width="48" x="157.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
               y="116.5"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61" x="157.5"
              y="177.4951">Git Repo
        </text><!--MD5=[74390af0ae73874b51733bcf12dfbf23]
entity ciServer-->
        <rect fill="#23A3DD" filter="url(#f28rmzu5vsmjt)" height="84.2969" style="stroke:#16688D;stroke-width:1.5;"
              width="85" x="107.5" y="294"/>
        <image height="48" width="48" x="117.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
               y="304"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65" x="117.5"
              y="364.9951">CI Server
        </text>
        <path class="fragment" data-fragment-index="7" d="M227.5,323.5 L227.5,332 L192.71,336 L227.5,340 L227.5,348.6328 A0,0 0 0 0 227.5,348.6328 L396.5,348.6328 A0,0 0 0 0 396.5,348.6328 L396.5,333.5 L386.5,323.5 L227.5,323.5 A0,0 0 0 0 227.5,323.5 "
              filter="url(#f28rmzu5vsmjt)" style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
        <path class="fragment" data-fragment-index="7" d="M386.5,323.5 L386.5,333.5 L396.5,333.5 L386.5,323.5 "
              style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
        <text class="fragment" data-fragment-index="7" fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="148" x="233.5"
              y="340.5669">Continuous Integration
        </text>
        <path class="fragment" data-fragment-index="8" d="M431.5,323.5 L431.5,348.6328 A0,0 0 0 0 431.5,348.6328 L584.5,348.6328 A0,0 0 0 0 584.5,348.6328 L584.5,333.5 L574.5,323.5 L511.81,323.5 L505.8,199.21 L503.81,323.5 L431.5,323.5 A0,0 0 0 0 431.5,323.5 "
              filter="url(#f28rmzu5vsmjt)" style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
        <path class="fragment" data-fragment-index="8" d="M574.5,323.5 L574.5,333.5 L584.5,333.5 L574.5,323.5 "
              style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
        <text class="fragment" data-fragment-index="8" fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="132" x="437.5"
              y="340.5669">Continuous Delivery
        </text><!--MD5=[0050c6625e3b42e2857ba4d8ed699679]
entity operator-->
        <rect fill="#23A3DD" filter="url(#f28rmzu5vsmjt)" height="100.5938" style="stroke:#16688D;stroke-width:1.5;"
              width="82" x="464" y="98"/>
        <image height="48" width="48" x="474"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC"
               y="108"/>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="47" x="474"
              y="168.9951">GitOps
        </text>
        <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="62" x="474"
              y="185.292">operator
        </text><!--MD5=[fa80713961aad1a9227454d611548202]
link user to gitRepo-->
        <path d="M80.34,148.5 C99.29,148.5 122.47,148.5 142.47,148.5 " fill="none" id="user-to-gitRepo"
              style="stroke:#000000;stroke-width:1.0;"/>
        <polygon fill="#000000" points="147.48,148.5,138.48,144.5,142.48,148.5,138.48,152.5,147.48,148.5"
                 style="stroke:#000000;stroke-width:1.0;"/>
        <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="98.25"
              y="141.5669">push
        </text><!--MD5=[9b6a36c92dd00df2eedffcbb73bc0b2b]
reverse link gitRepo to ciServer-->
        <path d="M178.51,195.81 C172.34,225.95 164.36,264.91 158.41,293.95 " fill="none" id="gitRepo-backto-ciServer"
              style="stroke:#000000;stroke-width:1.0;"/>
        <polygon fill="#000000"
                 points="179.57,190.67,173.8511,198.6884,178.5702,195.569,181.6896,200.2881,179.57,190.67"
                 style="stroke:#000000;stroke-width:1.0;"/>
        <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="168"
              y="260.0669">pull
        </text><!--MD5=[0228b28100242e3bab3e0386537f9f49]
reverse link gitRepo to k8s-->
        <path d="M234.06,148.5 C246.495,148.5 259.29,148.5 269.4,148.5 C271.9275,148.5 274.2872,148.5 276.4315,148.5 C277.5036,148.5 278.5219,148.5 279.4804,148.5 C279.9597,148.5 280.424,148.5 280.8726,148.5 "
              fill="none" id="gitRepo-backto-k8s" style="stroke:#000000;stroke-width:1.0;"/>
        <polygon fill="#000000" points="228.79,148.5,237.79,152.5,233.79,148.5,237.79,144.5,228.79,148.5"
                 style="stroke:#000000;stroke-width:1.0;"/>
        <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="246.57"
              y="141.5669">pull
        </text><!--MD5=[c37bcddf6a32e5819c6ccca45277b72d]
link k8s to k8s-->
        <path d="M544,147.88 C555.87,122 579.08,122.21 579.08,148.5 C579.08,174.79 555.87,175 544,149.12 " fill="none"
              id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
        <polygon fill="#000000" points="544,149.12,544.1163,158.9682,546.0845,153.6648,551.3879,155.633,544,149.12"
                 style="stroke:#000000;stroke-width:1.0;"/>
        <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="618.08"
              y="126.0669">deploy
        </text>
        <path class="fragment" data-fragment-index="3" d="M584.08,140.1328 L584.08,180.1328 L692.08,180.1328 L692.08,150.1328 L682.08,140.1328 L584.08,140.1328 "
              filter="url(#f28rmzu5vsmjt)" style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
        <path class="fragment" data-fragment-index="3" d="M682.08,140.1328 L682.08,150.1328 L692.08,150.1328 L682.08,140.1328 "
              style="stroke:#16688D;stroke-width:2.0;fill:none;"/>
        <text class="fragment" data-fragment-index="3" fill="#000000" font-family="sans-serif" font-size="16" lengthAdjust="spacing" textLength="87" x="595.08"
              y="157.1997">declarative,
        </text>
        <text class="fragment" data-fragment-index="5" fill="#000000" font-family="sans-serif" font-size="16" font-weight="bold" lengthAdjust="spacing"
              textLength="99" x="595.08" y="172.3325">continuously
        </text>
    </g>
</svg>
</div>

Note:
* Just one example: App Delivery
* Real world is more complex
* Other use case would be to deploy infra/cloud resources
* Could be done without K8s



## GitOps Principles


The desired state of a GitOps managed system must be: 

<a  href="https://opengitops.dev/" class="tooltip-bellow floatRight">
  <img data-src="images/opengitops.png" width="70%;" style="border-radius: 50%" class="zoom1-5x" />
  <span class="tooltip-bellow-text">OpenGitOps</span>
</a>

1. **Declarative**  
2. **Versioned and Immutable**  
3. **Pulled Automatically**  
4. **Continuously Reconciled**  


<i class='fab fa-github'></i> [github.com/open-gitops/documents/blob/main/PRINCIPLES.md](https://github.com/open-gitops/documents/blob/v1.0.0/PRINCIPLES.md)

Note:

1. A system managed by GitOps must have its desired state expressed declaratively.
2. Desired state is stored in a way that enforces immutability, versioning and retains a complete version history.  
   Not necessarily Git! [Flux with s3 bucket](https://www.cncf.io/blog/2021/08/12/august-2021-update/) 
3. Software agents automatically pull the desired state declarations from the source.
4. Software agents continuously observe actual system state and attempt to apply the desired state.
  Not only when a change is triggered, also when the actual state "drifts"



<!-- .slide: data-visibility="hidden" -->
## GitOps vs DevOps

* DevOps is about collaboration of formerly separate groups (mindset)
* GitOps focuses on ops (operating model)
* GitOps could be used with or without DevOps and vice versa
* Still, GitOps might be...

> The right way to do DevOps  
> [🗣](https://youtu.be/lvLqJWOixDI?t=1185) Alexis Richardson  

Note:

Some other opinions


<li> <a href="https://schlomo.schapiro.org/2021/04/the-gitops-journey.html">schlomo.schapiro.org/2021/04/the-gitops-journey.html</a></li>: 
<img data-src="images/gitops-map.svg" width="40%" />

See also:
<span style="font-size: 20px;"><ul>
<li><a href="https://youtu.be/lvLqJWOixDI">youtu.be/lvLqJWOixDI</a></li>
</ul></span>



## Advantages of GitOps

<img class="floatRight" data-src="images/gitops-simple.svg" width="35%"/>

<!-- With more time: More info on hands-off ops
<img class="floatRight" style="clear: right;" data-src="images/gitops-map.svg" width="30%" />
<div class="floatRight" style="clear: right; font-size: xx-small" >
https://schlomo.schapiro.org/2021/04/the-gitops-journey.html
</div>
-->

* No access to cluster from outside   
* No credentials on CI server  
* Forces declarative description
* Config is auditable
* Self-healing 
* Scalability - one repo many applications
* Innovations provided by tools  

Note:
* No access to cluster from outside   
  (might also solve firewall/zone issues)
* No credentials on CI server  
  (neither cluster access nor for apps)
* Innovations provided by tools  
  (UI, Preview Envs, GitOps via OCI-Registry)
* [One example of scalability to many clusters](https://www.youtube.com/watch?app=desktop&v=T7vDsswWbTQ&feature=youtu.be)
