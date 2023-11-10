## Categories of patterns


* [**Operator deployment**](#deployment-patterns): GitOps operators ↔ Clusters/Namespaces
* [**Repository**](#repo-patterns): How many repos?
* [**Promotion**](#release-promotion): How to model environments/stages?
* [**Wiring**](#wiring): Bootstrapping operator, linking repos and folders 

Note: 
* AKA strategies, models, approaches, best practices
* Patterns in different areas
* Chronologically
* Wiring: very GitOps operator-specific config



<!-- .slide: id="deployment-patterns" -->

## GitOps Operator deployment patterns
How many GitOps operators per cluster?

<div class="container">
<div class="column fragment" >
<p><strong>Instance per Cluster</strong></p>
<img src="https://raw.githubusercontent.com/cloudogu/gitops-patterns/8ed7188c/src/svg/deployment-instance-per-cluster.svg" width="70%" />
</div>
<div class="column fragment">
<p><strong>Hub and Spoke</strong></p>
<img src="https://raw.githubusercontent.com/cloudogu/gitops-patterns/8ed7188c/src/svg/deployment-hub-and-spoke.svg" width="70%"/>
</div>
<div class="column fragment">
<p style="font-size: 90%"><strong>Instance per Namespace</strong></p>
<img src="https://raw.githubusercontent.com/cloudogu/gitops-patterns/8ed7188c/src/svg/deployment-instance-per-namespace.svg" width="85%"/>
</div>
</div>

Note:
* Instance per Cluster (AKA Standalone): Obvious choice for simple set ups, isolated, easy to set up
* Hub and Spoke (AKA Management Cluster): Easy to managed for multiple clusters. BUT: remote access necessary, scalability, SPF
* Instance per Namespace (AKA Namespaced):   
  * Why: Cheap multi-tenancy, Load Balancing, reliability.
* There are others - but those are the most common ones



## Repository patterns <!-- .element style="margin-top: 0px; font-size: 95%"-->
<!-- .slide: id="repo-patterns" -->

How many config repos?

* **Monorepo** (opposite: polyrepo)
* **Repo per Team** / Tenant
* **Repo per App**
  * [Repo Separation](#repo-separation)
  * [Config replication](#config-replication)
  * [Repo pointer](#repo-pointer)
  * [Config Split](#config-split)
* **Repo per environment** [🕒](#release-promotion)

💡 Can be mixed <i class="fas fa-blender"></i>

Note:
* Monorepo: [Scaling issues](https://argo-cd.readthedocs.io/en/release-2.6/operator-manual/high_availability/#monorepo-scaling-considerations), authorization difficult
* Per team is sometimes generalized to "tenant" -> Multi-tenancy
  -> Example later
* Special case repo per app: Two strategies how to handle relation between config and app repo -> Next slide
* Repo per env ->  promotion



## Repository types <!-- .element style="margin-top: 0px; text-align: center "-->
<!-- .slide: style="font-size: 95%"  -->
<!-- .slide: id="repo-types" -->

|                                                       | Config repo                                                                                                                                                                  | App repo                                                                                                                                                                  |
|-------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Content                                               | Config/Manifests/YAMLs (IaC)                                                                                                                                                 | Application source code                                                                                                                                                   |
| Synonyms <!-- .element style="vertical-align: top"--> | <ul><li>GitOps repo</li><li>Infra repo</li><li>Environment repo</li><li>Payload repo</li></ul>                                                                               | <!-- .element style="vertical-align: top"-->  <ul><li>Source code repo</li><li>Source repo</li>                                                                           |
| Example  <!-- .element style="vertical-align: top"--> | <img data-src="https://raw.githubusercontent.com/cloudogu/gitops-patterns/8ed7188c/src/svg/config-repo-example.svg" width=75%/> <!-- .element style="vertical-align: top"--> | <img data-src="https://raw.githubusercontent.com/cloudogu/gitops-patterns/8ed7188c/src/svg/app-repo-example.svg" width=85%/> <!-- .element style="vertical-align: top"--> |

Note:
* Some people consider the GitOps repo to be the one with the operator-related stuff



<!-- .slide: id="repo-separation" style="font-size=80%" -->
### Repo Separation <!-- .element style="margin-top: 0px;margin-bottom:0px"-->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" contentStyleType="text/css" width=53% version="1.1" viewBox="0 0 730 528">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="429" y="50.3135"/>
            <image height="48" width="48" x="513"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="52.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="498.5" y="115.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="543" y="214.3135"/>
            <image height="48" width="48" x="553"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="224.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="553"
                  y="287.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="553"
                  y="306.3474">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="40" cy="243.8135" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M40,263.8135 C44,263.8135 47,263.8135 51,259.8135 C59,259.8135 67,267.8135 67,275.8135 L67,279.8135 C67,283.8135 63,287.8135 59,287.8135 L21,287.8135 C17,287.8135 13,283.8135 13,279.8135 L13,275.8135 C13,267.8135 21,259.8135 29,259.8135 C33,263.8135 36,263.8135 40,263.8135 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="140.5" y="223.8135"/>
            <image height="48" width="48" x="150.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="150.5" y="296.7795">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo" class="fragment" data-fragment-index="2">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="261" y="223.8135"/>
            <image height="48" width="48" x="271"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="271"
                  y="296.7795">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="205.5" y="435.3135"/>
            <image height="48" width="48" x="215.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="215.5" y="508.2795">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="382" y="435.3135"/>
            <image height="48" width="48" x="392"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="392"
                  y="508.2795">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M74.25,267.3135 C94.08,267.3135 113.22,267.3135 134.33,267.3135 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="140.33,267.3135,131.33,263.3135,135.33,267.3135,131.33,271.3135,140.33,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="92.25" y="242.2271">push
            </text>
            <text class="fragment" data-fragment-index="3" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29"
                  x="92.75" y="259.9542" font-weight="bolder">code
                <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                         dur="2.0s" repeatCount="indefinite"/>
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                         dur="2.0s" repeatCount="indefinite"/>
            </text>
        </g><!--link user to configRepo-->
        <g class="fragment" data-fragment-index="3"> id="link_user_configRepo">
            <path d="M44.4,226.1135 C51.81,179.7335 71.44,106.4035 123,72.3135 C167.49,42.9035 199.45,41.5235 243,72.3135 C291.24,106.4135 305.4056,171.2301 309.7756,217.4801 "
                  fill="none" id="user-to-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="310.34,223.4535,313.4757,214.1172,309.8697,218.4757,305.5111,214.8697,310.34,223.4535"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="70" x="132"
                  y="22.2271" font-weight="bolder">push config
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M197.5492,316.709 C208.4592,352.959 222.3,398.9935 233.19,435.2235 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="195.82,310.9635,194.5835,320.7345,197.261,315.7514,202.244,318.4289,195.82,310.9635"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="225"
                  y="392.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M286.79,478.8135 C314.66,478.8135 345.82,478.8135 375.83,478.8135 " fill="none"
                  id="ciServer-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="381.83,478.8135,372.83,474.8135,376.83,478.8135,372.83,482.8135,381.83,478.8135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="319.25" y="453.7271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="315.75" y="471.4542">image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M435.9049,344.7015 C435.9009,344.9761 435.897,345.2509 435.8931,345.526 C435.8852,346.0762 435.8773,346.6275 435.8694,347.1798 C435.8536,348.2844 435.8377,349.3931 435.8218,350.5053 C435.7899,352.7298 435.7579,354.9686 435.7257,357.2174 C435.5969,366.2123 435.4659,375.3669 435.3364,384.4075 C435.0775,402.4885 434.9111,414.1142 434.6961,429.0942 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="434.61,435.0935,438.7387,426.1519,434.6818,430.0941,430.7396,426.0371,434.61,435.0935"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="443.5" y="383.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="436"
                  y="400.9542">image
            </text>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s" class="fragment" data-fragment-index="2">
            <path d="M369.2,267.3135 C385.385,267.3135 396.6125,267.3135 410.3488,267.3135 C417.2169,267.3135 423.2122,267.3135 427.768,267.3135 C428.0527,267.3135 428.3318,267.3135 428.6052,267.3135 C428.6735,267.3135 428.7415,267.3135 428.8091,267.3135 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="363.2,267.3135,372.2,271.3135,368.2,267.3135,372.2,263.3135,363.2,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="388.82" y="285.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="381.32" y="302.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M635,266.9735 C646.83,237.8135 670.22,237.9335 670.22,267.3135 C670.22,296.6935 649.0856,302.3734 637.2556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="635,267.6535,634.6768,277.4971,636.8797,272.2868,642.09,274.4896,635,267.6535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="676.22" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLDTRzem57ttht3Bf3s5TAtMeWeX0UswgeXCj6mFxOICVHiy7Dkp7L0rzR_F3Y4agDMGnakmxpdddllX8owfo1daHk25SzfUnh4XwtRAtIAVvnOCLTA1T6sgiZZZTC51n5eGwV9CHCjy3aQ20njPRRZ_nXcn3animAhSK8YNdIeMvLAGEGXWqUbdJLsRUms4ZXWySmduTfYCfvFH0JvShWapPpiVt4UZPu-eRAnEsoVj4tHKgw_KZxr2fcHRX-HlnHciWfwDcQ9BC0S0lSltKOKjilRzo23w7Fy2kUJI7eotBv9km5MZXgDaUfNSJ0zh5XKgPohDTztQtkpDhE6cbYDsIWaR1lcEZzbWDBt6hTCpSiROBfgCaiciFqY-NyyU9ltn_RV-v7hyC1lqXtStasGwliAjYuiBXAplXoQ6P7XEw38rAfUCAg4Chj5gg2ju9hbmNtoDmmBsxqmrjeNVEKWAVMFK-c1-JO1GfyozUn60ooaXv5GARW46_q7O_mg8zxa2eRI_9HQ7gHGn0zGHcNhsSVU3drZlIVQrnXFGwZW0YTRX_tlOePBFFDt1QN5-cr6kMc3TudimAp0R3jySq2j23O8ViGVVTImUYZoiH07tjsLT3N1OJ8- -uIxHzac6Gealkw1i3pv3WxDvKPwLU4SJIBbrvgLWcFA0KEWKZdhRHk1Bh7ExU99KCIY3Zoq3x6UlLhn7TOkTkVIHNY2KGRILYHuNd36G3LeLxKPHrPOYen2eEdipMtkL6vwH5D37ceFkdeAt865T8h6_jLn959ePxGiAiHLiwWNmDbwMK_1xPOI15igtR7yxot4DgkTKxddzlMuGoZ0mcsZhq_bvfyF2KkpaTjFx7ybmltkkFxxUFcomywPQjolzZ7kz6g9YLR5cnbVq5m00]-->
    </g>
</svg>

<blockquote class="fragment" data-fragment-index="2" style="margin-top: 0px;margin-bottom: 0px; font-size: 70%">
  Recommendation: Keep config separate from code<br/>
  <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.5em; vertical-align: middle;" /> <a href="https://argo-cd.readthedocs.io/en/release-2.8/user-guide/best_practices/">argo-cd.readthedocs.io/en/release-2.8/user-guide/best_practices</a>
</blockquote>



**Disadvantages**
* Separated maintenance & versioning of app and infra code
* Review spans across multiple repos
* Local dev more difficult
* No static code analysis on config repo
  <br/><br/>

<div class="fragment" data-fragment-index="1">
<strong style="font-size: 300%">How to avoid those?</strong>
</div>

Note:
Static code analysis could be done via a separate job on config repo.  
But: Operator would deploy even i this analysis would fail!



### Config replication <!-- .element style="margin-top: 0px;margin-bottom:0px;z-index:1;position: absolute" -->
<!-- .slide: id="config-replication" -->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" contentStyleType="text/css" width=90% viewBox="0 0 755 415"
     width="755px" zoomAndPan="magnify">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="224" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="456" y="7"/>
            <image height="48" width="48" x="540"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="9"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="525.5" y="71.9659">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="570" y="101"/>
            <image height="48" width="48" x="580"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="111"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="580"
                  y="173.9659">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="580"
                  y="193.0339">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="140" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,160 C37,160 40,160 44,156 C52,156 60,164 60,172 L60,176 C60,180 56,184 52,184 L14,184 C10,184 6,180 6,176 L6,172 C6,164 14,156 22,156 C26,160 29,160 33,160 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="142.5" y="110.5"/>
            <image height="48" width="48" x="152.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="152.5" y="183.4659">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="263" y="110.5"/>
            <image height="48" width="48" x="273"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="273"
                  y="183.4659">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="224.5" y="322"/>
            <image height="48" width="48" x="234.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="234.5" y="394.9659">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="412" y="322"/>
            <image height="48" width="48" x="422"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="422"
                  y="394.9659">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.59,154 C84.38,154 110.64,154 136.46,154 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="142.46,154,133.46,150,137.46,154,133.46,158,142.46,154"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="87"
                  y="110.9136">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="87.5"
                  y="128.6407">code
            </text>
            <text class="fragment" data-fragment-index="1" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="80"
                  y="146.3678" font-weight="bolder">+config
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                         dur="2.0s" repeatCount="indefinite"/>
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M203.4301,203.2554 C217.2701,239.5054 234.9,285.68 248.74,321.91 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="201.29,197.65,200.7632,207.4848,203.0734,202.3211,208.237,204.6313,201.29,197.65"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="238"
                  y="278.9136">pull
            </text>
        </g><!--reverse link registry to ciServer-->
        <g id="link_registry_ciServer">
            <path d="M405.94,365.5 C372.78,365.5 336.45,365.5 305.75,365.5 " fill="none" id="registry-backto-ciServer"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="411.94,365.5,402.94,361.5,406.94,365.5,402.94,369.5,411.94,365.5"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="70"
                  x="323.75" y="358.4136">push image
            </text>
        </g><!--reverse link configRepo to ciServer-->
        <g id="link_configRepo_ciServer" class="fragment" data-fragment-index="2">
            <path d="M302.6633,203.4923 C294.1833,239.7423 283.44,285.68 274.96,321.91 " fill="none"
                  id="configRepo-backto-ciServer" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="304.03,197.65,298.0851,205.5023,302.8911,202.5186,305.8748,207.3245,304.03,197.65"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="294.5" y="269.9136" font-weight="bolder">push
            </text>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="291"
                  y="287.6407" font-weight="bolder">config
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M464,231.388 C464,231.6625 464,231.9374 464,232.2124 C464,232.7626 464,233.3139 464,233.8662 C464,234.9708 464,236.0795 464,237.1918 C464,239.4163 464,241.6551 464,243.9038 C464,252.8988 464,262.0534 464,271.0939 C464,289.175 464,300.8 464,315.78 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="464,321.78,468,312.78,464,316.78,460,312.78,464,321.78"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="465"
                  y="278.9136">pull image
            </text>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s">
            <path d="M371.2,154 C391.57,154 408.5525,154 427.2225,154 C436.5575,154 444.8144,154 451.1275,154 C452.7058,154 454.1626,154 455.4844,154 C455.6496,154 455.8127,154 455.9737,154 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="365.2,154,374.2,158,370.2,154,374.2,150,365.2,154"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62"
                  x="383.32" y="171.9136">pull config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M660,153.66 C671.83,124.5 695.22,124.62 695.22,154 C695.22,183.38 674.0856,189.0599 662.2556,159.8999 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="660,154.34,659.6768,164.1836,661.8797,158.9732,667.09,161.1761,660,154.34"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="701.22" y="159.4136">deploy
            </text>
        </g><!--SRC=[fLFRRXen47ttLpYXRzMoQQ8aA498GD8q2c8h4jg7K25Z3yiMh-twGeIg_7kz5tQN9b6H2WzWppapPywCZn91kMFWDCShQvMv2aDDdjjnObTkuGneAeK5OTjKfc6Qq5K2F5IS2EjI7gpT0hG02oOmIYV-Dqo9iQ133KOwJI5STwfOu0Gd2-30WjDpHMqxyJaGEcAmJ0JWks4qdav61-YmJX6cpseTYOy6Iu-eP6nEsoVj4tJKwA_C7_eCgHHjbHL_AyvWa-Kp8PDq3Ve0e5VvFYgNHPwz7oa4v-5F4Ej4c8FnPYje0QwC6ewYwNLqEptCBCgbOp9sjLkxcxzcjgUcKIEqKdAJ3V8T7VF1Q7g3MwTdv8onEXgDeicyFuY-tSmV9_tnmzV-v6RyE1_qX_UtasWwliQjoyjBX8ptGn5DKhmWT1rhwGIZaakD6xG6wXgMn77xsVSup67_hjHW6_ZbG53eQosV3-Ot4X1gfNwmMmwud1AoCWQx0er_8-m_EG8V-oynE1j7Vgk1MY9YJplkVl2Zwir4Noay0ILp854g-_yUTYZ5CebhECtFRpFA7SjOT_W1z0PqmKcA0tf1Q8_WP-l1zns3Xznbkv33_MtPqHuusqYFlarifCnCI0MQ-8PpokxWA-nnYgVaMP5ND84uCLPlSuOk3mXbJk7WgQM1_UZjxC1NM3cpcWag6Sn4Dr-CAm_fVImSG3jWyBHA60FXkGrlTj5k45JjvpavHxlIhuDcXPEKn83gJ1ceqDQ4DlGKCXiNfRxCnI3eLOsMrTyga3jUXfliNXbWeBZSlbh6SaY3wlMKQzrydWL2QWQwYBO-NLnqEYnRXJfTFRF_IPdTrw_p-vUxnmAxsC_MxGe_qrwlWQXOLMo_uWlw0m00]-->
    </g>
</svg>

Note:
* ONE Option is using CI server (other would be pointing/linking to App repo from config repo, e.g via ArgoCD app or GitRepo CR in flux)
* Multiple app repos, one config repo for infra
* Depending on technology, more repos for configuring operator
* CI Server push has one disadvantage: More complexity in pipelines



**Advantages**

* Single repo for development: higher efficiency
* Shift left: static code analysis + policy check on CI server,  
  e.g. yamlint, kubeconform, helm lint, conftest, security scanners
* Automate config update (image tag + PR creation) [🕒](#promotion-via-ci)
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
* Redundant config (app repo + config repo) <!-- .element: class="fragment"  -->

Notes:
* Or https://github.com/hckops/actions#docker-template-action for GitHub actions
* Shift left (Fail Early) Validation - OPA Gatekeeper, Image Signature, etc
    * Plus: Layered approach -> "If we dont find it here, we're gonna find it there"
    * See also: Shifting Policy Enforcement to the Left using GitOps von Sandeep Parikh
* Enrich commit message: Author, original commit, issue ID and build number
* Implement resiliency (retries, pull and try pushing again)
* Disadvantages
    * Complexity in CI pipelines -> efforts for development
    * A lot can go wrong. Examples
        * Git Conflicts caused by concurrency
        * Danger of inconsistencies



### Avoid Redundancy: Repo pointer <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="repo-pointer" -->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" contentStyleType="text/css"
     height="510px" preserveAspectRatio="none" style="width:779px;height:510px;" version="1.1" viewBox="0 0 779 510"
     width="779px" zoomAndPan="magnify">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="480" y="50.3135"/>
            <image height="48" width="48" x="564"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="52.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="549.5" y="115.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="594" y="214.3135"/>
            <image height="48" width="48" x="604"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="224.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="604"
                  y="287.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="604"
                  y="306.3474">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="253.3135" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,273.3135 C37,273.3135 40,273.3135 44,269.3135 C52,269.3135 60,277.3135 60,285.3135 L60,289.3135 C60,293.3135 56,297.3135 52,297.3135 L14,297.3135 C10,297.3135 6,293.3135 6,289.3135 L6,285.3135 C6,277.3135 14,269.3135 22,269.3135 C26,273.3135 29,273.3135 33,273.3135 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="142.5" y="223.8135"/>
            <image height="48" width="48" x="152.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="152.5" y="296.7795">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="312" y="223.8135"/>
            <image height="48" width="48" x="322"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="322"
                  y="296.7795">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="149.5" y="417.3135"/>
            <image height="48" width="48" x="159.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="427.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="159.5" y="490.2795">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="433" y="417.3135"/>
            <image height="48" width="48" x="443"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="427.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="443"
                  y="490.2795">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.59,267.3135 C84.38,267.3135 110.64,267.3135 136.46,267.3135 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="142.46,267.3135,133.46,263.3135,137.46,267.3135,133.46,271.3135,142.46,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="87"
                  y="224.2271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="87.5"
                  y="241.9542">code
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="80"
                  y="259.6814">+config
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to configRepo-->
        <g id="link_appRepo_configRepo" class="fragment" data-fragment-index="1">
            <path d="M233.64,267.3135 C258.94,267.3135 285.17,267.3135 311.84,267.3135 " fill="none"
                  id="appRepo-backto-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="227.64,267.3135,236.64,271.3135,232.64,267.3135,236.64,263.3135,227.64,267.3135"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="48"
                  x="245.75" y="260.2271" font-weight="bolder">point to
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M186.2674,316.8115 C187.0974,348.4315 188.06,385.4235 188.88,417.1035 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="186.11,310.8135,182.3475,319.9154,186.2412,315.8118,190.3448,319.7055,186.11,310.8135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="190"
                  y="383.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M230.71,460.8135 C283.34,460.8135 369.08,460.8135 426.79,460.8135 " fill="none"
                  id="ciServer-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="432.79,460.8135,423.79,456.8135,427.79,460.8135,423.79,464.8135,432.79,460.8135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="70"
                  x="307.25" y="453.7271">push image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M486.8046,344.6057 C486.8007,344.8548 486.7968,345.1041 486.7929,345.3536 C486.785,345.8525 486.7772,346.3522 486.7693,346.8525 C486.6437,354.8573 486.5155,363.028 486.3884,371.1309 C486.1344,387.3367 485.9785,397.2718 485.7635,411.0643 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="485.67,417.0635,489.8098,408.127,485.7479,412.0642,481.8108,408.0023,485.67,417.0635"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="487"
                  y="383.2271">pull image
            </text>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s">
            <path d="M420.2,267.3135 C436.385,267.3135 447.6125,267.3135 461.3488,267.3135 C468.2169,267.3135 474.2122,267.3135 478.768,267.3135 C479.0527,267.3135 479.3318,267.3135 479.6052,267.3135 C479.6735,267.3135 479.7415,267.3135 479.8091,267.3135 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="414.2,267.3135,423.2,271.3135,419.2,267.3135,423.2,263.3135,414.2,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="439.82" y="285.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="432.32" y="302.9542">config
            </text>
        </g><!--reverse link appRepo to k8s-->
        <g id="link_appRepo_k8s" class="fragment" data-fragment-index="2">
            <path d="M197.1779,217.8588 C210.9979,171.0188 238.64,104.7935 294,72.3135 C346.14,41.7235 381.55,36.1735 430,72.3135 C447.5525,85.406 460.005,103.5948 468.7983,123.6432 C473.1949,133.6675 476.6768,144.1566 479.4239,154.7061 C479.5956,155.3654 479.7644,156.025 479.9304,156.6847 "
                  fill="none" id="appRepo-backto-k8s" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="195.48,223.6135,201.8634,216.1134,196.8949,218.8179,194.1904,213.8495,195.48,223.6135"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="393"
                  y="22.2271" font-weight="bolder">pull config
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M684,266.6735 C695.87,239.8135 719.08,240.0235 719.08,267.3135 C719.08,294.6035 698.2953,300.3015 686.4253,273.4415 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="684,267.9535,683.9792,277.8024,686.0211,272.5269,691.2966,274.5687,684,267.9535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="725.08" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLDTRnen47ptht2WRzLnQQ8aA498GD8q2k8g4jg7425ZBuUBiLtRboYgyjzhtnt7aGyLgV00zixipiwk3xYa8cEG6O6Npcbx7iU6FBLIxfRPFBDWg98Ef6jHjOxNd2uvY5WB8bss5j4gcuEHuC16LXlkV-CriGvCRC2gp528L-qg5cLIa3a8OD7HYQQknNqEX0uOBBW4V3r8HfFnS0yTBjE4cUEj3kwZqS8ZAXcFHwt3rY4wgFLNvezzXhMIBHsAlnTdy1ZosPWfkWAp1z2h_1YLoo9FteyrH2VnBv0hBktUUFiiQG6kZ1eCayb5SZNPpomgLCPKcctTsjoycjcEcbgDs2abR1Za1pfc_U7a4ZUFZianOzjeCap6iru_-N4vknltHhVVU-FBqTsitnlSN8sJoUW2Dy_EpX2otWzD35dZEQ6hrAXCCgg4ChX6gw4kO44ouRxw7WSvxD-LQcmBlpEG57h6gAUz-RK4X3fbRjsp05nE2I6dKd1BCFWFmlwJGt33Vud5OHxvhG7gY4mzhz7vv6VLdSgUrdWCMkL0edNu_n5seEI2friupS_lCyeb2wnhV0lc4Kp1uSK1lI2qG_33zU2RjiK3aOLboE7-jkne1nnMqgElk4kqdKgbmH3VS4xP77o57KxnbZmhyOh6a7Bhp7FECEK1eU0KZheR8_0vrfbTJYLL3ARoSz6m5uCsWEX-oHa3-T2jkx69TgBxfW7sK8lvb9ryjSvzeAiLbmuxXMkKgF8eBoy4givUsKQhZpNmsq-GY_cQf52_RQ3WOxHB3waBAAh9wqIvvqKuD1uYRnigCFLEGhOIdHVhbXW6MYXlxUlzBSVQhnvS-HBgBxf0ACF05D7cbzFJTfk5vTccsqxvVrA6- -s3_ldj-gx0pdUpTJhIxqAtMqDKh2gsM_45_GK0]-->
    </g>
</svg>

<span class="fragment" data-fragment-index="1">e.g.
    <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/>
    <a href="https://fluxcd.io/flux/guides/repository-structure/#repo-per-app">fluxcd.io/flux/guides/repository-structure</a>
</span>

Note:
* There's always a downside. If avoiding redundancy is important, this would be an alternative
* Reference ("pointer") could be realized using ArgoCD's application CR or Flux GitRepository CR or even a git submodule (uncommon)
* However, in the end, the config repo would include little actual code



<!-- .slide: id="config-split" -->
### Middle ground: Config Split <!-- .element style="margin-top: 0px;margin-bottom: 0px"-->
<div class="floatRight" style="font-size: 100%">
  <p class="fragment" data-fragment-index="0" style="margin-right: 200px;">👈️ <img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" /> example</p>
<br/>
  <p class="fragment" data-fragment-index="1">💡 Also works with <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></p>
</div>

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     width=60% viewBox="0 0 776 546">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="477" y="68.3135"/>
            <image height="48" width="48" x="561"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="70.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="546.5" y="133.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="591" y="232.3135"/>
            <image height="48" width="48" x="601"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="242.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="601"
                  y="305.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="601"
                  y="324.3474">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="271.3135" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,291.3135 C37,291.3135 40,291.3135 44,287.3135 C52,287.3135 60,295.3135 60,303.3135 L60,307.3135 C60,311.3135 56,315.3135 52,315.3135 L14,315.3135 C10,315.3135 6,311.3135 6,307.3135 L6,303.3135 C6,295.3135 14,287.3135 22,287.3135 C26,291.3135 29,291.3135 33,291.3135 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="136.5" y="241.8135"/>
            <image height="48" width="48" x="146.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="251.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="146.5" y="314.7795">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="306" y="241.8135"/>
            <image height="48" width="48" x="316"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="251.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="316"
                  y="314.7795">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="238.5" y="453.3135"/>
            <image height="48" width="48" x="248.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="463.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="248.5" y="526.2795">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="428" y="453.3135"/>
            <image height="48" width="48" x="438"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="463.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="438"
                  y="526.2795">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.84,285.3135 C83.12,285.3135 106.41,285.3135 130.38,285.3135 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="136.38,285.3135,127.38,281.3135,131.38,285.3135,127.38,289.3135,136.38,285.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="84"
                  y="242.2271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="84.5"
                  y="259.9542">code
            </text>
    <text class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FF0000"  font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="38" x="80"
                  y="277.6814">+chart
        <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="2.0s" repeatCount="indefinite"/>
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="2.0s" repeatCount="indefinite"/>
            </text>
        </g><!--link user to configRepo-->
        <g id="link_user_configRepo" class="fragment" data-fragment-index="2" >
            <path d="M35.9,253.4935 C42.06,206.6835 61.08,120.6735 119,82.3135 C163.46,52.8635 192.77,55.7135 239,82.3135 C298.18,116.3635 328.6519,187.0362 343.8719,235.7862 "
                  fill="none" id="user-to-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="345.66,241.5135,346.7961,231.7304,344.1699,236.7407,339.1596,234.1146,345.66,241.5135"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="152" x="107"
                  y="31.2271">push helm values per env
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to configRepo-->
        <g id="link_appRepo_configRepo" class="fragment" data-fragment-index="3" >
            <path d="M227.64,285.3135 C252.94,285.3135 279.17,285.3135 305.84,285.3135 " fill="none"
                  id="appRepo-backto-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="221.64,285.3135,230.64,289.3135,226.64,285.3135,230.64,281.3135,221.64,285.3135"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="48"
                  x="239.75" y="278.2271">point to
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M201.9442,334.3785 C219.2442,370.6285 241.38,416.9935 258.67,453.2235 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="199.36,328.9635,199.6264,338.8088,201.5135,333.476,206.8463,335.3631,199.36,328.9635"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="245"
                  y="410.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M319.68,496.8135 C350.88,496.8135 388.17,496.8135 421.91,496.8135 " fill="none"
                  id="ciServer-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="427.91,496.8135,418.91,492.8135,422.91,496.8135,418.91,500.8135,427.91,496.8135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="358.75" y="471.7271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="355.25" y="489.4542">image
            </text>
        </g><!--link k8s to appRepo-->
        <g id="link_k8s_appRepo" class="fragment" data-fragment-index="4" >
            <path d="M476.9102,162.9775 C474.0355,151.5096 470.36,140.1048 465.6831,129.2017 C456.3294,107.3954 442.97,87.596 424,73.3135 C375.71,36.9635 339.6,41.8235 288,73.3135 C228.12,109.8535 201.1708,185.1142 188.8308,235.7442 "
                  fill="none" id="k8s-to-appRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="187.41,241.5735,193.4274,233.7767,188.594,236.7157,185.6549,231.8823,187.41,241.5735"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="342"
                  y="22.2271" font-weight="bolder">pull
            </text>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31"
                  x="337.5" y="39.9542" font-weight="bolder">chart
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M483.1775,362.7015 C483.1709,362.9761 483.1644,363.2509 483.1578,363.526 C483.1447,364.0762 483.1315,364.6275 483.1183,365.1798 C483.092,366.2844 483.0655,367.3931 483.0389,368.5053 C482.9858,370.7298 482.9324,372.9686 482.8787,375.2174 C482.664,384.2123 482.4455,393.3669 482.2297,402.4075 C481.7981,420.4885 481.5207,432.1153 481.1632,447.0953 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="481.02,453.0935,485.2336,444.1915,481.1393,448.095,477.2359,444.0007,481.02,453.0935"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="490.5" y="401.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="483"
                  y="418.9542">image
            </text>
        </g><!--link k8s to configRepo-->
        <g id="link_k8s_configRepo">
            <path d="M476.8654,285.3135 C476.7964,285.3135 476.7269,285.3135 476.6571,285.3135 C476.5175,285.3135 476.3764,285.3135 476.2338,285.3135 C475.9485,285.3135 475.6573,285.3135 475.3602,285.3135 C470.6066,285.3135 464.3556,285.3135 457.2062,285.3135 C442.9075,285.3135 431.015,285.3135 414.32,285.3135 "
                  fill="none" id="k8s-to-configRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="408.32,285.3135,417.32,289.3135,413.32,285.3135,417.32,281.3135,408.32,285.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="435.32" y="260.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="429.32" y="277.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M681,284.9735 C692.83,255.8135 716.22,255.9335 716.22,285.3135 C716.22,314.6935 695.0856,320.3734 683.2556,291.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="681,285.6535,680.6768,295.4971,682.8797,290.2868,688.09,292.4896,681,285.6535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="722.22" y="290.7271">deploy
            </text>
        </g><!--SRC=[fLHRRzem57xtht3BtgQGhbLRX10IqAwhYiX4o_PG9cJiGyXmxCmNAZJrly-va4jNDAJ1G-9plk-SxroSaqXGRXbOnV7Qc4HtVL-HbtOOcRLTMWsAIc50c3QLiHz7T1q1znDEXB4nzpPs2Kg00UtfH4NkwST46r2-0Ysjek1lEgNFiuAJ9N1WtlbbGaqxSZ4GEc6mYWJW-r4mcKt7H-WmDY5CNLGw8kVrLWvHojYUjy_QP-YaLbyHttSHOYdQIPhyFJ-3RHfF-qpI3QWZW4xbOLGcYxouViJWNVe_GMmYeO_6wvsWERXir6WSp6w2kzbnpQ9SMYP3MtLhRtapiuQQMWxVICbrEiW3EXR3yUmMjyulo0LZbJSO1zF5O1XykrqyJGUJnw-3wUtaQJ4SZ1xkfi5iSeDRrzVN26dNZuGe4kCbePjGIIiObLmgNAFLK3Um8fQRpwx6KGRxTwOQMyCl2uB2G2dvSZI_5e1G8zMZsN70nPGGCZ84imQ5VoFiVXa4dxe_qJYTHsPLG0qHeUETzZwuMVNdOf0aU0g9p80aITBtGzYH5AiehE0qEx_FA9OiPTtZHr1RK3adoW_e5Q46mGtNWHyw6e-uJPSXWpjhKL43dAwaGzz59aZqNCW45745PvJzmMLeSFAxv5Y1KpI5CD96xJA6AWu8fPt2Nd_V2Dp5YTNhkQ2ImLpqifteAc3zZtHDb2dmpord-j6lzSCHQ-0q1bu3Z_6MS0iQEuKOn1RjqtZFwuWn48qOfRVdUMNRCaMSe_BinExbbsgZc8I0qjQLqgg26heuRrIL5vKHtyPDaRMuRuhD_OLjZqWVNSmWuN9NAoQNTBXPCX866_dNmXTxC2nlQ75rwf-0724L0vLxMv-khZeTbcvR5QvQY_y9cTghBy3tB_TFENRPZDRh2RSy_NuDKR9ANpFZA_e3]-->
    </g>
</svg>



<!-- .slide: data-auto-animate -->
<div style="position: absolute; right: 0; z-index: 1;">
  <strong>Alternative: Helm repo</strong>
</div>

<svg data-id="svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" contentStyleType="text/css"
  width=50% viewBox="0 0 724 712">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="425" y="50.3135"/>
            <image height="48" width="48" x="509"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="52.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="494.5" y="115.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="539" y="214.3135"/>
            <image height="48" width="48" x="549"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT4oVMRDG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyID/EAYRWn4DFWIlX7qqu99j+oOPV6Q7lXyVSr1098mNxx9O9symYW9sGrbizacfb996dvYAYvvrEd578WU6+/nnP769uJzwafc0nZbwzunn14/efZtenv+evl/+nRQY/Mn7HxMTi4g6/fTLu7gC/e2eplOUTODhm4urqCwFE0S8921EbA+rBTDxLcHK9YSwqj0sFsAgayI+ByZ8MAH3X331fg4C9ontD7XSaQHK0aFAIaDSqKClBEQnz6CjCkP6MSHyPQL8qbHDAlQEarAnaocRIlDldwQhAUTMd/QgQr5fhqQJOZ9FSMCo2rC8vbK3lKreK8wKULkHbIP5PmuZSamhAPLTd6ixZeQ91dHBYyhgFP01OX/3+fnV6kE7lFGRIBMnjaKpNBSgcp92f2+GmRSZgxQwqjzZUul5FAEqfVh2P6EsjyJA/UuSm35CWR5FgKoCW5TNyL96FHUlbAaijNb019fS+8/S+2sG2Bubhr2xadgbm4a9sRj81VPq1pJq4wdZQntVU7N3lCmGOkIsgR9kCdX7JQJd31eMLQX0yl2GTFLB+y7GdRKgTqW9A2UxrosA+np/BvaBv78YWwrwg2SojjOgd6QpRkSAvXTCEVUCkq8crqg+0G+yDPGjwEHT3w+LEREAtjiZ9khQ/Fg11KNsMaICQC8X15DJq7IJSCvfx1iMjAAwcpqhPSsrcG1UFIqRFQDoszTnmdRowxrm/BejJ8DeIsyBzR19ZiaXVZ336B0dPIuhBMzlp4d9RmJwqhK/7BminfET3WdDAYBriFDXD4FI5FMCIDmrHvq3RDQV0wKMpEUmFaIgxUbVRnFWgHJKjm4B9YEvymIoAb3zR83MVxcDYxGAOd8RFkN9aFAr0KN9RrIXtaSFvbhlY5LfGX8RFoNoMEDNNUt7LDYNe2PTsDf+AwK5VHkDkw9+AAAAAElFTkSuQmCC"
                   y="224.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="549"
                  y="287.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="549"
                  y="306.3474">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="253.3135" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,273.3135 C37,273.3135 40,273.3135 44,269.3135 C52,269.3135 60,277.3135 60,285.3135 L60,289.3135 C60,293.3135 56,297.3135 52,297.3135 L14,297.3135 C10,297.3135 6,293.3135 6,289.3135 L6,285.3135 C6,277.3135 14,269.3135 22,269.3135 C26,273.3135 29,273.3135 33,273.3135 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="136.5" y="223.8135"/>
            <image height="48" width="48" x="146.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="146.5" y="296.7795">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="257" y="223.8135"/>
            <image height="48" width="48" x="267"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="267"
                  y="296.7795">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="225.5" y="435.3135"/>
            <image height="48" width="48" x="235.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="235.5" y="508.2795">CI Server
            </text>
        </g><!--entity helmRepo-->
        <g id="elem_helmRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="93"
                  x="374.5" y="435.3135"/>
            <image height="48" width="48" x="384.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACUElEQVR4Xu2YMU4EMQxF9y6cgBtwA07ADbgBBTU3oKeioqKioqKio0UIISGEkDjCoo9k6a8dJ/ZMZiCI4km7P5nYP+tkstnsXTxuluTg6nmrtZ4YoSdI/vzhc3t4/bKYCSP05Pj27dsA0G29MEJPJPl/AxWM4IFyyNbyVANYOyd376FnjOAhiZzdf4QG5mcyBrLrxggemH0ZGEF0u2b/8uk0m8zRzWsqBjCCBxLiGdXlhHY26YHESu8G2XIFjKf7lDBCDZ0ggujAGXgSUJqi45fQsT2M0ILLQoMkkBRM8Qzis/xCWJz6OS6dzBoDRoigE4Cp6E8OvHKL7jyMEVpwYMxWJnGNXujRhcsYoUZ2J4oyZ1wjePBizQaJwCb0DlfDCKNhhNEwwmgYYTR2vvBCjej8AmJ4a/WeZeSYUtuSvT47nbxgnt7bAGidkxYxUDu7eM8ybECb0GetsAE5z+jXPvdfygBAzNJxI2zAg/t7JeSNqRMXSgY8fr0B9Nfno0lrgDuuWUISF2PKuKV2IRTM07MG8FngRGoJttrdYBHdKyEO4pUl9EiCrfa/ZWBEjDAaRhgNI4yGEWrwNqjb5uJtsS2MUGPOn+8ac8Y1Qouhr1UEvafjfZA1UjpprnKxFblahBk2JN9R36Xn+YWYNWGEGnrWJCmdUBS+/1nlctcLDmDGO1owP3a9nt0p9AKNJMQTEIkBjOAhA2euv3lGdZsHm9ZtJYzggYF12bSYYgCgnKITZYSeTDWQwQg9Gd5Atp6nYISeyNZY2jZ7YYTeLJk8+ALeTe3TzxDcuQAAAABJRU5ErkJggg=="
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="73"
                  x="384.5" y="508.2795">Helm Repo
            </text>
        </g><!--entity ociRegistry-->
        <g id="elem_ociRegistry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="350" y="619.3135"/>
            <image height="48" width="48" x="360"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="629.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="360"
                  y="692.2795">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.84,267.3135 C83.12,267.3135 106.41,267.3135 130.38,267.3135 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="136.38,267.3135,127.38,263.3135,131.38,267.3135,127.38,271.3135,136.38,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="84"
                  y="224.2271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="84.5"
                  y="241.9542">code
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="38" x="80"
                  y="259.6814">+chart
            </text>
        </g><!--link user to configRepo-->
        <g id="link_user_configRepo">
            <path d="M36.49,235.5735 C43.36,190.3135 63.21,108.6835 119,72.3135 C163.68,43.1835 195.45,41.5235 239,72.3135 C287.24,106.4135 301.4056,171.2301 305.7756,217.4801 "
                  fill="none" id="user-to-configRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="306.34,223.4535,309.4757,214.1172,305.8697,218.4757,301.5111,214.8697,306.34,223.4535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="152" x="83"
                  y="22.2271">push helm values per env
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M199.0106,316.5049 C214.0606,352.7549 233.27,398.9935 248.31,435.2235 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="196.71,310.9635,196.4667,320.8094,198.6272,315.5814,203.8552,317.7419,196.71,310.9635"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="237"
                  y="392.2271">pull
            </text>
        </g><!--link ciServer to helmRepo-->
        <g id="link_ciServer_helmRepo">
            <path d="M306.72,478.8135 C327.44,478.8135 346.73,478.8135 368.24,478.8135 " fill="none"
                  id="ciServer-to-helmRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="374.24,478.8135,365.24,474.8135,369.24,478.8135,365.24,482.8135,374.24,478.8135"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="325.5" y="453.7271">push
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="325"
                  y="471.4542">chart
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link ciServer to ociRegistry-->
        <g id="link_ciServer_ociRegistry" >
            <path d="M297.89,522.4835 C319.63,551.5835 344.7277,585.1778 366.4877,614.2878 " fill="none"
                  id="ciServer-to-ociRegistry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="370.08,619.0935,367.8953,609.49,367.0864,615.0888,361.4877,614.2798,370.08,619.0935"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="351.5" y="567.2271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="348"
                  y="584.9542">image
            </text>
        </g><!--link k8s to helmRepo-->
        <g id="link_k8s_helmRepo">
            <path d="M428.6268,344.7015 C428.6111,344.9761 428.5954,345.2509 428.5796,345.526 C428.5481,346.0762 428.5165,346.6275 428.4849,347.1798 C428.4216,348.2844 428.3581,349.3931 428.2944,350.5053 C428.167,352.7298 428.0387,354.9686 427.9099,357.2174 C427.3947,366.2123 426.8703,375.3669 426.3525,384.4075 C425.3169,402.4885 424.6504,414.1234 423.7929,429.1034 "
                  fill="none" id="k8s-to-helmRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="423.45,435.0935,427.9578,426.3369,423.7357,430.1017,419.9709,425.8797,423.45,435.0935"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="432.5" y="383.2271">pull
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="428"
                  y="400.9542">chart
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--reverse link helmRepo to configRepo-->
        <g id="link_helmRepo_configRepo" >
            <path d="M383.1986,430.3829 C376.2386,420.8229 372.81,415.3735 367,405.3135 C349.53,375.0335 334.07,338.5935 323.37,310.9035 "
                  fill="none" id="helmRepo-backto-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="386.73,435.2335,384.6666,425.6033,383.7871,431.1913,378.1991,430.3118,386.73,435.2335"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="48" x="368"
                  y="392.2271">point to
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to ociRegistry-->
        <g id="link_k8s_ociRegistry">
            <path d="M467.3712,345.0263 C467.9128,346.5314 468.4524,348.0515 468.9891,349.5861 C470.0626,352.6554 471.1248,355.7825 472.17,358.9623 C488.8925,409.8385 501.235,474.1835 485,530.3135 C475.62,562.7335 459.1876,590.0194 441.1576,614.3994 "
                  fill="none" id="k8s-to-ociRegistry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="437.59,619.2235,446.1575,614.3658,440.563,615.2035,439.7254,609.609,437.59,619.2235"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="500.5" y="475.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="493"
                  y="492.9542">image
            </text>
        </g><!--link k8s to configRepo-->
        <g id="link_k8s_configRepo">
            <path d="M424.8091,267.3135 C424.7415,267.3135 424.6735,267.3135 424.6052,267.3135 C424.3318,267.3135 424.0527,267.3135 423.768,267.3135 C419.2122,267.3135 413.2169,267.3135 406.3488,267.3135 C392.6125,267.3135 381.385,267.3135 365.2,267.3135 "
                  fill="none" id="k8s-to-configRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="359.2,267.3135,368.2,271.3135,364.2,267.3135,368.2,263.3135,359.2,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="384.82" y="242.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="377.32" y="259.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M629,266.9735 C640.83,237.8135 664.22,237.9335 664.22,267.3135 C664.22,296.6935 643.0856,302.3734 631.2556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="629,267.6535,628.6768,277.4971,630.8797,272.2868,636.09,274.4896,629,267.6535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="670.22" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLHTRzem57ttht3BtgQGhLrRX10IqAwhYiX4o_PG9cJi2ybmxCmVLDNK_puxWIIKLaKQF2I-zvnpFvsZH51k6LZ5SMnCfjjXgCXZSvcOsCwj1aMbC21CayeqJ1CQ9y33Z1DXRCg3bPs34c101pfJYNk6AT46LAX0IwieXAjMwGkiu6GE75XmSfPHqqoS1a9731Q907mpY4QJyV20F8pD25EdLHw9ymOBXoZJM9yqlpG_eQDQVHlzq2caKZGp7_mrFuErrzCXatG5wW2Wo_9jL9uMUNJzI24u2t-3M2L27upNJu8MuB9HWs4qkOok9uSrYt9fcLpQgbjRoukPxMHJYn4QARdsWznFUXyM0q_Vo7VM7qwkSEFab9moLdcZOJIUzVhHZwlP_RWtkllU6r-DxcVztk3sUXnDHfUuSN5nWP1sVSk88YcU4xfQAca5ev9BXMkq6keI5iHoyzNrOf33tezKOsluOq5Gw2ab7m_crmG8DLBTcISEU3DDX8nSWeb1uRy8kryEmSVkJpJsSykj2gWXOkbunvqFRgRTgUXb6Hv39dCWoJB__XPs8CKYMLPmcfzVPsoMqRDky1seDQY2anG7z8pG3i4jWGFVjZGUSEkN9eSxwwQY7R1VNOU-JaoKwQcG6IZY2iufsuEBiCFnw-CutzoZAi4Rym9seCNrTE389J-6PQADUYh4QR8z8-JxYeFkjcsuZJEhuwcWai5KVAGnKQO4LStQuFBOU4su1OrTpXZ46csbWeSuOGp4hpgnz7Q2e6nahiOvAi_1GqC1SyHjRGxHoRUvxUpT8iMQeKYpehjSQrMMHIKfMGBoytWt0EUl1CYP-z8UMvFUwvFt5oQqHVX76pF8k7H3U7alDklIBo_oveRLlnG5GYe6gl0sFf-VjrhCBsKbLwt4_qXwU_MX-Fdjvhx0pdVLEXtXjgRRhI5ALkdRZVYC_W40]-->
    </g>
</svg>



<!-- .slide: data-auto-animate -->
<div style="position: absolute; right: 0; z-index: 1;">
  <spa>💡 Same pattern for<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3rd-party apps</spa>
</div>

<svg data-id="svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width=50% viewBox="0 0 724 712">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="425" y="50.3135"/>
            <image height="48" width="48" x="509"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="52.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="494.5" y="115.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="539" y="214.3135"/>
            <image height="48" width="48" x="549"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT4oVMRDG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyID/EAYRWn4DFWIlX7qqu99j+oOPV6Q7lXyVSr1098mNxx9O9symYW9sGrbizacfb996dvYAYvvrEd578WU6+/nnP769uJzwafc0nZbwzunn14/efZtenv+evl/+nRQY/Mn7HxMTi4g6/fTLu7gC/e2eplOUTODhm4urqCwFE0S8921EbA+rBTDxLcHK9YSwqj0sFsAgayI+ByZ8MAH3X331fg4C9ontD7XSaQHK0aFAIaDSqKClBEQnz6CjCkP6MSHyPQL8qbHDAlQEarAnaocRIlDldwQhAUTMd/QgQr5fhqQJOZ9FSMCo2rC8vbK3lKreK8wKULkHbIP5PmuZSamhAPLTd6ixZeQ91dHBYyhgFP01OX/3+fnV6kE7lFGRIBMnjaKpNBSgcp92f2+GmRSZgxQwqjzZUul5FAEqfVh2P6EsjyJA/UuSm35CWR5FgKoCW5TNyL96FHUlbAaijNb019fS+8/S+2sG2Bubhr2xadgbm4a9sRj81VPq1pJq4wdZQntVU7N3lCmGOkIsgR9kCdX7JQJd31eMLQX0yl2GTFLB+y7GdRKgTqW9A2UxrosA+np/BvaBv78YWwrwg2SojjOgd6QpRkSAvXTCEVUCkq8crqg+0G+yDPGjwEHT3w+LEREAtjiZ9khQ/Fg11KNsMaICQC8X15DJq7IJSCvfx1iMjAAwcpqhPSsrcG1UFIqRFQDoszTnmdRowxrm/BejJ8DeIsyBzR19ZiaXVZ336B0dPIuhBMzlp4d9RmJwqhK/7BminfET3WdDAYBriFDXD4FI5FMCIDmrHvq3RDQV0wKMpEUmFaIgxUbVRnFWgHJKjm4B9YEvymIoAb3zR83MVxcDYxGAOd8RFkN9aFAr0KN9RrIXtaSFvbhlY5LfGX8RFoNoMEDNNUt7LDYNe2PTsDf+AwK5VHkDkw9+AAAAAElFTkSuQmCC"
                   y="224.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="549"
                  y="287.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="549"
                  y="306.3474">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="253.3135" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,273.3135 C37,273.3135 40,273.3135 44,269.3135 C52,269.3135 60,277.3135 60,285.3135 L60,289.3135 C60,293.3135 56,297.3135 52,297.3135 L14,297.3135 C10,297.3135 6,293.3135 6,289.3135 L6,285.3135 C6,277.3135 14,269.3135 22,269.3135 C26,273.3135 29,273.3135 33,273.3135 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="257" y="223.8135"/>
            <image height="48" width="48" x="267"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="267"
                  y="296.7795">Config Repo
            </text>
        </g><!--entity helmRepo-->
        <g id="elem_helmRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="93"
                  x="374.5" y="435.3135"/>
            <image height="48" width="48" x="384.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACUElEQVR4Xu2YMU4EMQxF9y6cgBtwA07ADbgBBTU3oKeioqKioqKio0UIISGEkDjCoo9k6a8dJ/ZMZiCI4km7P5nYP+tkstnsXTxuluTg6nmrtZ4YoSdI/vzhc3t4/bKYCSP05Pj27dsA0G29MEJPJPl/AxWM4IFyyNbyVANYOyd376FnjOAhiZzdf4QG5mcyBrLrxggemH0ZGEF0u2b/8uk0m8zRzWsqBjCCBxLiGdXlhHY26YHESu8G2XIFjKf7lDBCDZ0ggujAGXgSUJqi45fQsT2M0ILLQoMkkBRM8Qzis/xCWJz6OS6dzBoDRoigE4Cp6E8OvHKL7jyMEVpwYMxWJnGNXujRhcsYoUZ2J4oyZ1wjePBizQaJwCb0DlfDCKNhhNEwwmgYYTR2vvBCjej8AmJ4a/WeZeSYUtuSvT47nbxgnt7bAGidkxYxUDu7eM8ybECb0GetsAE5z+jXPvdfygBAzNJxI2zAg/t7JeSNqRMXSgY8fr0B9Nfno0lrgDuuWUISF2PKuKV2IRTM07MG8FngRGoJttrdYBHdKyEO4pUl9EiCrfa/ZWBEjDAaRhgNI4yGEWrwNqjb5uJtsS2MUGPOn+8ac8Y1Qouhr1UEvafjfZA1UjpprnKxFblahBk2JN9R36Xn+YWYNWGEGnrWJCmdUBS+/1nlctcLDmDGO1owP3a9nt0p9AKNJMQTEIkBjOAhA2euv3lGdZsHm9ZtJYzggYF12bSYYgCgnKITZYSeTDWQwQg9Gd5Atp6nYISeyNZY2jZ7YYTeLJk8+ALeTe3TzxDcuQAAAABJRU5ErkJggg=="
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="73"
                  x="384.5" y="508.2795">Helm Repo
            </text>
        </g><!--entity ociRegistry-->
        <g id="elem_ociRegistry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="350" y="619.3135"/>
            <image height="48" width="48" x="360"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="629.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="360"
                  y="692.2795">OCI Registry
            </text>
        </g><!--link user to configRepo-->
        <g id="link_user_configRepo">
            <path d="M36.49,235.5735 C43.36,190.3135 63.21,108.6835 119,72.3135 C163.68,43.1835 195.45,41.5235 239,72.3135 C287.24,106.4135 301.4056,171.2301 305.7756,217.4801 "
                  fill="none" id="user-to-configRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="306.34,223.4535,309.4757,214.1172,305.8697,218.4757,301.5111,214.8697,306.34,223.4535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="152" x="83"
                  y="22.2271">push helm values per env
            </text>
        </g><!--link k8s to helmRepo-->
        <g id="link_k8s_helmRepo">
            <path d="M428.6268,344.7015 C428.6111,344.9761 428.5954,345.2509 428.5796,345.526 C428.5481,346.0762 428.5165,346.6275 428.4849,347.1798 C428.4216,348.2844 428.3581,349.3931 428.2944,350.5053 C428.167,352.7298 428.0387,354.9686 427.9099,357.2174 C427.3947,366.2123 426.8703,375.3669 426.3525,384.4075 C425.3169,402.4885 424.6504,414.1234 423.7929,429.1034 "
                  fill="none" id="k8s-to-helmRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="423.45,435.0935,427.9578,426.3369,423.7357,430.1017,419.9709,425.8797,423.45,435.0935"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="432.5" y="383.2271">pull
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="428"
                  y="400.9542">chart
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--reverse link helmRepo to configRepo-->
        <g id="link_helmRepo_configRepo">
            <path d="M383.1986,430.3829 C376.2386,420.8229 372.81,415.3735 367,405.3135 C349.53,375.0335 334.07,338.5935 323.37,310.9035 "
                  fill="none" id="helmRepo-backto-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="386.73,435.2335,384.6666,425.6033,383.7871,431.1913,378.1991,430.3118,386.73,435.2335"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="48" x="368"
                  y="392.2271">point to
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to ociRegistry-->
        <g id="link_k8s_ociRegistry">
            <path d="M467.3712,345.0263 C467.9128,346.5314 468.4524,348.0515 468.9891,349.5861 C470.0626,352.6554 471.1248,355.7825 472.17,358.9623 C488.8925,409.8385 501.235,474.1835 485,530.3135 C475.62,562.7335 459.1876,590.0194 441.1576,614.3994 "
                  fill="none" id="k8s-to-ociRegistry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="437.59,619.2235,446.1575,614.3658,440.563,615.2035,439.7254,609.609,437.59,619.2235"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="500.5" y="475.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="493"
                  y="492.9542">image
            </text>
        </g><!--link k8s to configRepo-->
        <g id="link_k8s_configRepo">
            <path d="M424.8091,267.3135 C424.7415,267.3135 424.6735,267.3135 424.6052,267.3135 C424.3318,267.3135 424.0527,267.3135 423.768,267.3135 C419.2122,267.3135 413.2169,267.3135 406.3488,267.3135 C392.6125,267.3135 381.385,267.3135 365.2,267.3135 "
                  fill="none" id="k8s-to-configRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="359.2,267.3135,368.2,271.3135,364.2,267.3135,368.2,263.3135,359.2,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="384.82" y="242.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="377.32" y="259.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M629,266.9735 C640.83,237.8135 664.22,237.9335 664.22,267.3135 C664.22,296.6935 643.0856,302.3734 631.2556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="629,267.6535,628.6768,277.4971,630.8797,272.2868,636.09,274.4896,629,267.6535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="670.22" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLHTRzem57ttht3BtgQGhLrRX10IqAwhYiX4o_PG9cJi2ybmxCmVLDNK_puxWIIKLaKQF2I-zvnpFvsZH51k6LZ5SMnCfjjXgCXZSvcOsCwj1aMbC21CayeqJ1CQ9y33Z1DXRCg3bPs34c101pfJYNk6AT46LAX0IwieXAjMwGkiu6GE75XmSfPHqqoS1a9731Q907mpY4QJyV20F8pD25EdLHw9ymOBXoZJM9yqlpG_eQDQVHlzq2caKZGp7_mrFuErrzCXatG5wW2Wo_9jL9uMUNJzI24u2t-3M2L27upNJu8MuB9HWs4qkOok9uSrYt9fcLpQgbjRoukPxMHJYn4QARdsWznFUXyM0q_Vo7VM7qwkSEFab9moLdcZOJIUzVhHZwlP_RWtkllU6r-DxcVztk3sUXnDHfUuSN5nWP1sVSk88YcU4xfQAca5ev9BXMkq6keI5iHoyzNrOf33tezKOsluOq5Gw2ab7m_crmG8DLBTcISEU3DDX8nSWeb1uRy8kryEmSVkJpJsSykj2gWXOkbunvqFRgRTgUXb6Hv39dCWoJB__XPs8CKYMLPmcfzVPsoMqRDky1seDQY2anG7z8pG3i4jWGFVjZGUSEkN9eSxwwQY7R1VNOU-JaoKwQcG6IZY2iufsuEBiCFnw-CutzoZAi4Rym9seCNrTE389J-6PQADUYh4QR8z8-JxYeFkjcsuZJEhuwcWai5KVAGnKQO4LStQuFBOU4su1OrTpXZ46csbWeSuOGp4hpgnz7Q2e6nahiOvAi_1GqC1SyHjRGxHoRUvxUpT8iMQeKYpehjSQrMMHIKfMGBoytWt0EUl1CYP-z8UMvFUwvFt5oQqHVX76pF8k7H3U7alDklIBo_oveRLlnG5GYe6gl0sFf-VjrhCBsKbLwt4_qXwU_MX-Fdjvhx0pdVLEXtXjgRRhI5ALkdRZVYC_W40]-->
    </g>
</svg>



**Alternative 2: Helm in OCI** <!-- .element: style="position: absolute; right: 0; z-index: 1;" -->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
   width=65% viewBox="0 0 727 531">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="428" y="50.3135"/>
            <image height="48" width="48" x="512"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="52.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="497.5" y="115.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="542" y="214.3135"/>
            <image height="48" width="48" x="552"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="224.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="552"
                  y="287.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="552"
                  y="306.3474">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="253.3135" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,273.3135 C37,273.3135 40,273.3135 44,269.3135 C52,269.3135 60,277.3135 60,285.3135 L60,289.3135 C60,293.3135 56,297.3135 52,297.3135 L14,297.3135 C10,297.3135 6,293.3135 6,289.3135 L6,285.3135 C6,277.3135 14,269.3135 22,269.3135 C26,273.3135 29,273.3135 33,273.3135 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="136.5" y="223.8135"/>
            <image height="48" width="48" x="146.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="146.5" y="296.7795">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="257" y="223.8135"/>
            <image height="48" width="48" x="267"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="267"
                  y="296.7795">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="223.5" y="435.3135"/>
            <image height="48" width="48" x="233.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="233.5" y="508.2795">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="378" y="435.3135"/>
            <image height="48" width="48" x="388"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="388"
                  y="508.2795">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.84,267.3135 C83.12,267.3135 106.41,267.3135 130.38,267.3135 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="136.38,267.3135,127.38,263.3135,131.38,267.3135,127.38,271.3135,136.38,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="84"
                  y="224.2271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="84.5"
                  y="241.9542">code
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="38" x="80"
                  y="259.6814">+chart
            </text>
        </g><!--link user to configRepo-->
        <g id="link_user_configRepo">
            <path d="M36.49,235.5735 C43.36,190.3135 63.21,108.6835 119,72.3135 C163.68,43.1835 195.45,41.5235 239,72.3135 C287.24,106.4135 301.4056,171.2301 305.7756,217.4801 "
                  fill="none" id="user-to-configRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="306.34,223.4535,309.4757,214.1172,305.8697,218.4757,301.5111,214.8697,306.34,223.4535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="152" x="83"
                  y="22.2271">push helm values per env
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M198.5561,316.5232 C213.2661,352.7732 232.02,398.9935 246.72,435.2235 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="196.3,310.9635,195.9777,320.8071,198.1801,315.5966,203.3906,317.799,196.3,310.9635"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="236"
                  y="392.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M304.56,510.0035 C311.02,513.6135 317.86,516.7435 324.75,518.8135 C342.26,524.0635 355.4941,522.4712 372.2541,515.3812 "
                  fill="none" id="ciServer-to-registry" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="377.78,513.0435,367.9327,512.8661,373.1751,514.9916,371.0496,520.2339,377.78,513.0435"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="326.25" y="496.7271">push
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31"
                  x="325.75" y="514.4542">chart
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M304.61,478.8135 C326.68,478.8135 348.23,478.8135 371.88,478.8135 " fill="none"
                  id="ciServer-to-registry-1" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="377.88,478.8135,368.88,474.8135,372.88,478.8135,368.88,482.8135,377.88,478.8135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="326.25" y="453.7271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="322.75" y="471.4542">image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M427.9045,294.765 C427.7223,295.4362 427.5389,296.1174 427.3546,296.8083 C425.8802,302.3356 424.3472,308.4842 422.8688,315.086 C416.955,341.4935 411.915,375.1535 415,405.3135 C415.99,415.0335 416.5468,419.4894 418.4868,429.2194 "
                  fill="none" id="k8s-to-registry" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="419.66,435.1035,421.823,425.4951,418.6823,430.2001,413.9774,427.0594,419.66,435.1035"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="420.5" y="383.2271">pull
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="416"
                  y="400.9542">chart
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M452.0674,344.7373 C452.1721,345.6784 452.2733,346.6229 452.3708,347.5703 C452.7606,351.36 453.0904,355.1975 453.3464,359.0612 C454.3706,374.516 454.215,390.391 452,405.3135 C450.55,415.0735 449.7281,419.5701 446.9381,429.2101 "
                  fill="none" id="k8s-to-registry-1" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="445.27,434.9735,451.6144,427.4404,446.66,430.1707,443.9298,425.2163,445.27,434.9735"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="461.5" y="383.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="454"
                  y="400.9542">image
            </text>
        </g><!--link k8s to configRepo-->
        <g id="link_k8s_configRepo">
            <path d="M427.8654,267.3135 C427.7964,267.3135 427.7269,267.3135 427.6571,267.3135 C427.5175,267.3135 427.3764,267.3135 427.2338,267.3135 C426.9485,267.3135 426.6573,267.3135 426.3602,267.3135 C421.6066,267.3135 415.3556,267.3135 408.2062,267.3135 C393.9075,267.3135 382.015,267.3135 365.32,267.3135 "
                  fill="none" id="k8s-to-configRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="359.32,267.3135,368.32,271.3135,364.32,267.3135,368.32,263.3135,359.32,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="386.32" y="242.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="380.32" y="259.9542">config
            </text>
        </g>
        </g><!--reverse link registry to configRepo-->
        <g id="link_registry_configRepo">
            <path d="M375.2548,430.7998 C366.6948,421.5498 362.51,415.7835 356,405.3135 C337.84,376.0935 325.4,339.0835 317.74,310.9035 "
                  fill="none" id="registry-backto-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="379.33,435.2035,376.153,425.8812,375.934,431.5338,370.2814,431.3148,379.33,435.2035"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="48" x="357"
                  y="392.2271">point to
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M632,266.9735 C643.83,237.8135 667.22,237.9335 667.22,267.3135 C667.22,296.6935 646.0856,302.3734 634.2556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="632,267.6535,631.6768,277.4971,633.8797,272.2868,639.09,274.4896,632,267.6535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="673.22" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLHRRzem57xtht3BtgQGhjLQX10IqAwhYiX4o_PG9cJiGvBXs9ale6hgVvzp8GciLP463udF-RvpldDnJc91kMLW5SUHCQdk-huYstOOcyWkhGP5fJ0WJ9lAn4zY6iN0_PGJOMp2lRLTWX9WG7iwLR5x-WdH1fIlG4khAFZhJkNphE1a2HoOT_uvfQOTknW8dJ1OnGBmtIYOpARZ8tGOcnAcBceTiVDwAuUeP6pEssVjCtJIgA-Cxxi8YHJjD4l-cf_19ekdVIRf6jGHGAVoRLGkYsnTFnBmFlk_GAnZeO_6wsT12t3LgD4uc5q7jxFZcaMvj4o6jkxMpd8mipqrZHo-aPBhR91lw5WCnxCRt3g_81UCrTvW74mNWs7m_MRnE1rC7huDfZUJnyLmCBg_dGQpoJLkNLrT8QHTFrAYI8ANXAv39QrWL7AfS8FMG5t3YbXklhWQHpdi_KmDjeRV5WI5WL9oUpI_4O1G8zM3UUQ0ooaXP6G89WA5_o3iVZa4dxe_qJYRHsvLG0qHeUETzZwuMVNdOf2cU0gfp84aJRFtjx0ZALPnMCDfVdwTKIvPnhh33w0se0fEN1pG2q9x13TS1xxlQ3pYDbk67EwiPKLxu6mb7VesDa6gvqAce8WhEAVi3Yx37gUuIuuLE4LJ26Djr7FEKEK1eQnJsEll6e6xEBKwcWig6Sp5HneHPIfGNNw9mn7m16y8jw2nKu51RD0kbFSKnOo1-DaaLjwUvrMjoQDnZggpzzHIm1nn9zGXUlb-TfszNqXi60gPDNsFMA3ZX8I06XNq3lAxQWHiIo1sLXrBWR9nlAk6yrVKvCn39HcoK9Ax_sbfvYzjEqJsw686APTkNeUNejoLONMBo-lL_4mK2AaOgCBR-dHvsUcmR2FhSFNg_4_8p5v_9NvylNiiiClzQBsUS0lMxpSG5QloxMTyGNy1]-->
    </g>
</svg>



<!-- .slide: id="oci-artifacts" -->
**Alternative 3:<br/> OCI artifacts <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/>** <!-- .element: style="margin-top: 0px; position: absolute; right: 0; z-index: 1;" -->


<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="70%" viewBox="0 0 741 417">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="224" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="442" y="7"/>
            <image height="48" width="48" x="526"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="9"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="511.5" y="71.9659">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="556" y="101"/>
            <image height="48" width="48" x="566"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="111"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="566"
                  y="173.9659">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="566"
                  y="193.0339">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="140" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,160 C37,160 40,160 44,156 C52,156 60,164 60,172 L60,176 C60,180 56,184 52,184 L14,184 C10,184 6,180 6,176 L6,172 C6,164 14,156 22,156 C26,160 29,160 33,160 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="128.5" y="110.5"/>
            <image height="48" width="48" x="138.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="138.5" y="183.4659">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="249" y="110.5"/>
            <image height="48" width="48" x="259"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="259"
                  y="183.4659">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="212.5" y="322"/>
            <image height="48" width="48" x="222.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="222.5" y="394.9659">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="367" y="322"/>
            <image height="48" width="48" x="377"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="377"
                  y="394.9659">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.59,154 C80.86,154 100.61,154 122.29,154 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="128.29,154,119.29,150,123.29,154,119.29,158,128.29,154"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="80"
                  y="146.9136">push
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M189.8771,203.2372 C204.0671,239.4872 222.15,285.68 236.33,321.91 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="187.69,197.65,187.2459,207.4888,189.5126,202.306,194.6954,204.5727,187.69,197.65"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="226"
                  y="278.9136">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M293.61,365.5 C315.68,365.5 337.23,365.5 360.88,365.5 " fill="none" id="ciServer-to-registry"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="366.88,365.5,357.88,361.5,361.88,365.5,357.88,369.5,366.88,365.5"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="315.25" y="340.4136">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="311.75" y="358.1407">image
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M293.69,397.99 C299.18,401.05 304.93,403.68 310.75,405.5 C327.29,410.67 333.01,409.99 349.75,405.5 C355.52,403.95 355.8236,404.2513 361.4536,401.7313 "
                  fill="none" id="ciServer-to-registry-1" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="366.93,399.28,357.0812,399.3059,362.3663,401.3227,360.3495,406.6078,366.93,399.28"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="315.25" y="383.4136">push
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="311.75" y="401.1407">config
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M441.8748,168.8579 C441.8168,168.9616 441.7586,169.0658 441.7002,169.1706 C441.4667,169.5894 441.2297,170.0162 440.9894,170.4505 C440.0281,172.1879 439.0145,174.0474 437.9609,176.0161 C435.8539,179.9535 433.5875,184.3278 431.2625,189.0363 C421.9625,207.87 411.725,232.05 407,255 C402.51,276.82 403.5458,295.5516 407.1458,315.9216 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="408.19,321.83,410.5627,312.2712,407.3198,316.9063,402.6847,313.6635,408.19,321.83"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="408"
                  y="278.9136">pull image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M477.6166,231.6362 C477.6579,231.8709 477.6988,232.1059 477.7392,232.341 C477.9009,233.2814 478.0557,234.2247 478.2031,235.1704 C478.7926,238.9532 479.2641,242.7754 479.5922,246.6139 C480.9044,261.9681 479.92,277.585 475,292 C471.4,302.54 469.0609,307.8358 462.5009,317.0858 "
                  fill="none" id="k8s-to-registry-1" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="459.03,321.98,467.4991,316.9527,461.9224,317.9015,460.9736,312.3248,459.03,321.98"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="488.5" y="269.9136">pull
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="481"
                  y="287.6407">config
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s">
            <path d="M357.2,154 C377.57,154 394.5525,154 413.2225,154 C422.5575,154 430.8144,154 437.1275,154 C438.7058,154 440.1626,154 441.4844,154 C441.6496,154 441.8127,154 441.9737,154 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="351.2,154,360.2,158,356.2,154,360.2,150,351.2,154"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62"
                  x="369.32" y="171.9136">pull config
            </text>
        </g><!--reverse link registry to configRepo-->
        <g id="link_registry_configRepo">
            <path d="M366.4867,317.6225 C357.8067,308.3625 353.56,302.55 347,292 C328.88,262.85 316.72,225.84 309.32,197.63 "
                  fill="none" id="registry-backto-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000" points="370.59,322,367.3533,312.6982,367.1706,318.3521,361.5167,318.1693,370.59,322"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text  font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="48" x="348"
                  y="278.9136">point to
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M646,153.66 C657.83,124.5 681.22,124.62 681.22,154 C681.22,183.38 660.0856,189.0599 648.2556,159.8999 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="646,154.34,645.6768,164.1836,647.8797,158.9732,653.09,161.1761,646,154.34"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="687.22" y="159.4136">deploy
            </text>
        </g><!--SRC=[fLDRJnf157wVNp5gNvUr6WqnX0JGMYDn6vJsGGqPPWxBbDcPwLmqfF6_T_R2xc8b9Iaym3dd-xvpdGCkgV0Cl15uwPos5t5io6idvMxfvzw2eKewaAv3LHPdd2uvY5WB8ftFHBJoSp0I7DZ8QiF3RvmHwy341gpoXaAywjQno4j1vY20HITdcheE3ne87J1OS0duPfJSJIVZFUfmNXDcJfiwU8X6Yu2eotWvwHntZj51gxzAFmuAcP8TdIV_ACxW9TUpCLDq1MOFOAXoDweeYxo6UMGGdSK_GQwuj7lZxLhI4bmFQZHEffV9zNI_OL6XF5EfRwQryRpRsLOrhHonKqhOV94xwfWDnzChV7HoIauPQwB9E9dC1iFa-zNiOJAuk_ysc5pTFSo6Wz7jzIIPtbtYuJZyHyY6WMXYI8RdXAvIexnaL0bbS8lNGbt2WdZXleGcHmNitwbQR0k_F4WA0sFKwzxybW2XJfbxjnQ0gpKXfr9mIp3uDyBXKo3mOVWIY_Dz55u3r16P1jfXxrFOLVz93hJ64z2g01Ajy_-xi2Cb5pnjuBImFsPKHvQpRl0zc1Sm9OUN1df3Q8iGbXl0jrsBHyBdnr30WxVgQ0kSdsH0NtENQFiabGP3GiC5PME435kSyYq5LX8gca3AhJFhWc4g0w5yKZZgRmQ1Bp3MtYxHneuUbvmnaC_zTlERQ2-Awlu2LNiXK6q7rKsU8cQNJv9d90NKmZmU6M3FMyXUSOSNmTylIIr7MGFAXnIzrnS2b_95j1IETYiByP5oqsHehbX69Lt5QxLUbQ4rbdSP59SEErMMqw-q66YXrd-TThNoOVqMgqVIVkqbGXa6femUVJu_xtPPVbYDN7C1_oEP-vkt_kFhpKE9dM-hzNfICUZtMuYQLSUsCxwXFm00]-->
    </g>
</svg>

<img title="jsonnet" class="fragment" data-fragment-index="2" data-src="images/jsonnet-icon.svg" style="" width=7%>
<img title="cuelang" class="fragment" data-fragment-index="2" data-src="images/cue-icon.svg" style="" width=7%>
<img title="timoni" class="fragment" data-fragment-index="2" data-src="images/timoni-icon.svg" style="" width=7%>

<p class="fragment" data-fragment-index="1" style="margin-bottom:0px;">
  <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/>
  <a href="https://fluxcd.io/flux/cheatsheets/oci-artifacts/">fluxcd.io/flux/cheatsheets/oci-artifacts</a>
</p>



## Promotion patterns <!-- .element style="margin-top: 0px;"-->
<!-- .slide: id="release-promotion" -->

How to model environments/stages?

* [**Branch per environment**](#branch-vs-folder-per-env)
* [**Folder/Directory per environment**](#branch-vs-folder-per-env)
* [**Repo per environment**](#repo-per-env) (edge case)
* 🔥 [**Preview environments**](#preview-envs)


Note:
AKA
  * Release
  * Application 
  * Environment 
  * Workload
  * Change Promotion.
* Patterns AKA Env per (folder | branch | repo)



<!-- .slide: id="branch-vs-folder-per-env"  style="font-size: 90%"-->
<h3 style="margin-top: 0px;margin-bottom: 0px;text-align: center"> Branch vs folder per Environment</h3>

|                 | Branch per env                                                                                                      | Folder per env                                                                                                   |
|-----------------|---------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| envs            | permanent branches                                                                                                  | trunk-based folders                                                                                              |
| mapping example | <i class="fas fa-code-branch"></i> `develop` ➡️ staging<br/> <i class="fas fa-code-branch"></i> `main` ➡️ production | <i class="fas fa-folder"></i> `staging` ➡️ Staging<br/> <i class="fas fa-folder"></i> `production` ➡️ Production |
| promotion       | merge                                                                                                               | copy<br/> (+merge short-lived branches)                                                                          |



<div class="container">
  <div class="column">
      <p style="font-weight: bold">Branch per env</p>
      <img data-src="images/branch-per-env.drawio.svg" width=55%/>
      <p></p>
  </div>
  <div class="column">
      <p style="font-weight: bold">Folder per env</p>
    <img data-src="images/folder-per-env.drawio.svg" width=55%/>
  </div>
</div>



|                                                                                                                                                                                                                                                                                               | Branch per env                                                                                                                                                                                                                                     | Folder per env                                                                                                                                                                                                                                                                                                                                             
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| pros <!-- .element style="vertical-align: top"-->                                                                                                                                                                                                                                             | <!-- .element style="vertical-align: top"--> <ul><li>Forces PRs</li><li>Feels natural for devs</li></ul>                                                                                                                                           | <ul><li>Avoids conflicts/drift</li><li>Copy vs cherry pick</li><li>Scales with envs</li>                                                                                                                                                                                                                                                                   |
| <!-- .element style="vertical-align: top"--> CM tool support (DRY) <img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" /> <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></li></ul> | <!-- .element style="vertical-align: top"--><span style="font-size:250%">❓️</span>                                                                                                                                                                 | <span style="vertical-align: top;font-size:250%">✅</span><img src="images/kustomize-example.svg" width=60%/>                                                                                                                                                                                                                                               |
| references                                                                                                                                                                                                                                                                                    | [1](https://medium.com/mediamarktsaturn-tech-blog/monitoring-and-hardening-the-gitops-delivery-pipeline-with-flux-a226bdef0351) | [1](https://fluxcd.io/flux/guides/repository-structure/), [2](https://www.thoughtworks.com/radar/techniques/gitops), [3](https://codefresh.io/blog/stop-using-branches-deploying-different-gitops-environments/), [4](https://developers.redhat.com/articles/2022/07/20/git-workflows-best-practices-gitops-deployments), ...<br/> Branches = `anti-pattern` |




### Repo per environment
<!-- .slide: id="repo-per-env" -->
Why would you want to use one repo per env?

* Access to folders more difficult to constrain than repos
* Organizational constraints, e.g.
  * "devs are not allowed to acces prod"
  * security team needs to approve releases

➡ Repos more complicated than folders. Use only when really necessary.

Note:
* No public examples found
* Theoretical ideas:
  * https://fluxcd.io/flux/guides/repository-structure/#repo-per-environment
  * https://youtu.be/vLNZA_2Na_s?t=1346



### 🔥 Preview environments
<!-- .slide: id="preview-envs" -->


* An environment that is created with a pull request
* and deleted on merge/close


<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> [`ApplicationSet`](https://argo-cd.readthedocs.io/en/release-2.8/operator-manual/applicationset/), using the `PullRequest` generator

<img data-src="images/weave-logo.png" title="Weave GitOps" style="height: 1.1em; vertical-align: middle;" /> [`GitOpsSets`](https://github.com/weaveworks/weave-gitops/blob/main/website/versioned_docs/version-0.29.0/gitopssets/gitopssets-intro.mdx)  ≈ <img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> 

Note:
AKA (ephemeral | dynamic | pull request | test | temporary) environments




<!-- .slide: style="text-align: center !important"  -->
<!-- .slide: data-background-image="images/implementation.jpg" -->
<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.95);margin-left: 540px; margin-right: 150px; ;margin-top: 85px">
  <h3 style="margin: 0 0 0 0;margin-top: 25px; margin-bottom: 25px;">Implementing promotion</h3>
</div>




##### Configuration Management tools <!-- .element style="margin-top: 0px;margin-bottom: 0px"-->

Tools for separating config of envs, keeping them DRY

* Kustomize
    * plain <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/> `kustomization.yaml` <img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> ➡️ "agnostic"
    * ≠ Flux CRD <img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> `Kustomization`
    * `kustomize build` / `kubectl kustomize` via CI server <i class="fab fa-jenkins"></i>
* Helm
    * CRD (️<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> `Application`, ️<img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> `HelmRelease`)
    * ️<img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" />  Umbrella Chart <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" />
    * `helm template` via CI server <i class="fab fa-jenkins"></i>

Note:
* AKA Templating, Patching, Overlaying, Rendering
* Kustomize **and**/or helm!
* See examples later 



#### Global envs vs. env per app

<div class="container">
  <div class="column">
      <img data-src="https://raw.githubusercontent.com/cloudogu/gitops-patterns/8ed7188c/src/svg/global-environments.svg" width="90%"/>
      <p></p>
  </div>
  <div class="column">
      <img data-src="https://raw.githubusercontent.com/cloudogu/gitops-patterns/8ed7188c/src/svg/environment-per-app.svg" width="90%"/>
      e.g. <a href="#preview-envs">Preview Envs</a>
  </div>
</div>
Note:
* Most examples have global stages
* Our experience: 
  * Some apps dont need stages
  * More recently: with preview envs, only one persistent stage is necessary




#### Config update

> Who updates image version in config repo, creates branch and PR?

* **Manual**: Human pushes branch and create PR 🥵
* **CI Server**: Build job pushes branch, creates PR
* **Image Updater**: Operator pushes branch, create PR manually
* **Dependency Bot**: Bot pushes branch, creates PR

Note:
* In general: GitOps "operations by PullRequest"
* Depends on repo structure 



<!-- .slide: id="promotion-via-ci" -->
##### Promotion via CI Server <!-- .element style="margin-top: 0px;margin-bottom:0px;z-index:1;position: absolute" -->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
  width=91% viewBox="0 0 746 415">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="224" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="431" y="7"/>
            <image height="48" width="48" x="515"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="9"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="500.5" y="71.9659">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="545" y="101"/>
            <image height="48" width="48" x="555"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="111"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="555"
                  y="173.9659">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="555"
                  y="193.0339">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="140" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,160 C37,160 40,160 44,156 C52,156 60,164 60,172 L60,176 C60,180 56,184 52,184 L14,184 C10,184 6,180 6,176 L6,172 C6,164 14,156 22,156 C26,160 29,160 33,160 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="85"
                  x="142.5" y="110.5"/>
            <image height="48" width="48" x="152.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65"
                  x="152.5" y="183.4659">App Repo
            </text>
        </g><!--entity configRepo-->
        <g id="elem_configRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="102"
                  x="263" y="110.5"/>
            <image height="48" width="48" x="273"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="273"
                  y="183.4659">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="223.5" y="322"/>
            <image height="48" width="48" x="233.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="233.5" y="394.9659">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="381" y="322"/>
            <image height="48" width="48" x="391"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="391"
                  y="394.9659">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.59,154 C84.38,154 110.64,154 136.46,154 " fill="none" id="user-to-appRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="142.46,154,133.46,150,137.46,154,133.46,158,142.46,154"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="87"
                  y="110.9136">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="87.5"
                  y="128.6407">code
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="80"
                  y="146.3678">+config
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M193.2025,203.6583 C198.6025,231.2483 206.18,261.63 219,292 C223.26,302.1 228.82,312.42 234.57,321.99 "
                  fill="none" id="appRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="192.05,197.77,189.8532,207.3707,193.0104,202.6769,197.7042,205.8341,192.05,197.77"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="220"
                  y="278.9136">pull
            </text>
        </g><!--reverse link configRepo to ciServer-->
        <g id="link_configRepo_ciServer">
            <path d="M278.908,202.5651 C268.058,219.5351 260.52,234.78 255,255 C249.12,276.53 250.5,301.25 253.72,321.75 "
                  fill="none" id="configRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="282.14,197.51,273.9219,202.9379,279.4466,201.7226,280.662,207.2473,282.14,197.51"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="259.5" y="269.9136">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="256"
                  y="287.6407">config
            </text>
        </g><!--reverse link configRepo to ciServer-->
        <g id="link_configRepo_ciServer" class="fragment">
            <path d="M312.1587,203.6472 C310.3687,231.0372 306.79,261.14 298,292 C295.18,301.89 291.15,312.13 286.85,321.67 "
                  fill="none" id="configRepo-backto-ciServer-1" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="312.55,197.66,307.9716,206.38,312.2239,202.6494,315.9546,206.9017,312.55,197.66"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text  font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="56" x="308"
                  y="278.9136">create PR
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M304.91,365.5 C327.77,365.5 350.49,365.5 374.94,365.5 " fill="none" id="ciServer-to-registry"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="380.94,365.5,371.94,361.5,375.94,365.5,371.94,369.5,380.94,365.5"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="327.75" y="340.4136">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="324.25" y="358.1407">image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M436.8129,231.388 C436.805,231.6625 436.7972,231.9374 436.7893,232.2124 C436.7735,232.7626 436.7577,233.3139 436.7418,233.8662 C436.7102,234.9708 436.6784,236.0795 436.6465,237.1918 C436.5827,239.4163 436.5185,241.6551 436.454,243.9038 C436.1961,252.8988 435.9335,262.0534 435.6742,271.0939 C435.1556,289.175 434.8222,300.8025 434.3922,315.7825 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="434.22,321.78,438.4766,312.8985,434.3635,316.7821,430.4799,312.6689,434.22,321.78"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="437"
                  y="278.9136">pull image
            </text>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s">
            <path d="M371.2,154 C387.385,154 398.6125,154 412.3488,154 C419.2169,154 425.2122,154 429.768,154 C430.0527,154 430.3318,154 430.6052,154 C430.6735,154 430.7415,154 430.8091,154 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="365.2,154,374.2,158,370.2,154,374.2,150,365.2,154"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="390.82" y="128.9136">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="383.32" y="146.6407">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M651.5,153.66 C663.33,124.5 686.72,124.62 686.72,154 C686.72,183.38 665.5856,189.0599 653.7556,159.8999 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="651.5,154.34,651.1768,164.1836,653.3797,158.9732,658.59,161.1761,651.5,154.34"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="692.72" y="159.4136">deploy
            </text>
        </g><!--SRC=[fPDRRzem5CVV_IdSihSff6lL5bK82MZNLKMaIilsK2fax0DaEBRdIoiqxRlFII2NNZIamGFO_z-v7nyaWdB7m6cELzOgSn66choqbubTkRapeAaK5eHjKvc6QK9N2V1GSIAiItcmTdFG0YoOm2YT-Dym9SQ23ZKOwJI5SDqfjS09JkR0WGN7fuhQTk9z87J0O948m3V3Q3o9HtlaOPqYJ9zKUIHU3HQUADDuFcuVjO_GGQs-hV_GUqYbQAii-7iwW-VCdmcPf6lGUu0-ou-fF2toulkHGd0Q_WInJeJPcpSRGGkuRDHm54qke-l9VisYN3ecbwxgrkxcrSmQsTHYX5PARh91Vf37R32QNE7MyGavOQnIer4Kp_g3wFlLx27kZ-_l-l7L-64sw0zlh-DeChx4hVFpSuICxuSYcgHuJkXwgQKJZ4ekDQwPrQXBM137xLTVup37_XsfPctWbmD1eQ-rVDdRlkQ0K2lrlTrmmDif8PJVuKF_9GPd0q0Qg2LYwQ73xYS_cDvKz9N2CIYPGqIfxFzxt52AHRAiK9gVtzBRJSeiRl0zw6VG1PyK1zJ4_VmyUjinUCXTDkySzhVuDyB-qu2phVFqTM8ZPQP2Aj34bvYRx0xeJpD0yLoyLUJpYM6P6AitkONU7X3AUeE3tgvyV86nScOr5LGoc8hFHQre9mUFguGn44-zUXTsQZS8ocAz9-KuHnNsLYxYv06Qs6DB0tkgmzry0I_yTOzg81RmNOnAtHUmAwbqdAHa2IXhP_1QvXmNQYDgtlf2BjFApNjRXO7YSlDczRRZ6fHlPRl4zSTO458pq8NQ-d9srkamFxAQksfw_-Cokw_UuezlDmy5EszwwtQ57t6lLoDAgr9hHlJ9_WK0]-->
    </g>
</svg>

Note: 
* Looks simple but technically challenging: Git protocol vs SCM-specific API
* Would also work without app repo, CI job on Config repo



##### Image updater  <!-- .element style="margin-top: 0px;margin-bottom:0px;z-index:1;position: absolute" -->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
  width=60% viewBox="0 0 617 415">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="224" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="318" y="7"/>
            <image height="48" width="48" x="402"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="9"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="387.5" y="71.9659">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="432" y="101"/>
            <image height="48" width="48" x="442"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="111"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="442"
                  y="173.9659">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="442"
                  y="193.0339">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="140" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,160 C37,160 40,160 44,156 C52,156 60,164 60,172 L60,176 C60,180 56,184 52,184 L14,184 C10,184 6,180 6,176 L6,172 C6,164 14,156 22,156 C26,160 29,160 33,160 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity gitRepo-->
        <g id="elem_gitRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="77"
                  x="128.5" y="110.5"/>
            <image height="48" width="48" x="138.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="57"
                  x="138.5" y="183.4659">Git Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="124.5" y="322"/>
            <image height="48" width="48" x="134.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="134.5" y="394.9659">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="279" y="322"/>
            <image height="48" width="48" x="289"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="289"
                  y="394.9659">OCI Registry
            </text>
        </g><!--link user to gitRepo-->
        <g id="link_user_gitRepo">
            <path d="M61.75,154 C81.2,154 101.13,154 122.38,154 " fill="none" id="user-to-gitRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="128.38,154,119.38,150,123.38,154,119.38,158,128.38,154"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="80"
                  y="146.9136">push
            </text>
        </g><!--reverse link gitRepo to ciServer-->
        <g id="link_gitRepo_ciServer">
            <path d="M166.5337,203.6497 C166.1937,239.8997 165.75,285.68 165.41,321.91 " fill="none"
                  id="gitRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="166.59,197.65,162.5058,206.6121,166.5431,202.6498,170.5054,206.6871,166.59,197.65"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="167"
                  y="278.9136">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M205.61,365.5 C227.68,365.5 249.23,365.5 272.88,365.5 " fill="none" id="ciServer-to-registry"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="278.88,365.5,269.88,361.5,273.88,365.5,269.88,369.5,278.88,365.5"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="227.25" y="340.4136">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="223.75" y="358.1407">image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M317.9262,167.484 C317.6294,167.9752 317.327,168.4791 317.0194,168.9953 C312.0981,177.255 305.8625,188.6762 300.1925,201.9 C288.8525,228.3475 279.775,262.005 288,292 C290.79,302.16 292.5033,307.0911 297.7033,316.4811 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="300.61,321.73,299.7492,311.9188,298.1877,317.3559,292.7506,315.7945,300.61,321.73"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="296.5" y="269.9136">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="289"
                  y="287.6407">image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry" class="fragment" data-fragment-index="1">
            <path d="M330.2011,231.1157 C330.2153,231.4662 330.2294,231.8167 330.2434,232.1673 C330.2715,232.8683 330.2991,233.5694 330.3264,234.2703 C330.3809,235.672 330.4338,237.0728 330.4849,238.4709 C330.6894,244.0634 330.865,249.6125 331,255 C331.55,277.05 331.6326,295.5901 331.5226,315.8501 "
                  fill="none" id="k8s-to-registry-1" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="331.49,321.85,335.5388,312.8719,331.5171,316.8501,327.5389,312.8284,331.49,321.85"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="36" x="332"
                  y="278.9136">watch
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to gitRepo-->
        <g id="link_k8s_gitRepo">
            <path d="M317.976,162.5733 C317.9039,162.6414 317.8315,162.7096 317.7586,162.778 C317.1759,163.3249 316.5686,163.8811 315.9388,164.4413 C310.9,168.9225 304.42,173.66 297.57,176 C267.55,186.26 237.6421,180.9574 211.2121,172.1474 "
                  fill="none" id="k8s-to-gitRepo" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="205.52,170.25,212.7932,176.8908,210.2634,171.8311,215.3231,169.3013,205.52,170.25"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62"
                  x="234.57" y="171.9136">pull config
            </text>
        </g><!--link k8s to gitRepo-->
        <g id="link_k8s_gitRepo" class="fragment" data-fragment-index="2">
            <path d="M317.7809,154 C317.5903,154 317.3968,154 317.2003,154 C316.8074,154 316.403,154 315.9873,154 C314.3245,154 312.4817,154 310.48,154 C302.4731,154 291.9225,154 280.1675,154 C256.6575,154 234.33,154 211.9,154 "
                  fill="none" id="k8s-to-gitRepo-1" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000" points="205.9,154,214.9,158,210.9,154,214.9,150,205.9,154"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="58"
                  x="236.57" y="128.9136">push new
            </text>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="84"
                  x="223.57" y="146.6407">image version
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M522,153.66 C533.83,124.5 557.22,124.62 557.22,154 C557.22,183.38 536.0856,189.0599 524.2556,159.8999 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000" points="522,154.34,521.6768,164.1836,523.8797,158.9732,529.09,161.1761,522,154.34"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="563.22" y="159.4136">deploy
            </text>
        </g><!--SRC=[fLFRRXen47ttLpYXhykcYP8WX920f6aKn5Oaj0-bGiOU5XUllVKb25NvztelBBj9eo8L7i0pvvmvuncVS4c5O-2qm6jhKzCDGqssxPZRjLiw0vegQK7QDbL9c72wvY32L11fNIA2ZLk2bc3112RLtF-62J4MTAZ1AASfX9jEbGkS56G90bXmVfbIs-PU0w4J1Yik0T-FeibiEZx2XtKfOVhYu8FxRB3oYCh6ytdxh7s6JchzbVgXLqYKRATPyR_b6JndUYPaYcv07m7qBjz7vRR8rjz70i5b-1FaXajpDDxi92t0rKMDnj7i9hgR7NTPL2Z7LEmEjxMFl9fPmqsjHcYL4YORv3i-5iFnx1QtpY_81ME7R3IEfel1CFfwktYQ3YQFNmRJsydJOZWOFTnDezda1hUkhwyHClu-Kg99WfU4RcAjd6HK2QLnZLP3tS2AE64_-Hv7EUpVbMfi0xySI0e3hTNsQ7vDW52hzAFT2S3bb12oAWQx1er_8-m_EGIV-YynE9j77jL0BP6nvvtsFlXPzUVoZbiyXLJbG1_A_h_5bYlZyQDx_0Zw6NHEeBmue1U46WG_AWz-w1Wy4YuRRGxtqT9V0vmjM64bIirSgXGqyVPpolxWApGunSlmhCWxcaBCZTMxdA7B0q9PtpZexzl2NPmwiqRxOoy8gWRod12eEdlQNgZapILFI0meQo9udHQYJECY_xsbWVreedhvIdLzehybbguBPDEU4DY_d1MFwp9rI4qaCuKbREUo5YnC-0uCLt9V8VlfOWQfKBitYrHEP5XjVhcIzQTL89Hce8jiw-FLLQV3ihaVv0u3-X_9B7vuMTy-tpyLs6LJhTUJYa6_NqDKh2hNhFY2_W00]-->
    </g>
</svg>

<div class="fragment" data-fragment-index="3" style="font-size: 90%">  

<img data-src="images/argo-icon.svg" title="argocd" style="height: 1.1em; vertical-align: middle;"/> <a href="https://github.com/argoproj-labs/argocd-image-updater">github.com/argoproj-labs/argocd-image-updater</a>

<img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> <a href="https://fluxcd.io/docs/guides/image-update/">fluxcd.io/docs/guides/image-update</a>
</div>

Note:
* Image updaters writes back to Git!
* Both support only branches, not PRs -> Hope for the future as AppSet Controller can communicate with PRs
* For more complex use cases we might use CI server to automate
* Argo CD image updater is external and not stable, yet



#### Dependency bot <!-- .element style="margin-top: 0px;margin-bottom:0px;z-index:1;position: absolute" -->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
  width=65% viewBox="0 0 770 528">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="455" y="50.3135"/>
            <image height="48" width="48" x="539"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="52.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="524.5" y="115.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="569" y="214.3135"/>
            <image height="48" width="48" x="579"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT4oVMRDG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyID/EAYRWn4DFWIlX7qqu99j+oOPV6Q7lXyVSr1098mNxx9O9symYW9sGrbizacfb996dvYAYvvrEd578WU6+/nnP769uJzwafc0nZbwzunn14/efZtenv+evl/+nRQY/Mn7HxMTi4g6/fTLu7gC/e2eplOUTODhm4urqCwFE0S8921EbA+rBTDxLcHK9YSwqj0sFsAgayI+ByZ8MAH3X331fg4C9ontD7XSaQHK0aFAIaDSqKClBEQnz6CjCkP6MSHyPQL8qbHDAlQEarAnaocRIlDldwQhAUTMd/QgQr5fhqQJOZ9FSMCo2rC8vbK3lKreK8wKULkHbIP5PmuZSamhAPLTd6ixZeQ91dHBYyhgFP01OX/3+fnV6kE7lFGRIBMnjaKpNBSgcp92f2+GmRSZgxQwqjzZUul5FAEqfVh2P6EsjyJA/UuSm35CWR5FgKoCW5TNyL96FHUlbAaijNb019fS+8/S+2sG2Bubhr2xadgbm4a9sRj81VPq1pJq4wdZQntVU7N3lCmGOkIsgR9kCdX7JQJd31eMLQX0yl2GTFLB+y7GdRKgTqW9A2UxrosA+np/BvaBv78YWwrwg2SojjOgd6QpRkSAvXTCEVUCkq8crqg+0G+yDPGjwEHT3w+LEREAtjiZ9khQ/Fg11KNsMaICQC8X15DJq7IJSCvfx1iMjAAwcpqhPSsrcG1UFIqRFQDoszTnmdRowxrm/BejJ8DeIsyBzR19ZiaXVZ336B0dPIuhBMzlp4d9RmJwqhK/7BminfET3WdDAYBriFDXD4FI5FMCIDmrHvq3RDQV0wKMpEUmFaIgxUbVRnFWgHJKjm4B9YEvymIoAb3zR83MVxcDYxGAOd8RFkN9aFAr0KN9RrIXtaSFvbhlY5LfGX8RFoNoMEDNNUt7LDYNe2PTsDf+AwK5VHkDkw9+AAAAAElFTkSuQmCC"
                   y="224.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="579"
                  y="287.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="579"
                  y="306.3474">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="253.3135" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,273.3135 C37,273.3135 40,273.3135 44,269.3135 C52,269.3135 60,277.3135 60,285.3135 L60,289.3135 C60,293.3135 56,297.3135 52,297.3135 L14,297.3135 C10,297.3135 6,293.3135 6,289.3135 L6,285.3135 C6,277.3135 14,269.3135 22,269.3135 C26,273.3135 29,273.3135 33,273.3135 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity gitRepo-->
        <g id="elem_gitRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="77"
                  x="128.5" y="223.8135"/>
            <image height="48" width="48" x="138.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="57"
                  x="138.5" y="296.7795">Git Repo
            </text>
        </g><!--entity bot-->
        <g id="elem_bot">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="130"
                  x="298" y="223.8135"/>
            <image height="48" width="48" x="308"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABzElEQVR4Xu2ZTUrEQBCF5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIB/CIMIkbeY0KnX3aQ6Facb+sEHMy8JqZd0OtUzk43jh0nJkFEanS/7V6/N7WLZzD5/1sLJ/Uezefq4LYuM0Sk+ByGILDJG+wFXPhftTJ+vZaEh2g9Inot2z+e970INMIbcAHg2Y0Mq+wArD8/o1tnsoNgA0Pvyl0IUFQC6nH93no/iAkDuXSgygLu9DYBbk4vcKyy3QXsXLxwAqXKQHONyO+QNADDfoqGaPn2tBcz5bj3qADkii4dqgP8CawNZPFRMABTqk9sb0UG5gFkRrYNP7n50oAWrpSkKSCEmOc3SyYeAMTv2yk621lTEEMZ+mx/eLOg9QUWkMvab3Fc8ICOVo7s3eU4TYUjKYeNCRipoBaTwQOLKacEkgCm0z29EZKTiC4CrJ/ezhoxUig2A3h3Fh+ZvzExyHWsJGVpChbvCPn3GcwpkaNBMnb5e3wIyNISaLZ9C8/hQyNBQAxhAhoYawAAyNNQABpChoQYwgAwNNYABZGhAlykLDUnzx50GMrT0WUqi3ZbHWUFGCrgTGE4+YutZC8goDTJK4w8YT8PaxNGRbQAAAABJRU5ErkJggg=="
                   y="233.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="110" x="308"
                  y="296.7795">Dependency bot
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="149.5" y="435.3135"/>
            <image height="48" width="48" x="159.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="159.5" y="508.2795">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="311" y="435.3135"/>
            <image height="48" width="48" x="321"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="445.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="321"
                  y="508.2795">OCI Registry
            </text>
        </g><!--link user to gitRepo-->
        <g id="link_user_gitRepo">
            <path d="M61.75,267.3135 C81.2,267.3135 101.13,267.3135 122.38,267.3135 " fill="none" id="user-to-gitRepo"
                  style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="128.38,267.3135,119.38,263.3135,123.38,267.3135,119.38,271.3135,128.38,267.3135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="80"
                  y="260.2271">push
            </text>
        </g><!--reverse link gitRepo to ciServer-->
        <g id="link_gitRepo_ciServer">
            <path d="M172.3348,316.9277 C176.3148,353.1777 181.35,398.9935 185.32,435.2235 " fill="none"
                  id="gitRepo-backto-ciServer" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="171.68,310.9635,168.6861,320.3463,172.2257,315.9337,176.6383,319.4732,171.68,310.9635"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="183"
                  y="392.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M230.56,478.8135 C254.53,478.8135 279.13,478.8135 304.87,478.8135 " fill="none"
                  id="ciServer-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="310.87,478.8135,301.87,474.8135,305.87,478.8135,301.87,482.8135,310.87,478.8135"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="255.75" y="453.7271">push
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="252.25" y="471.4542">image
            </text>
        </g><!--link bot to registry-->
        <g id="link_bot_registry" class="fragment" data-fragment-index="1">
            <path d="M363,310.9635 C363,347.2135 363,392.9935 363,429.2235 " fill="none" id="bot-to-registry"
                  style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000" points="363,435.2235,367,426.2235,363,430.2235,359,426.2235,363,435.2235"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="36" x="364"
                  y="392.2271">watch
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M454.9135,332.1717 C454.8762,332.3296 454.8387,332.4875 454.8011,332.6455 C454.6506,333.2772 454.4973,333.909 454.3412,334.5406 C454.029,335.8039 453.7056,337.0665 453.3706,338.3265 C452.7006,340.8465 451.9841,343.3562 451.218,345.8402 C449.6858,350.8082 447.955,355.6735 446,360.3135 C434.7,387.1235 420.186,409.1392 403.696,430.3192 "
                  fill="none" id="k8s-to-registry" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="400.01,435.0535,408.6952,430.4094,403.0816,431.1083,402.3827,425.4948,400.01,435.0535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="449.5" y="383.2271">pull
            </text>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="442"
                  y="400.9542">image
            </text>
        </g><!--reverse link gitRepo to bot-->
        <g id="link_gitRepo_bot" class="fragment" data-fragment-index="2">
            <path d="M211.72,267.3135 C237.94,267.3135 267.22,267.3135 297.73,267.3135 " fill="none"
                  id="gitRepo-backto-bot" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="205.72,267.3135,214.72,271.3135,210.72,267.3135,214.72,263.3135,205.72,267.3135"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="56"
                  x="223.75" y="260.2271">create PR
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--reverse link gitRepo to k8s-->
        <g id="link_gitRepo_k8s">
            <path d="M180.1508,217.8302 C194.9008,170.9502 223.89,104.6435 280,72.3135 C343.92,35.4735 391.61,22.4635 446,72.3135 C447.9416,74.0932 449.7812,75.9439 451.5232,77.8596 C452.3942,78.8174 453.2408,79.7915 454.0635,80.7811 C454.2692,81.0285 454.4734,81.2769 454.6762,81.5262 "
                  fill="none" id="gitRepo-backto-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="178.35,223.5535,184.8667,216.169,179.8506,218.784,177.2356,213.7679,178.35,223.5535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="303"
                  y="22.2271">pull config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M675.5,266.9735 C687.33,237.8135 710.72,237.9335 710.72,267.3135 C710.72,296.6935 689.5856,302.3734 677.7556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#000000;stroke-width:1.0;"/>
            <polygon fill="#000000"
                     points="675.5,267.6535,675.1768,277.4971,677.3797,272.2868,682.59,274.4896,675.5,267.6535"
                     style="stroke:#000000;stroke-width:1.0;"/>
            <text fill="#000000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="716.72" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLFRRXen57ptLpYXhyksIPkW225nITCeY8qseNreAcJi0xXuxQqlGQZglzTxONS9JOjKU02VCpCUZuzFkAJ2CN1Qu9MrgRaAGqqsxIMtApTt1ZHLqeAqRQgICE5qnK64gI3IkaG4QpS7BS622KogkVyD4s8iw523KKvJ2DUTgXSuASWS1B3Wx4DARPjx3OHE62ou17mxZ2RJU7o43-jImlHvxOFxRh3mYCh6yrdxVVijEccShzGFlKAYP3lDDlzJdy5pfcT2fkWQz150x_9rL6wBR7mU2GGVmfHmQMTQ2V4twHSaivNqQF1ta6ikJO6lqXsEe-aekfaUbp0LoZ6rT7N4kygBYzuprDWZj4e9azt-ApvcW_7q6hVEpiavOtKt6aVnh3-8Fb_F7kF-vE6-7rzF7cU3_l3k9ewcan5kNLvU8cJy4LEYIOBdXAwNMZd9g19AumQjWHh1WZXXF_ep3dFOltTgi0tyS20fzBLMcwFv3G52hT8FTYi0bnU54FQVl8vF_PSOd5r2NjL0BP5B3pxjll4Nr7kIDzpY65AL0tqf-t-8RGwN9uqW1ScyyIsUAvjJ_UyXhPmOpnZUuWVGpw1pCEN5uf1HF0rFY3mZXYKtLczpZYuN2EqH_21uz5t7uA5msU3aO5_5Fm_Lit4lpXobvacg53JnEUMKtGBzGYWB30UzNHxu2gVEhD1ksGs2wWXvJmXKhJrjPxNaFKcUa2KW7n4ElhOqi6zxc6u-NrU-tjiGIrSeSn-yr15YfrFRACIoxFTbg0PY0T_73MoUII64_OjSy6MnJwziC4Y5sXxCLXdZe7eCvPGsNrk1K9g1BhgjTnSNdGxBegpbwflu7yciNZ-sBvzk7mliV5-jsvMAGQ_NG5IighU_epVx6m00]-->
    </g>
</svg>

<div class="fragment" data-fragment-index="3">
    e.g.  <i class='fab fa-github'></i> <a href="https://github.com/renovatebot/renovate">github.com/renovatebot/renovate</a>
</div>

Note:
* 



#### Pull Requests

> GitOps - Operations by Pull Request  
> 🌐 [weave.works/blog/gitops-operations-by-pull-request](https://weave.works/blog/gitops-operations-by-pull-request)

But: avoid cargo cult

<a  href="https://opengitops.dev/" class="tooltip-left floatRight">
  <img data-src="images/opengitops.png" width="70%;" style="border-radius: 50%" class="zoom1-5x" />
  <span class="tooltip-left-text">OpenGitOps</span>
</a> 

ℹ️ PRs not mentioned in [principles](https://opengitops.dev/#principles)

Note:
* e.g. upgrading 3rd party apps with only two stages in paring programming -> Why create PR?
* manual creation of PRs might cause a lot of work, use automation



## Wiring patterns <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="wiring" -->
Wiring up operator, repos, folders, envs, etc.

* **Bootstrapping**: `kubectl`, operator-specific CLI
* **Linking/Grouping**:
  * Operator-specific CRDs
    * <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> `Kustomization`
    * <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> `Application`
  * **Nesting**: ️<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> App of Apps  
    (same pattern with <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> `Kustomization`)
  * **Templating**: <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> `ApplicationSets` - folders, lists, config files, PRs

Note:
* Bootstrapping: Always an imperative part
* Linking folders and also across repos
CRDs
* Generic `Kustomization.v1beta1.kustomize.config.k8s.io`
* Flux `kustomize.toolkit.fluxcd.io/v1beta2/kustomizations`
* ArgoCD `argoproj.io/v1alpha1/applications`
