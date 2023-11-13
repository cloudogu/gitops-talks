### Extended role of CI server
<!-- .slide: id="extended-ci" -->

<img data-src="images/gitops-with-app-repo-manual.svg" width="40%"/>

<div data-fragment-index="1" class="fragment" style="vertical-align: 5em !important; display: inline-block;height: 100%; margin-left: 5px; margin-right: 15px">➡</div>
<svg class="fragment" data-fragment-index="1" xmlns="http://www.w3.org/2000/svg"
     xmlns:xlink="http://www.w3.org/1999/xlink" contentScriptType="application/ecmascript" contentStyleType="text/css"
     version="1.1" viewBox="0 0 741 420" width="52%" zoomAndPan="magnify" id="svg936">
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
        <text fill="#FFF" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41" x="98.25"
              y="126.8325" id="text896">+infra
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
        <path data-fragment-index="2" class="fragment" d="M330.66 195.57c-4.42 38.03-10.62 91.53-14.87 128.18"
              fill="none" id="configRepo-backto-ciServer" style="stroke:#fff;stroke-width:1">
                <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="3.0s" repeatCount="indefinite"/>
        </path>
        <path data-fragment-index="2" class="fragment" fill="#FFF" style="stroke:#fff;stroke-width:1" id="polygon906"
              d="m331.24 190.54-5.0016 8.4844 4.4306-3.5171 3.5171 4.4306-2.9461-9.3979z">
                <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="3.0s" repeatCount="indefinite"/>
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="3.0s" repeatCount="indefinite"/>
        </path>
        <text data-fragment-index="2" class="fragment" fill="#FFF" font-family="sans-serif" font-size="13"
              lengthAdjust="spacing" textLength="31" x="326" y="260.0669" id="text908">push
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="3.0s" repeatCount="indefinite"/>
        </text>
        <text data-fragment-index="2" class="fragment" fill="#FFF" font-family="sans-serif" font-size="13"
              lengthAdjust="spacing" textLength="30" x="326.5" y="275.1997" id="text910">infra
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="3.0s" repeatCount="indefinite"/>
        </text>
        <text data-fragment-index="2" class="fragment" fill="#FFF" font-family="sans-serif" font-size="13"
              lengthAdjust="spacing" textLength="31" x="326" y="290.3325" id="text912">code
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="3.0s" repeatCount="indefinite"/>
        </text>
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
* Multiple app repos, one GitOps repo for infra
* Depending on technology more repos for configuring operator
* CI Server push has one disadvantage: More complexity in pipelines



Recommendation:

Use a plugin or library to avoid complexity in CI pipelines e.g. <br/>

<i class='fab fa-github'></i> <a href="https://github.com/cloudogu/gitops-build-lib">cloudogu/gitops-build-lib</a> <i class="fab fa-jenkins"></i></span>



# Demo
<!-- .slide: id="demo" -->

<img data-src="images/gitops-playground.svg" width="48%" />
<img data-src="images/gitops-playground-with-ces.svg" class="floatRight fragment" width="48%" />


<i class='fab fa-github'></i> [cloudogu/gitops-playground](https://github.com/cloudogu/gitops-playground)

Notes:
* Preparation:
    * Start k3s cluster. In playground repo: ` scripts/apply.sh --argocd`
    * Speedup build for presentation 8min -> 1min
        * Comment Build & test stages and `junit` line  
          http://localhost:9091/scm/repo/argocd/petclinic-plain/code/sourceext/edit/main/Jenkinsfile
        * Run build (warm up maven and docker cache). Note that "maven cache" for jenkins pods is cleared on host restart (/tmp)  
          http://localhost:9090/job/argocd-applications/job/petclinic-plain/
    * Open Tabs, log in increase zoom: SCMM, ArgoCD, Staging App
* Demo Ideas
    * Show Staging app, explain what we will change
    * Click on SCM-Manager
        * Explain repos:
            * gitops repo
            * app repos
        * Enter petclinic-plain/code -> Show on diagram on slide
            * First: Trigger build by editing welcome message
              http://localhost:9091/scm/repo/argocd/petclinic-plain/code/sourceext/edit/main/src/main/resources/messages/messages.properties
            * Show Jenkins Job starts
            * Back to SCMM: Explain Jenkinsfile especially gitops build lib
            * Briefly show k8s resources
    * Navigate to GitOps repo / code -> Show on diagram on slide
        * Explain folder structure
            * Show k8s resource -> Image Name
            * Show staging commit, click on app commit
    * Click on argo
        * Go to petclinic-plain-staging
        * Upgrade should have happened
    * Reload Staging App in other Tab
    * Back to argo, petclinic-plain-production
        * Click on service
        * Copy hostname and navigate there in browser
    * Back to SCMM:
        * Show pull request
            * Click on Link to original commit. Then back in browser.
            * Show diff -> new image
            * Merge PR
    * Back to Argo
        * Sync
        * Wait for success
        * Reload prod application
        * -> Change in welcome message shows
          eu.gcr.io/cloudogu-trainings/gitops-playground
        * /cloudogu-trainings/global/gitops-playground

Image sources:
* https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/cloudogu/k8s-gitops-playground/de7ba71/docs/gitops-playground.puml&fmt=svg  



<!-- .slide: data-background-image="images/title.svg"-->
<!-- .slide: id="last-2" -->

Johannes Schnatterer, Cloudogu GmbH
<br/><br/>


🌐 [cloudogu.com/gitops](https://cloudogu.com/gitops/)
* ℹ️ GitOps Resources (intro, articles, talks, videos, <i class='fab fa-github'></i> projects)
* 💬 Discussions
* 🧑‍🏫 [Trainings](https://cloudogu.com/de/schulungen/) / [Consulting](https://cloudogu.com/de/consulting/)
* 🔨 [Jobs](https://cloudogu.com/karriere/stellenangebote/)
  [<img data-src="images/qr-slides.png" class="floatRight" width="30%"/>](https://cloudogu.github.io/gitops-talks/)
