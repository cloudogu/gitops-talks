## Categories of patterns

AKA strategies, models, approaches, best practices

* [**Operator deployment**](#deployment-patterns): GitOps operators ↔ Clusters/Namespaces
* [**Repository**](#repo-patterns): How many repos?
* [**Promotion**](#release-promotion): How to model environments/stages?
* [**Wiring**](#wiring): Bootstrapping operator, linking repos and folders 

Note: 
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
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="140.33,267.3135,131.33,263.3135,135.33,267.3135,131.33,271.3135,140.33,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
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
                  id="appRepo-backto-ciServer" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="195.82,310.9635,194.5835,320.7345,197.261,315.7514,202.244,318.4289,195.82,310.9635"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="225"
                  y="392.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M286.79,478.8135 C314.66,478.8135 345.82,478.8135 375.83,478.8135 " fill="none"
                  id="ciServer-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="381.83,478.8135,372.83,474.8135,376.83,478.8135,372.83,482.8135,381.83,478.8135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="319.25" y="453.7271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="315.75" y="471.4542">image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M435.9049,344.7015 C435.9009,344.9761 435.897,345.2509 435.8931,345.526 C435.8852,346.0762 435.8773,346.6275 435.8694,347.1798 C435.8536,348.2844 435.8377,349.3931 435.8218,350.5053 C435.7899,352.7298 435.7579,354.9686 435.7257,357.2174 C435.5969,366.2123 435.4659,375.3669 435.3364,384.4075 C435.0775,402.4885 434.9111,414.1142 434.6961,429.0942 "
                  fill="none" id="k8s-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="434.61,435.0935,438.7387,426.1519,434.6818,430.0941,430.7396,426.0371,434.61,435.0935"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="443.5" y="383.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="436"
                  y="400.9542">image
            </text>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s" class="fragment" data-fragment-index="2">
            <path d="M369.2,267.3135 C385.385,267.3135 396.6125,267.3135 410.3488,267.3135 C417.2169,267.3135 423.2122,267.3135 427.768,267.3135 C428.0527,267.3135 428.3318,267.3135 428.6052,267.3135 C428.6735,267.3135 428.7415,267.3135 428.8091,267.3135 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="363.2,267.3135,372.2,271.3135,368.2,267.3135,372.2,263.3135,363.2,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="388.82" y="285.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="381.32" y="302.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M635,266.9735 C646.83,237.8135 670.22,237.9335 670.22,267.3135 C670.22,296.6935 649.0856,302.3734 637.2556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="635,267.6535,634.6768,277.4971,636.8797,272.2868,642.09,274.4896,635,267.6535"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
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
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="142.46,154,133.46,150,137.46,154,133.46,158,142.46,154"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="87"
                  y="110.9136">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="87.5"
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
                  id="appRepo-backto-ciServer" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="201.29,197.65,200.7632,207.4848,203.0734,202.3211,208.237,204.6313,201.29,197.65"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="238"
                  y="278.9136">pull
            </text>
        </g><!--reverse link registry to ciServer-->
        <g id="link_registry_ciServer">
            <path d="M405.94,365.5 C372.78,365.5 336.45,365.5 305.75,365.5 " fill="none" id="registry-backto-ciServer"
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="411.94,365.5,402.94,361.5,406.94,365.5,402.94,369.5,411.94,365.5"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="70"
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
                  fill="none" id="k8s-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="464,321.78,468,312.78,464,316.78,460,312.78,464,321.78"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="465"
                  y="278.9136">pull image
            </text>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s">
            <path d="M371.2,154 C391.57,154 408.5525,154 427.2225,154 C436.5575,154 444.8144,154 451.1275,154 C452.7058,154 454.1626,154 455.4844,154 C455.6496,154 455.8127,154 455.9737,154 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="365.2,154,374.2,158,370.2,154,374.2,150,365.2,154"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62"
                  x="383.32" y="171.9136">pull config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M660,153.66 C671.83,124.5 695.22,124.62 695.22,154 C695.22,183.38 674.0856,189.0599 662.2556,159.8999 "
                  fill="none" id="k8s-to-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="660,154.34,659.6768,164.1836,661.8797,158.9732,667.09,161.1761,660,154.34"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
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



<!-- .slide: id="config-replication-oci" style="font-size: 85%" -->
**💡 Also works with OCI** <!-- .element: style="z-index:1;position: absolute" -->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width=60% viewBox="0 0 587 417" style="margin-left: 50px">
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="224" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="272" y="7"/>
            <image height="48" width="48" x="356"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="9"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="341.5" y="71.9659">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="386" y="101"/>
            <image height="48" width="48" x="396"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="111"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="396"
                  y="173.9659">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="396"
                  y="193.0339">operator
            </text>
        </g><!--entity user-->
        <g id="elem_user">
            <ellipse cx="33" cy="140" fill="#23A3DD" rx="16" ry="16" style="stroke:#16688D;stroke-width:1.5;"/>
            <path d="M33,160 C37,160 40,160 44,156 C52,156 60,164 60,172 L60,176 C60,180 56,184 52,184 L14,184 C10,184 6,180 6,176 L6,172 C6,164 14,156 22,156 C26,160 29,160 33,160 "
                  fill="#23A3DD" style="stroke:#16688D;stroke-width:1.5;"/>
        </g><!--entity appRepo-->
        <g id="elem_appRepo">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="68"
                  x="128" y="110.5"/>
            <image height="48" width="48" x="138"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="120.5"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="34" x="138"
                  y="183.4659">Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="121.5" y="322"/>
            <image height="48" width="48" x="131.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="131.5" y="394.9659">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="276" y="322"/>
            <image height="48" width="48" x="286"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="332"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="286"
                  y="394.9659">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.63,154 C81.23,154 101.3,154 121.96,154 " fill="none" id="user-to-appRepo"
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="127.96,154,118.96,150,122.96,154,118.96,158,127.96,154"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="79.75" y="146.9136">push
            </text>
        </g><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M162,203.65 C162,239.9 162,285.68 162,321.91 " fill="none" id="appRepo-backto-ciServer"
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="162,197.65,158,206.65,162,202.65,166,206.65,162,197.65"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="163"
                  y="278.9136">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M202.61,365.5 C224.68,365.5 246.23,365.5 269.88,365.5 " fill="none" id="ciServer-to-registry"
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="275.88,365.5,266.88,361.5,270.88,365.5,266.88,369.5,275.88,365.5"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="224.25" y="340.4136">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="220.75" y="358.1407">image
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M202.69,397.99 C208.18,401.05 213.93,403.68 219.75,405.5 C236.29,410.67 242.01,409.99 258.75,405.5 C264.52,403.96 264.8199,404.2432 270.4499,401.7332 "
                  fill="none" id="ciServer-to-registry-1" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="275.93,399.29,266.0811,399.3014,271.3633,401.326,269.3387,406.6081,275.93,399.29"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="224.25" y="383.4136" font-weight="bolder">push
            </text>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="220.75" y="401.1407" font-weight="bolder">config
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M271.7989,168.3898 C271.7257,168.5188 271.6521,168.6485 271.5783,168.7791 C271.4306,169.0402 271.2818,169.3045 271.1317,169.5719 C266.3303,178.1294 260.3394,189.8975 255.1663,203.3475 C244.82,230.2475 237.745,263.875 250,292 C255.76,305.22 260.952,312.9334 271.372,323.0834 "
                  fill="none" id="k8s-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="275.67,327.27,272.0141,318.1248,272.0884,323.7812,266.432,323.8554,275.67,327.27"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="251"
                  y="278.9136">pull image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M311.4757,231.5333 C311.7029,232.2459 311.9281,232.9591 312.1509,233.6728 C312.5966,235.1001 313.0331,236.5292 313.4593,237.9582 C315.1642,243.6745 316.7038,249.3912 318,255 C323.03,276.76 325.1839,295.5212 326.4339,315.9712 "
                  fill="none" id="k8s-to-registry-1" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="326.8,321.96,330.2435,312.7327,326.4949,316.9693,322.2584,313.2208,326.8,321.96"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="332.5" y="269.9136" font-weight="bolder">pull
            </text>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="325"
                  y="287.6407" font-weight="bolder">config
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M492.5,153.66 C504.33,124.5 527.72,124.62 527.72,154 C527.72,183.39 506.5863,189.0596 494.7563,159.9096 "
                  fill="none" id="k8s-to-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="492.5,154.35,492.178,164.1936,494.3802,158.983,499.5908,161.1852,492.5,154.35"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="533.72" y="159.4136">deploy
            </text>
        </g><!--SRC=[fPFVRzem4CVV_LUuPQyXNQkk224ae5rN5P4fBTl3EY5Z7-3Xs9v_j49J__Sv2OIa6nhImaFmtUU-Txwxd719XMVWZS0hvxJjnh4XB-qbToi_znOCLTA1T6sgiZZZTCL1n5eGwNmcehMVWv7Wm4PM6nxUSKQi0nCRiCeR2l6wK_aYBmMPWm0MdLzgwjeyQ21qmc319U2xKJAPfkCZwd1U4sOkzdNmu8qMWQZAU3vldxNFq4djVblzE2XaIhPrdlnlVWRFkPwDcQ9hC4U0eSh3L54MUGdzo22wZ7-0N7DfZ-RjHj8IhXer6YVJw-HsUbopg52UgQNVTsjdUJEpHZMr7B5JIjXya0Vgc0t7qnlSEhyW5upjlSauIMU3OVBbPlQO3YOFdmVfpUHnDXoCxc_JP3gvngshgok4REY79ePaU4xeUccKbumgeGokXTMeQrWGBzp7SCTHWVqxKotQmayFaiB06FLoT7nDW52dp8FR2C3RAI5KsF1f-16Bym4W0zGHkGpGQUzT64p_IQQWLG4GhVF_JMQx5u4RtU47CCzW2fZoye2QU9X6GEyx5e-4pwTNmC6AVo4SdWQSxr2WRxbBj7sIIeCXeU0YP7T0hyq4vVA7g2JKayAIMsSsHOJP7X3ARugZ_kv2k8knzdQ5TkTU55Nr1wVsGg3g7E9sIeNFhfuapyWIQiYtbW7slG7sYjNe1dk_ZAaPmjel-1BbNOZUoWk1I_N2Mmf7XvM5EAZSBzhSnGoqK9i_LcCxW66rozibgtyi9Q4C0rDwM-y_VEXqM1X2JMu_Z_-HpEtxR-Nhfxl7afqtrNezgHZq-pMYYgfypOolw3S0]-->
    </g>
</svg>

<p class="fragment" data-fragment-index="1" style="margin-bottom:0px;">
<img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/>
<a href="https://fluxcd.io/flux/cheatsheets/oci-artifacts/">fluxcd.io/flux/cheatsheets/oci-artifacts</a>
</p>




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
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="142.46,267.3135,133.46,263.3135,137.46,267.3135,133.46,271.3135,142.46,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="87"
                  y="224.2271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="87.5"
                  y="241.9542">code
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="80"
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
                  id="appRepo-backto-ciServer" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="186.11,310.8135,182.3475,319.9154,186.2412,315.8118,190.3448,319.7055,186.11,310.8135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="190"
                  y="383.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M230.71,460.8135 C283.34,460.8135 369.08,460.8135 426.79,460.8135 " fill="none"
                  id="ciServer-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="432.79,460.8135,423.79,456.8135,427.79,460.8135,423.79,464.8135,432.79,460.8135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="70"
                  x="307.25" y="453.7271">push image
            </text>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M486.8046,344.6057 C486.8007,344.8548 486.7968,345.1041 486.7929,345.3536 C486.785,345.8525 486.7772,346.3522 486.7693,346.8525 C486.6437,354.8573 486.5155,363.028 486.3884,371.1309 C486.1344,387.3367 485.9785,397.2718 485.7635,411.0643 "
                  fill="none" id="k8s-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="485.67,417.0635,489.8098,408.127,485.7479,412.0642,481.8108,408.0023,485.67,417.0635"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="62" x="487"
                  y="383.2271">pull image
            </text>
        </g><!--reverse link configRepo to k8s-->
        <g id="link_configRepo_k8s">
            <path d="M420.2,267.3135 C436.385,267.3135 447.6125,267.3135 461.3488,267.3135 C468.2169,267.3135 474.2122,267.3135 478.768,267.3135 C479.0527,267.3135 479.3318,267.3135 479.6052,267.3135 C479.6735,267.3135 479.7415,267.3135 479.8091,267.3135 "
                  fill="none" id="configRepo-backto-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="414.2,267.3135,423.2,271.3135,419.2,267.3135,423.2,263.3135,414.2,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="439.82" y="285.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
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
                  fill="none" id="k8s-to-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="684,267.9535,683.9792,277.8024,686.0211,272.5269,691.2966,274.5687,684,267.9535"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
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
  <p class="fragment" fragment-index="3" style="margin-right: 200px;">👈️ <img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" /> example</p>
<br/>
  <p class="fragment" fragment-index="4">💡 Same pattern for<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3rd-party apps</p>
<br/>
  <p class="fragment" fragment-index="5">💡 Also works with <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/></p>
</div>

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" contentStyleType="text/css"
    width=60% viewBox="0 0 727 546">
    <defs/>
    <g><!--cluster k8s-->
        <g id="cluster_k8s">
            <rect fill="#23A3DD" height="294" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:1.0;" width="216"
                  x="428" y="68.3135"/>
            <image height="48" width="48" x="512"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEPElEQVR4XtWXMaoVQRBF/15cgTtwB0aG7sAduAJ3YG4gmhj9yEgQjIw0EkRFEJEPIiKYPTkfLtx3q3qm578xeMHlzVR3V91bXdU97+LWk48X54xiODcUw564/ezTPZD2PVEMpwLC919+Ozx+//Pw+tufa/CM7X+IKYabQsSffvh1Tfrd1d8jYGNsbyHFsBWQefDq+5B4QkJYs4eQYpjFVuIJF3LnxZfn6X8WxbAGgs0SVw909r2EFMMIOH/45sfh8vPvllRCxFLoaC12fBNji5BiSGwlLjCfrAKec3wJW4QUg0CN34S4k4C8fOT4DGaEFIOTvwnxDH6KAAAHfIxOrGIAKKZ209ka1LTemN7wQq5bAxfh3cuvh+Q5FMBl02VtREI21hDMTxQyR3BsjKkkRz7SDnQBJs9WgM53FyDHEHASGpupVaE7FFy8PkFSHJzSFygGBDx6e1WciCTZdALaXn24QZBs6ZPB33lWLfv3kicgxQmjPigCcDLKgotQfYtUBmfbmQc6osSSH8RkYhRT8fHR7XARgKOlBlbW3ZmTzDmjMW/KnNNBCUm+RUDWf0LZVVORff8KFZYEaL2XU97YCTh1fXD0MnP+M0aPqHREAqLYvTeY4yXJGHO8Z1R+Xd9l3K4PioBuK/0dEmpI3bTaWtbruFQwJQUbYy4Yu2za+YztUOKGAhicqf9sTn5n/6hkyXX+PGkuqOuDI+fdBeYOvHx8Lvasa5FNUVnvWjdTRtr9VoC2es2BjkFvdtYom35EQshLzPtBcdScM/EZ8zIsAmYykAKYz6/XuJPxXfMe8bXql05AvuOrFbBW/ymArVQTZmOJDPOdoM/xQ0ClpzUZ16GeKQIwdgKURRx3dS7CDtmY6/P51U6kD4AgYmh3MvvA76AjAd0FhgMWKEs6v7UGMthYy9b68ZnkmMsYc9Qbal7NYR3+sEuMRPgvY0VAV/+8qwlFUiXUnRo8eyN7pr2Bfb76QwJ5J5YOAe2G82LetACVj8a8pvNI9DERkmBsXuPaXT+BvHQczgnAtQjoSqiDskyGRFKBddFASP5clPpMxJT9vMSWgL+2hLqSSOL+nKWkXklCnWDmZul0pZLxXXQRAEaZyK3kWZlQuXiTe6mA3AU1r+9Uxkx4IpzzkQCQde0O8t1F5E6qfDQvMyfyXawE43l8DgVszYpn130o09qZJD9TNkKXqKGADJDOEp4d1bTKw+Fjo13uwJxM0KoAoFJYC6La1D0BMb+sBGxqXuZ2vZZgPEsvUQyOUVN7AJ3lszumklurfyUmmzZRDIml7VYQ5iwJ3brGyzL5JIohsdTUCgSRbnwE5qqkcg3vS02bKIYOo6bO4HsAn0tNmyiGEWab+hTge61pE8WwhLWmPgXqjbWmTRTDGryp98Rs0yaKYQ3+CaDPhVOho3i27h3FMAvdqHtgS80niuHcUAznhn+RalH51y+k3gAAAABJRU5ErkJggg=="
                   y="70.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
                  textLength="77" x="497.5" y="133.2795">K8s Cluster
            </text>
        </g><!--entity operator-->
        <g id="elem_operator">
            <rect fill="#23A3DD" height="106.1358" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="78"
                  x="542" y="232.3135"/>
            <image height="48" width="48" x="552"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAC5UlEQVR4XtWZT2oVQRDGcxdP4A2ycO8JvIE38AJ6A/cuxJWrrLISAm50pStBNAghSMBoCAQRRn5CNW11V3dVT7/Hmw8+XtEz/eerrqrpmXd078Xnoy2zaNgai4ZZvP/qy4Pj1+dPIba+7uHjN5fL+a/f//HD1d3CmHJP0WmED0++vXv2/mo5u7hdru/+LBaY/OWnnwsL84ji3hqevP2+yD1FJy9ZAIvGK6M4+XqzIF6PLdyZABY+E+xcTcjzjz/0rf8wLIBJ1ni8Bxacz2c5akgAnfYB8kTyw5ozLMDyxK5AIaDSTBHgXTyTknSPTi+qFYbwY2Li3QPGs+Z2C7A8kIMtpyzqvi0i0EpQD1wC8JjuqIGHdL8ICRMcEIVLQKvasL21sjdKq95b6AqwYg9Iguk+axkJqaYA4lN3yDHT85o8mT1oCmh5f03MU53YPSiHMioSZOGEkTeUmgKs2Kdd3xthJER6MAW0Kk+0VGruRYAVPmy7XlCUexFgPSWJTb2gKPciwEqiGWWTEJyFvBIWE0FKqVBfW8t87BHq8YoJtsaiYWssGrbGomFrTAaPekrdWuYlbg2pNHrs2lEmGdYRYgS1ahGl9X0JR+f3JeOQBLSONHrsZBySAOuBWjtQJuNQBNBXjycgD/T9yZgpQE8SoeV9UDvSJMMjQD46MRBxCkkqzjlUH6iTLEL6WmBufT9MhkcAmHEyrRGnWJUHWI5JhlcAqMXiGvYWzzFf9xEmIyIA8B6rBxuhvCu30CoKyYgKAExsbW2PLKqVsILeq2wyagLkK0IP8nmx5Skhie9ZOKgdHTS7AnrxqSF/IzE5VYlfcoaQi4zjWXxXAOAaIqzru4B38W4BkPCwXvpnohfzmm4BQsIiEgpe4BxPDml2BViDEtczhJAzo5UMJsMSUDt/5GTLo6HFXDigN7aHybD+aLB2oEb5G4nFUYmoPPLhlsT0ltoIk4E3mCDnLj+lz2LRsDUWDVvjX+CEVdW3rXt3AAAAAElFTkSuQmCC"
                   y="242.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="46" x="552"
                  y="305.2795">GitOps
            </text>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="58" x="552"
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
                  x="257" y="241.8135"/>
            <image height="48" width="48" x="267"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACD0lEQVR4XtWWzUkEQRCFzcUIzMG7EZiBGRiBGXj3IAawJ0+C4EVPehJERVhEFvxDWERYeUIvRb3u6r/alX7wXT6bnXrDWDMbm0d3GyNDYjRIjAaJ0SAxGiRGg8RokPBk/+JlAbT3hIQHWyf3248f34uQ69l8AafPeUCiFz38qkuQ6CE1fMgqSpDoYe/sWc9M8S5BogU50LpLkKglPDbHt+/LbbPOEiRq0M/8f5QgUYoePkSWCBxczfSxZXpLkCghNXzI4c0rlUCxVHpKkMiRGx6JFcg9Uq0lSFiUDI+cT7+owO7pVB+jtJQgkaJ0+BA89/o38F2US20JEjFqhw8Jg8gPOu8SJDStwyNhCAwkt5NnCRKSnuERWQCRJfA30LtiSUgmD5/6N6uiCyCxDWWtWMygz0tISHruPlJawFqxmEGfl5CQ4GI9iRWIrVjrOrE3u4SEBhdsTawAIles9X6IldWQiNFaIlUAeZv//JFKyfCARIqWElYBKzivr5+ChEVNCbk9rFWpU3rnAyRylJSI3cGSlVw7PCBRQq5EbFXm3r4twwMSpVglYi8fa1W2Dg9I1GCVkB9wvavSgkQtVgmsSett3js8INGCVSKV2D96CyRaqSnhNTwg0UNJCc/hAYlerBLewwMSHsRKrGJ4QMIL+eb12DYpSHiyM3m6BNp7QmI0SIwGidEgMRokRoPEaPwCtEzAQRTl7q0AAAAASUVORK5CYII="
                   y="251.8135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="82" x="267"
                  y="314.7795">Config Repo
            </text>
        </g><!--entity ciServer-->
        <g id="elem_ciServer">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="81"
                  x="229.5" y="453.3135"/>
            <image height="48" width="48" x="239.5"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEc0lEQVR4XtWYS4oUQRCG5y6ewBu4cO8JvIE38AJ6A/cuxJWrWbkSBDe60pUgOgiDyIAvhEGElm/gkzAiMyura4TphJ+q/rMqMl4ZGdVH1x6+OzpkFOLQUIjLwPXH72/effF59+jtt93z05+712fnu5Pvvy6u/IZn/saTk3v53bUoxBagFErmoeIaEge/eS/LmkUh9sH9V2e7r+e//1EMZW8/PW0qRoTuPPt0EQkHhuwTkUKsAZ5DcZTlXkNQLj/bA8ZEB9w6/vgyPzNCIWaAp0wHvYw3jz/82KFQfn4GvGf69SLXQiGWgHcZD958+bsIiuPF/Ow+0IjZSBRiBIQiPG46DNqyCTOIBOkEZqJZiBHwDp5HMGF2I+bntgLZDCKb5zIK0YNCLYNc8dIoXzEQg2erCxHO1Wzp3UK0QIo4jAA8ed/LfXMZhTgD8nwLGGxkdVTcay0UIgNlVSRvLAxrLYDCYCaHR0AGhmQ+ohAZer+VKq0IEPKlRWeh80aOKESGp2XmncuGYUDmtoBUzJGPKESGPUzmnRt5J2ONYZZmG788LwqRgfI9A3p8D62S2+tKeRbnsMdymkYUImMpApkboXXoEZWWYfIo3yoUohAZCKECcajExo25mYMGRA8jI3ucTW+eozhyPWc2G2A954owN7X3+fkWlg4n6z73zNlb2anubYCnr/nIQrH95TqzMWPr0dv0KN1KyU0G8DKDe4QwTAG9mXN6X2AYUchR3bSJedENzAJ4yf4Gj854fw1wDA6KHseg0QdSISL84uLe1OH+shWP8HvD35sOMlPFTfc/FRc4LbYiS98FhchA2Gy5XIOc63iZdaLHUdwM6KEQGYY0btbL6HcwgKpjzUdxc92qxZpLzitECwhhsIj3o43VQ2wbUBJPx/xmjg1spcPApSpXiB6s/YxWvZ5B/OLiiucBsnUMA+/bSudDL6MQSyAK+xgQO1dLsY2itT5+7Tmf5WQUYgkeaJkHo3CjGEbM7B0370yaFmIJltaWcPuYzAtbE4aRtIWI8tjgM94HhZiBFSTzoPedLDwQkQE81Z3XyFE0IwoxA//g6p2QKDarQISthBHK8y0UYgksElvsPC9IjXxYjUAKWZls2ZE/OoVBIXpAkIIVzhilC8/HP4BbQHFlYYBRJYJyo1JaiBZs6lRYr1i7reUsHsug/+uoCAZZLnlXmXlosEYweulaiIiYLizYCqfzLObmNhWs5XEwDzTGeb/ANFz5sXK11i9KC+s9yoxSAKiIpdDvBudVDFnAg8syGhVzI0f59mOtKBRl4nEfT88l5D3SWswSinyuRCn2R4L342+rXkuXoghKM0afcSOwCNHoGeDG5rfnQX4ufg8AjOxVvELoxcyvAQu2TmqBMqzjxs4RyMqSZj2HFmLtSdiCbXHmgd5EIZ9zwLc+oEaltBBAYZlfg9b7lk4VJKVQjHTTYO4xwhRkPqdURCGAaWS/vg8YRBMF4reEV56JnKVX3t9Wrazj0AAWJYevClrVZ2jAIaEQh4Y/sY0pxpwp2icAAAAASUVORK5CYII="
                   y="463.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="61"
                  x="239.5" y="526.2795">CI Server
            </text>
        </g><!--entity registry-->
        <g id="elem_registry">
            <rect fill="#23A3DD" height="87.0679" rx="2.5" ry="2.5" style="stroke:#16688D;stroke-width:0.5;" width="104"
                  x="384" y="453.3135"/>
            <image height="48" width="48" x="394"
                   xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACkUlEQVR4Xu2XTWpVQRCFs5eswB1k4NwVuIPsIBvQHTh3II4cZeRIEJzoKI4CQYMQJAT8QwgiPPkeHCnr9O3b9/0ECnzwkdun+3ZXdVVX3xwcPr04qIwJ1TChGiZUw4RqmFANE6phQjVMqIYJ1TChGibsinvPP9w/fvV5FUHL47bFhF2Bwacff6yevP+y5tn5t7UTedy2mLArMFbGw+N3N/8daGHCEk7eXK+mIH1IGwwHnBh1YMlZMWEUFnl99XNtnIymrWf0TRxg3rOb2/W7ua+FCaPIAaWHHIgps0kKMc+D009vGcs7uT9jwij7coDU0zNROHpx+SiPiZjQIxrE5IQ6atEB+nMZjf3QyvXoAJFgHE48fHnVdMaM7IEBTASq8/zNbSAiLK52PCuAQxiY10CPjsVzpk1iPfWbkT0wUIcStMNTKYQxsR013m05gHG93FdE1LYBPe7Kgcvvv8wBosK7rBN1MzKCpzIAmDi28xmI7ZzzGBzPBH26KzSWdjRQ50hjWg6b0RHlL46wA/sirwtEAkeznjGBCVXudEDV16oCEfp7pTKHPxMditWo9+4/DRYnDfiRLjwrhFFnZ5gwVhtSQD+lkioOz19vf//tV2rFOVhDY+jXHFFvnRvzKMJglbW7BAeyLYL+YQegN9k+mDqsU5iQIYxzE7IrSoXctwSV46z3MCEzElJd9XOO9tA9kfU5TGiRLykdLl1Kc9VpjtYFNYoJU7A7vRK5CUQsf9ssxYQeODFyucxBxHQr576lmDAHu6YrP5e0HhjNBigVl7zbw4RRCLu+VeKlpGqkDzf6ZfQ2qTKFCZtCZPR/gSrSrna5hwnVMKEaJlTDhGqYUA0TqmFCNUyohgnVMKEaJlTjDwRvCz2Vnh1SAAAAAElFTkSuQmCC"
                   y="463.3135"/>
            <text fill="#FFFFFF" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="84" x="394"
                  y="526.2795">OCI Registry
            </text>
        </g><!--link user to appRepo-->
        <g id="link_user_appRepo">
            <path d="M61.84,285.3135 C83.12,285.3135 106.41,285.3135 130.38,285.3135 " fill="none" id="user-to-appRepo"
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="136.38,285.3135,127.38,281.3135,131.38,285.3135,127.38,289.3135,136.38,285.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="84"
                  y="242.2271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="84.5"
                  y="259.9542">code
            </text>
            <text class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="38" x="80"
                  y="277.6814">+chart
                <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                         dur="2.0s" repeatCount="indefinite"/>
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                         dur="2.0s" repeatCount="indefinite"/>
            </text>
        </g><!--link user to configRepo-->
        <g id="link_user_configRepo" class="fragment" data-fragment-index="2" >
            <path d="M35.9,253.4935 C42.06,206.6835 61.08,120.6735 119,82.3135 C163.46,52.8635 195.64,51.2535 239,82.3135 C289.38,118.4035 302.9654,187.4408 306.6154,235.4808 "
                  fill="none" id="user-to-configRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="307.07,241.4635,310.3767,232.1864,306.6912,236.4779,302.3997,232.7924,307.07,241.4635"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text font-weight="bolder"  fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="152" x="83"
                  y="31.2271">push helm values per env
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M199.911,334.4666 C215.661,370.7166 235.76,416.9935 251.5,453.2235 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="197.52,328.9635,197.4378,338.8121,199.5125,333.5494,204.7751,335.6241,197.52,328.9635"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="239"
                  y="410.2271">pull
            </text>
        </g><!--link ciServer to registry-->
        <g id="link_ciServer_registry">
            <path d="M310.61,496.8135 C332.68,496.8135 354.23,496.8135 377.88,496.8135 " fill="none"
                  id="ciServer-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="383.88,496.8135,374.88,492.8135,378.88,496.8135,374.88,500.8135,383.88,496.8135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="332.25" y="471.7271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="328.75" y="489.4542">image
            </text>
        </g><!--link k8s to appRepo-->
        <g id="link_k8s_appRepo" class="fragment" data-fragment-index="3" >
            <path d="M427.9102,162.9775 C425.0355,151.5096 421.36,140.1048 416.6831,129.2017 C407.3294,107.3954 393.97,87.596 375,73.3135 C326.71,36.9635 287.21,36.8535 239,73.3135 C187.59,112.1935 177.937,185.734 177.297,235.574 "
                  fill="none" id="k8s-to-appRepo" style="stroke:#FF0000;stroke-width:1.0;"/>
            <polygon fill="#FF0000"
                     points="177.22,241.5735,181.3352,232.6256,177.2842,236.574,173.3359,232.5229,177.22,241.5735"
                     style="stroke:#FF0000;stroke-width:1.0;"/>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="318"
                  y="22.2271">pull
            </text>
            <text fill="#FF0000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31"
                  x="313.5" y="39.9542" font-weight="bolder">chart
            </text>
            <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
            <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                     dur="2.0s" repeatCount="indefinite"/>
        </g><!--link k8s to registry-->
        <g id="link_k8s_registry">
            <path d="M436,362.7015 C436,362.9761 436,363.2509 436,363.526 C436,364.0762 436,364.6275 436,365.1798 C436,366.2844 436,367.3931 436,368.5053 C436,370.7298 436,372.9686 436,375.2174 C436,384.2123 436,393.3669 436,402.4075 C436,420.4885 436,432.1135 436,447.0935 "
                  fill="none" id="k8s-to-registry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="436,453.0935,440,444.0935,436,448.0935,432,444.0935,436,453.0935"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="444.5" y="401.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="437"
                  y="418.9542">image
            </text>
        </g><!--link k8s to configRepo-->
        <g id="link_k8s_configRepo">
            <path d="M427.8654,285.3135 C427.7964,285.3135 427.7269,285.3135 427.6571,285.3135 C427.5175,285.3135 427.3764,285.3135 427.2338,285.3135 C426.9485,285.3135 426.6573,285.3135 426.3602,285.3135 C421.6066,285.3135 415.3556,285.3135 408.2062,285.3135 C393.9075,285.3135 382.015,285.3135 365.32,285.3135 "
                  fill="none" id="k8s-to-configRepo" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="359.32,285.3135,368.32,289.3135,364.32,285.3135,368.32,281.3135,359.32,285.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="386.32" y="260.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="380.32" y="277.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M632,284.9735 C643.83,255.8135 667.22,255.9335 667.22,285.3135 C667.22,314.6935 646.0856,320.3734 634.2556,291.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="632,285.6535,631.6768,295.4971,633.8797,290.2868,639.09,292.4896,632,285.6535"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="673.22" y="290.7271">deploy
            </text>
        </g><!--SRC=[fLHTRzem57ttht3BtgQGhjLQX10IqAwhYiX4o_PG9cJisoJ3iJD_WAgf_ttE1_b0hOOqU4XyxpdNn-TUvoGMb5i6Ld4S6PFglkyhikk6iOdiscfGL0e3mdIfJFmafb4Ct4yv4SOctDlODIW11hIdKnMxfvyGRK3v2hIqYeA_wLKvpmfEri21UUUVKsgwiQk1q0c3vrW0lfi4iyLyUeGEOrF2r4Mj8tPPxzaXAXdRy-vPzmoTDCvNrlTTXKIARffj_bQUmJQhftqcwGRK4K2dydrKBelid1y9U9_zNo0siT17u_MBe0MuCceo3HRNmUtYEBCebvR9qDPkxIC7FMkfQUpX6ocvpXhvZexLUBgumPtp2tB1M9qDfi5yDHe7tszMZ_FHxE7RQ7upUroDHvFxstcmc5tZpjNL5KBQ-P4IHHAy9dGJAca5ev9BXHkq1keQdedbveixuoI7_Nkd1bl3Rmk2maWfkJkQtoX0g97gmRnmm6MN438o11E1mdyGThySWa_TdsYSzIEFAg26YD3nJWSVNA-6Ip5AKpo7LEP0agRP-tlOYHJFSLZ3QRv-cr4EMSQwmm-Wjg0AJbmiq2j2BO9hhWFVzpIUS9iDGmvtqV94BN0saWvz6viWrKiXKr347JYdx1TkXnQdk4kE5JX5SmXZRTHBpb3b0g7CAUmDzqRWFawjZfQ2IWPBCSXdeg-03J_IY2XJufywBlHpsF334HlWh0QEW2TuIxW5ZPr236ABzjjuJr7C68XMZIexyBpAjbmHvwXQEx5x-PNQE24Xe8QQmK419qV0hWHY5zMn52ZpkZfBxK3h89otR2XSo8c7GZ9a8IHF7xXJvClO7f4z-fX1ogNhnU70btCmhcveUNMQdu028HK3LMGxdoulUpsMJLjThXwB_ocPnUilm8-lTuy5TjskDXW8Dpp3OGDHiQfSUyTNz1S0]-->
    </g>
</svg>



**💡 Also works with OCI**

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" contentStyleType="text/css"
   width=60% viewBox="0 0 727 531">
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
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="136.38,267.3135,127.38,263.3135,131.38,267.3135,127.38,271.3135,136.38,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="84"
                  y="224.2271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="84.5"
                  y="241.9542">code
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="38" x="80"
                  y="259.6814">+chart
            </text>
        </g><!--link user to configRepo-->
        <g id="link_user_configRepo">
            <path d="M36.49,235.5735 C43.36,190.3135 63.21,108.6835 119,72.3135 C163.68,43.1835 195.45,41.5235 239,72.3135 C287.24,106.4135 301.4056,171.2301 305.7756,217.4801 "
                  fill="none" id="user-to-configRepo" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="306.34,223.4535,309.4757,214.1172,305.8697,218.4757,301.5111,214.8697,306.34,223.4535"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="152" x="83"
                  y="22.2271">push helm values per env
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M198.5561,316.5232 C213.2661,352.7732 232.02,398.9935 246.72,435.2235 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="196.3,310.9635,195.9777,320.8071,198.1801,315.5966,203.3906,317.799,196.3,310.9635"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="236"
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
                  id="ciServer-to-registry-1" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="377.88,478.8135,368.88,474.8135,372.88,478.8135,368.88,482.8135,377.88,478.8135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="326.25" y="453.7271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="322.75" y="471.4542">image
            </text>
        </g><!--reverse link configRepo to ciServer-->
        <g id="link_configRepo_ciServer">
            <path d="M297.8073,316.8355 C290.1973,353.0855 280.55,398.9935 272.94,435.2235 " fill="none"
                  id="configRepo-backto-ciServer" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="299.04,310.9635,293.2763,318.9497,298.0127,315.8569,301.1056,320.5934,299.04,310.9635"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="58" x="300"
                  y="383.2271">push new
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="84" x="287"
                  y="400.9542">image version
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
                  fill="none" id="k8s-to-registry-1" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="445.27,434.9735,451.6144,427.4404,446.66,430.1707,443.9298,425.2163,445.27,434.9735"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="461.5" y="383.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="454"
                  y="400.9542">image
            </text>
        </g><!--link k8s to configRepo-->
        <g id="link_k8s_configRepo">
            <path d="M427.8654,267.3135 C427.7964,267.3135 427.7269,267.3135 427.6571,267.3135 C427.5175,267.3135 427.3764,267.3135 427.2338,267.3135 C426.9485,267.3135 426.6573,267.3135 426.3602,267.3135 C421.6066,267.3135 415.3556,267.3135 408.2062,267.3135 C393.9075,267.3135 382.015,267.3135 365.32,267.3135 "
                  fill="none" id="k8s-to-configRepo" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="359.32,267.3135,368.32,271.3135,364.32,267.3135,368.32,263.3135,359.32,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="386.32" y="242.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="380.32" y="259.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M632,266.9735 C643.83,237.8135 667.22,237.9335 667.22,267.3135 C667.22,296.6935 646.0856,302.3734 634.2556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="632,267.6535,631.6768,277.4971,633.8797,272.2868,639.09,274.4896,632,267.6535"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="673.22" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLHRRzem57xtht3BtgQGhjLQX10IqAwhYiX4o_PG9cJiGvBXs9ale6hgVvzp8GciLP463udF-RvpldDnJc91kMLW5SUHCQdk-huYstOOcyWkhGP5fJ0WJ9lAn4zY6iN0_PGJOMp2lRLTWX9WG7iwLR5x-WdH1fIlG4khAFZhJkNphE1a2HoOT_uvfQOTknW8dJ1OnGBmtIYOpARZ8tGOcnAcBceTiVDwAuUeP6pEssVjCtJIgA-Cxxi8YHJjD4l-cf_19ekdVIRf6jGHGAVoRLGkYsnTFnBmFlk_GAnZeO_6wsT12t3LgD4uc5q7jxFZcaMvj4o6jkxMpd8mipqrZHo-aPBhR91lw5WCnxCRt3g_81UCrTvW74mNWs7m_MRnE1rC7huDfZUJnyLmCBg_dGQpoJLkNLrT8QHTFrAYI8ANXAv39QrWL7AfS8FMG5t3YbXklhWQHpdi_KmDjeRV5WI5WL9oUpI_4O1G8zM3UUQ0ooaXP6G89WA5_o3iVZa4dxe_qJYRHsvLG0qHeUETzZwuMVNdOf2cU0gfp84aJRFtjx0ZALPnMCDfVdwTKIvPnhh33w0se0fEN1pG2q9x13TS1xxlQ3pYDbk67EwiPKLxu6mb7VesDa6gvqAce8WhEAVi3Yx37gUuIuuLE4LJ26Djr7FEKEK1eQnJsEll6e6xEBKwcWig6Sp5HneHPIfGNNw9mn7m16y8jw2nKu51RD0kbFSKnOo1-DaaLjwUvrMjoQDnZggpzzHIm1nn9zGXUlb-TfszNqXi60gPDNsFMA3ZX8I06XNq3lAxQWHiIo1sLXrBWR9nlAk6yrVKvCn39HcoK9Ax_sbfvYzjEqJsw686APTkNeUNejoLONMBo-lL_4mK2AaOgCBR-dHvsUcmR2FhSFNg_4_8p5v_9NvylNiiiClzQBsUS0lMxpSG5QloxMTyGNy1]-->
    </g>
</svg>



**💡 Also works with Helm-Repo**

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" contentStyleType="text/css"
  width=45% viewBox="0 0 724 712">
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
                  style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="136.38,267.3135,127.38,263.3135,131.38,267.3135,127.38,271.3135,136.38,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30" x="84"
                  y="224.2271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="29" x="84.5"
                  y="241.9542">code
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="38" x="80"
                  y="259.6814">+chart
            </text>
        </g><!--link user to configRepo-->
        <g id="link_user_configRepo">
            <path d="M36.49,235.5735 C43.36,190.3135 63.21,108.6835 119,72.3135 C163.68,43.1835 195.45,41.5235 239,72.3135 C287.24,106.4135 301.4056,171.2301 305.7756,217.4801 "
                  fill="none" id="user-to-configRepo" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="306.34,223.4535,309.4757,214.1172,305.8697,218.4757,301.5111,214.8697,306.34,223.4535"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="152" x="83"
                  y="22.2271">push helm values per env
            </text>
        </g><!--link appRepo to configRepo--><!--reverse link appRepo to ciServer-->
        <g id="link_appRepo_ciServer">
            <path d="M199.0106,316.5049 C214.0606,352.7549 233.27,398.9935 248.31,435.2235 " fill="none"
                  id="appRepo-backto-ciServer" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="196.71,310.9635,196.4667,320.8094,198.6272,315.5814,203.8552,317.7419,196.71,310.9635"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22" x="237"
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
        <g id="link_ciServer_ociRegistry">
            <path d="M297.89,522.4835 C319.63,551.5835 344.7277,585.1778 366.4877,614.2878 " fill="none"
                  id="ciServer-to-ociRegistry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="370.08,619.0935,367.8953,609.49,367.0864,615.0888,361.4877,614.2798,370.08,619.0935"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="30"
                  x="351.5" y="567.2271">push
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="348"
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
        </g><!--link k8s to ociRegistry-->
        <g id="link_k8s_ociRegistry">
            <path d="M467.3712,345.0263 C467.9128,346.5314 468.4524,348.0515 468.9891,349.5861 C470.0626,352.6554 471.1248,355.7825 472.17,358.9623 C488.8925,409.8385 501.235,474.1835 485,530.3135 C475.62,562.7335 459.1876,590.0194 441.1576,614.3994 "
                  fill="none" id="k8s-to-ociRegistry" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="437.59,619.2235,446.1575,614.3658,440.563,615.2035,439.7254,609.609,437.59,619.2235"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="500.5" y="475.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37" x="493"
                  y="492.9542">image
            </text>
        </g><!--link k8s to configRepo-->
        <g id="link_k8s_configRepo">
            <path d="M424.8091,267.3135 C424.7415,267.3135 424.6735,267.3135 424.6052,267.3135 C424.3318,267.3135 424.0527,267.3135 423.768,267.3135 C419.2122,267.3135 413.2169,267.3135 406.3488,267.3135 C392.6125,267.3135 381.385,267.3135 365.2,267.3135 "
                  fill="none" id="k8s-to-configRepo" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777" points="359.2,267.3135,368.2,271.3135,364.2,267.3135,368.2,263.3135,359.2,267.3135"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="22"
                  x="384.82" y="242.2271">pull
            </text>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="37"
                  x="377.32" y="259.9542">config
            </text>
        </g><!--link k8s to k8s-->
        <g id="link_k8s_k8s">
            <path d="M629,266.9735 C640.83,237.8135 664.22,237.9335 664.22,267.3135 C664.22,296.6935 643.0856,302.3734 631.2556,273.2134 "
                  fill="none" id="k8s-to-k8s" style="stroke:#777777;stroke-width:1.0;"/>
            <polygon fill="#777777"
                     points="629,267.6535,628.6768,277.4971,630.8797,272.2868,636.09,274.4896,629,267.6535"
                     style="stroke:#777777;stroke-width:1.0;"/>
            <text fill="#777777" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="41"
                  x="670.22" y="272.7271">deploy
            </text>
        </g><!--SRC=[fLHTRzem57ttht3BtgQGhLrRX10IqAwhYiX4o_PG9cJi2ybmxCmVLDNK_puxWIIKLaKQF2I-zvnpFvsZH51k6LZ5SMnCfjjXgCXZSvcOsCwj1aMbC21CayeqJ1CQ9y33Z1DXRCg3bPs34c101pfJYNk6AT46LAX0IwieXAjMwGkiu6GE75XmSfPHqqoS1a9731Q907mpY4QJyV20F8pD25EdLHw9ymOBXoZJM9yqlpG_eQDQVHlzq2caKZGp7_mrFuErrzCXatG5wW2Wo_9jL9uMUNJzI24u2t-3M2L27upNJu8MuB9HWs4qkOok9uSrYt9fcLpQgbjRoukPxMHJYn4QARdsWznFUXyM0q_Vo7VM7qwkSEFab9moLdcZOJIUzVhHZwlP_RWtkllU6r-DxcVztk3sUXnDHfUuSN5nWP1sVSk88YcU4xfQAca5ev9BXMkq6keI5iHoyzNrOf33tezKOsluOq5Gw2ab7m_crmG8DLBTcISEU3DDX8nSWeb1uRy8kryEmSVkJpJsSykj2gWXOkbunvqFRgRTgUXb6Hv39dCWoJB__XPs8CKYMLPmcfzVPsoMqRDky1seDQY2anG7z8pG3i4jWGFVjZGUSEkN9eSxwwQY7R1VNOU-JaoKwQcG6IZY2iufsuEBiCFnw-CutzoZAi4Rym9seCNrTE389J-6PQADUYh4QR8z8-JxYeFkjcsuZJEhuwcWai5KVAGnKQO4LStQuFBOU4su1OrTpXZ46csbWeSuOGp4hpgnz7Q2e6nahiOvAi_1GqC1SyHjRGxHoRUvxUpT8iMQeKYpehjSQrMMHIKfMGBoytWt0EUl1CYP-z8UMvFUwvFt5oQqHVX76pF8k7H3U7alDklIBo_oveRLlnG5GYe6gl0sFf-VjrhCBsKbLwt4_qXwU_MX-Fdjvhx0pdVLEXtXjgRRhI5ALkdRZVYC_W40]-->
    </g>
</svg>



## Promotion patterns <!-- .element style="margin-top: 0px;"-->
<!-- .slide: id="release-promotion" -->

> GitOps - Operations by Pull Request  
> 🌐 [weave.works/blog/gitops-operations-by-pull-request](https://weave.works/blog/gitops-operations-by-pull-request)

How to model environments AKA stages?

* [*Folder/Directory per environment*](#folder-per-env)
* [*Branch per environment*](#branch-per-env) (anti-pattern)
* [*Repo per environment*](#repo-per-env) (edge case)
* 🔥 [*Preview environments*](#preview-envs)

AKA Env per (folder | branch | repo) 

Note:
Exclusion principle -> Why not branches, repos but folders



### Why not use branches for environments? <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="branch-per-env" -->
<!-- .slide: style="font-size: 90%"  -->

Idea:
* Develop ➡ Staging
* Main ➡ Production
  <br/><br/>

<div class="fragment" data-fragment-index="1">
<span style="font-size: 530%;float: left; margin-right: 50px;">❌</span>
<ul>
  <li>Drifts/conflicts because of merge direction<br/>develop ➡ main (unidrectional)</li>
  <li>Promoting specific changes only: Copy vs cherry pick</li>
  <li>DRY - resources shared by multiple environments,  e.g. <img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" /> 
            <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/> </li>
  <li>Scalability: More envs, more chaos</li>
</ul>

➡ Branches more complicated than folders. Don't.
</div>

Note:
* Branching might lead to merge conflicts, develop and master lose sync
* DRY - dont repeat yourself
* Helm/kustomize: Most options are the same on every stage -> base/shared.yaml => Small stage specific YAMLs/overlays
* Scalability: Example later with variants (e.g. regions) -> 13 Stages
* [Concise lighning talk](https://www.youtube.com/watch?v=CvMevMHExHk&list=PLj6h78yzYM2MbKazKesjAx4jq56pnz1XE&index=23)
* Branches can work: [One (seldom) example by Florian Heubeck](https://medium.com/mediamarktsaturn-tech-blog/monitoring-and-hardening-the-gitops-delivery-pipeline-with-flux-a226bdef0351)



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



### Folder per environment
<!-- .slide: id="folder-per-env" -->

* Create *short-lived* branches and PRs
* 💡 Use folders to design envs (instead of *long-lived* branches per env)
* Merge promotes release, triggers deployment



### 🔥 Preview environments
<!-- .slide: id="preview-envs" -->
AKA (ephemeral | dynamic | pull request | test | temporary) environments

* An environment that is created with a pull request
* and deleted on merge/close

<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> `ApplicationSet`, using the `PullRequest` generator

<img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> GitOpsSets❓️


Note:
* Means something different for everyone.
* Provides a lot of new options: Do we need multiple "persistent" stages (prod *plus* staging *plus* qa, etc?) Or is Prod and preview envs enough?
* Makes testing easier

Sources:
* [10/2020 Environments Based On Pull Requests (PRs): Using Argo CD To Apply GitOps Principles On Previews](https://www.youtube.com/watch?v=cpAaI8p4R60) by Viktor Farcic (before AppSets)
* [11/2020 Creating Temporary Preview Environments Based On Pull Requests With Argo CD And Codefresh](https://codefresh.io/blog/creating-temporary-preview-environments-based-pull-requests-argo-cd-codefresh/) by Codefresh (before AppSets)
* [05/2022 GitOps Con Europe - Implementing Preview Environments with GitOps in Kubernetes - François Le Pape, Remazing ](https://www.youtube.com/watch?v=QNAiIJRIVWA&t=202s) without AppSets
* [10/2022 Preview Environments with ArgoCD - Brandon Phillips, Codefresh](https://www.youtube.com/watch?v=7ahiwZuiCBM) - [example repo](https://github.com/brandonphillips/preview-environments-example)



### Implementing promotion <!-- .element style="margin-top: 0px"-->

#### Configuration Management
AKA Templating, Patching, Overlaying, Rendering  
➡️ Tools for separating config of envs, keeping them DRY

* Kustomize
    * plain <img data-src="images/kustomize-icon.svg" title="Kustomize" style="height: 1.1em; vertical-align: middle;"/> `kustomize.yaml`
    * ≠ Flux CRD <img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> `Kustomization`
* Helm
    * CRD (️<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> `Application`, ️<img data-src="images/flux-icon.svg" title="Flux" style="height: 1.1em; vertical-align: middle;" /> `HelmRelease`)
    * ️<img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" />  *Umbrella Chart* <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" />
    * `helm template` via CI server <i class="fab fa-jenkins"></i>

Note:
* `kustomize.yaml` is operator-agnostic!
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

Who updates image version in config repo, creates branch and PR?

* **Manual**: Human pushes branch and create PR 🥵
* **Image Updater**: Operator pushes branch, create PR manually
* **CI Server**: Build job pushes branch, creates PR
* **Dependency Bot**: Bot pushes branch, creates PR

Note:
* In general: GitOps "operations by PullRequest"
* Depends on repo structure 



##### Image updater  <!-- .element style="margin-top: 0px"-->

<!-- src: gitops-with-image-updater.puml -->
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 599 399" width="50%">
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
    <text fill="#fff" font-family="sans-serif" font-size="14" font-weight="bold" textLength="91" x="370" y="69.995">K8s
        Cluster
    </text>
    <circle cx="43" cy="126.5" fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" r="16"/>
    <path d="M43 146.5c4 0 7 0 11-4 8 0 16 8 16 16v4c0 4-4 8-8 8H24c-4 0-8-4-8-8v-4c0-8 8-16 16-16 4 4 7 4 11 4"
          fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="74" x="6" y="184.995">Developer
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M147.5 106.5h81v84.297h-81z"/>
    <image height="48" width="48" x="157.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
           y="116.5"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="61" x="157.5" y="177.495">Git Repo
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M125.5 309h85v84.297h-85z"/>
    <image height="48" width="48" x="135.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
           y="319"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="65" x="135.5" y="379.995">CI Server
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M421 98h82v100.594h-82z"/>
    <image height="48" width="48" x="431"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC"
           y="108"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="47" x="431" y="168.995">GitOps
    </text>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="62" x="431" y="185.292">operator
    </text>
    <path fill="#23A3DD" filter="url(#a)" style="stroke:#16688d;stroke-width:1.5" d="M278.5 309h107v84.297h-107z"/>
    <image height="48" width="48" x="288.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII="
           y="319"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="87" x="288.5" y="379.995">OCI Registry
    </text>
    <path d="M80.34 148.5h62.13" fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m147.48 148.5-9-4 4 4-4 4 9-4z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="31" x="98.25" y="141.567">push
    </text>
    <path d="M183.37 195.94c-3.41 34.18-8.01 80.23-11.28 113.06" fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m183.9 190.56-4.88 8.554 4.38-3.58 3.58 4.381-3.08-9.355z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="24" x="179" y="267.567">pull
    </text>
    <path d="M210.66 351h62.53" fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m278.39 351-9-4 4 4-4 4 9-4z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="31" x="229" y="344.067">push
    </text>
    <path d="m319.386 223.533.077.766.615 6.171 2.508 25.147 4.774 47.873" fill="none"
          style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m327.87 308.64 3.08-9.355-3.58 4.38-4.38-3.58 4.88 8.555z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="24" x="340" y="260.067">pull
    </text>
    <text class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FFF" font-family="sans-serif"
          font-size="13" textLength="54" x="325" y="275.2">+ watch
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="2.0s" repeatCount="indefinite"/>
    </text>
    <path d="M233.84 148.5h69.993" fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m228.6 148.5 9 4-4-4 4-4-9 4z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="24" x="258.07" y="164.567">pull
    </text>
    <text class="fragment" data-fragment-index="1" font-weight="bolder" fill="#FFF" font-family="sans-serif"
          font-size="13" textLength="46" x="247.07" y="179.7">+ push
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                 dur="2.0s" repeatCount="indefinite"/>
    </text>
    <path d="M501 148.17c11.83-28.17 35.22-28.06 35.22.33 0 28.39-23.39 28.5-35.22.33" fill="none"
          style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m501 148.83-.203 9.847 2.139-5.237 5.237 2.14-7.173-6.75z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="44" x="542.22" y="153.067">deploy
    </text>
</svg>

<div class="fragment" data-fragment-index="1" style="font-size: 90%">GitOps operator can update image version in Git  
<ul style="display: flow">
<li><img data-src="images/argo-icon.svg" title="argocd" style="height: 1.1em; vertical-align: middle;"/> <a href="https://github.com/argoproj-labs/argocd-image-updater">github.com/argoproj-labs/argocd-image-updater</a></li>
<li><img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> <a href="https://fluxcd.io/docs/guides/image-update/">fluxcd.io/docs/guides/image-update</a></li>
</ul>
</div>

Note:
* Image updater writes back to Git!
* Flux also supports a simple staging mechanism:
> For production, you may choose to manually approve app version bumps by configuring Flux to push the changes to a new branch from which you can create a pull request.
https://fluxcd.io/flux/guides/repository-structure/
* For more complex use cases we might use CI server to automate



<!-- .slide: id="promotion-via-ci" -->
##### Promotion via CI Server <!-- .element style="margin-top: 0px"-->

<!-- src: gitops-with-app-repo-ci.puml -->
<svg xmlns="http://www.w3.org/2000/svg"
     xmlns:xlink="http://www.w3.org/1999/xlink" contentScriptType="application/ecmascript" contentStyleType="text/css"
     version="1.1" viewBox="0 0 741 420" width="80%">
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
        <text fill="#fff" font-family="sans-serif" font-size="14" font-weight="bold" lengthAdjust="spacing"
              textLength="91" x="512" y="69.9951" id="text849">K8s Cluster
        </text>
        <circle cx="43" cy="126.5" fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5"
                id="ellipse851" r="16"/>
        <path d="M43 146.5c4 0 7 0 11-4 8 0 16 8 16 16v4c0 4-4 8-8 8H24c-4 0-8-4-8-8v-4c0-8 8-16 16-16 4 4 7 4 11 4"
              fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="path853"/>
        <text fill="#000" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="74" x="6"
              y="184.9951" id="text855">Developer
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect857"
              d="M157.5 106.5h89v84.2969h-89z"/>
        <image height="48" width="48" x="167.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
               y="116.5" id="image859"/>
        <text fill="#fff" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="69" x="167.5"
              y="177.4951" id="text861">App Repo
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect863"
              d="M282 106.5h108v84.2969H282z"/>
        <image height="48" width="48" x="292"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
               y="116.5" id="image865"/>
        <text fill="#fff" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="88" x="292"
              y="177.4951" id="text867">GitOps Repo
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect869"
              d="M268.5 324h85v84.2969h-85z"/>
        <image height="48" width="48" x="278.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
               y="334" id="image871"/>
        <text fill="#fff" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="65" x="278.5"
              y="394.9951" id="text873">CI Server
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect875"
              d="M563 98h82v100.5938h-82z"/>
        <image height="48" width="48" x="573"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACuElEQVR4Xu2YT0olMRCHvcs7gTeYG3iCuYE38ARzA/cuZFazcuVKGHA1q5mVICoDMgyCfwZBRMh8dJ5NrF9SSfo1z7ew+CHSL6l8SVUlnd5aHJxvlLb00ftqBqDtrxefvl0h/tFfs9o9+XP18Dzq580T3eNPU4B2jn5/+XHz/frx7ukliOH98OyeIR0+Gphee6d/408dQAwABxMyvhw7uvwHvbqaAQgU46LdWEuDtf/r1rTpAMJX16qUDIjRp06vFYh2pucqRnrFxFK3TUA6j9WNOqCgpgD5NPglMT8fX5tSIr64Jmlsh8Toq84rQDqD0Vh2Slq7GAGqmeuYB8QsbfNXY2ba3hHRYQLWS848oGxNsc7ZHaVFuuuoFYE0uuE1E3WkdlXDlwci8LbhYJPXJhW7tvWbWB4ouzxdeUPdsZwoHpmUGwKFqPmBywNp9vBER3VUDU3JMkDZ4mqp8FRzAmm8WHkd0tecQLq9EnUd0tecQJp0E0qdEBsnjTYWst2HqPwoHaxdo5NGpX0t0LvrA6imTQViy6diezXWapcoqNSJOZqWQHpoNJqpkRbpbY7lGH9dN1D2gEqdrBtIt19zfq8VaDv3vrWf3NcWqwPpqI50eYIcUHWgeLujG+FHJCAHFvWF0mSsisbW9eDcNKsDhUnHvhHz0eIKb+srqgkoSKS7VKLhhUcbtwKF4duK9q8qvmVbX4NlC6IDKAzvkLrIJTFeNoujlV6O80Dx5pA+SS3eprPziyL3HZTg3mSKQKXApxa/3uGdiuMveUZYq70cmiJQGDYYmPT5iubTVIAWQx7oy/9kK+VNB1AUEakGwjdm5eRcqiKQ9idFJmCRZ+2FuXCASncglr0liDhkAiUnjpZA+llJV8gofr1jVAqN4opfFMhZf0eoagnEVHA0apbvL9O0BNocbRzQf+3wcitjETgyAAAAAElFTkSuQmCC"
               y="108" id="image877"/>
        <text fill="#fff" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="47" x="573"
              y="168.9951" id="text879">GitOps
        </text>
        <text fill="#fff" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="62" x="573"
              y="185.292" id="text881">operator
        </text>
        <path fill="#23A3DD" filter="url(#f1mqeku6gmnp3v)" style="stroke:#16688d;stroke-width:1.5" id="rect883"
              d="M421.5 324h107v84.2969h-107z"/>
        <image height="48" width="48" x="431.5"
               xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII="
               y="334" id="image885"/>
        <text fill="#fff" font-family="sans-serif" font-size="14" lengthAdjust="spacing" textLength="87" x="431.5"
              y="394.9951" id="text887">OCI Registry
        </text>
        <path d="M80.28 148.5h71.84" fill="none" id="user-to-appRepo" style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" id="polygon890" d="m157.32 148.5-9-4 4 4-4 4 9-4z"/>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="103.25"
              y="96.5669" id="text892">push
        </text>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="106.75"
              y="111.6997" id="text894">code
        </text>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="47" x="98.25"
              y="126.8325" id="text896">+config
        </text>
        <path d="M225.07 195.1c19.25 38.07 46.45 91.85 65.06 128.65" fill="none" id="appRepo-backto-ciServer"
              style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" id="polygon901"
              d="m222.76 190.54.4849 9.8369 1.7683-5.3734 5.3733 1.7684-7.6265-6.2319z"/>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="274"
              y="275.0669" id="text903">pull
        </text>
        <g>
            <path d="M330.66 195.57c-4.42 38.03-10.62 91.53-14.87 128.18"
                  fill="none" id="configRepo-backto-ciServer" style="stroke:#000;stroke-width:1">
            </path>
            <path fill="#000" style="stroke:#000;stroke-width:1" id="polygon906"
                  d="m331.24 190.54-5.0016 8.4844 4.4306-3.5171 3.5171 4.4306-2.9461-9.3979z">
            </path>
            <text fill="#000" font-family="sans-serif" font-size="13"
                  lengthAdjust="spacing" textLength="31" x="326" y="260.0669" id="text908">push
            </text>
            <text fill="#000" font-family="sans-serif" font-size="13"
                  lengthAdjust="spacing" textLength="43" x="326.5" y="275.1997" id="text910">config
            </text>
            <text class="fragment" data-fragment-index="2" font-weight="bolder" fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="73" x="326" y="290.3325">+create PR
                <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
                dur="2.0s" repeatCount="indefinite"/>
            </text>
        </g>
        <path d="M353.66 366h62.53" fill="none" id="ciServer-to-registry" style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" id="polygon915" d="m421.39 366-9-4 4 4-4 4 9-4z"/>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="31" x="372"
              y="359.0669" id="text917">push
        </text>
        <path d="M461.1867 223.2268c.0269.2753.0537.5509.0806.8268.0538.5519.1077 1.1051.1617 1.6595.4321 4.435.8718 8.9483 1.3159 13.5058.8881 9.115 1.7935 18.4073 2.6896 27.6056 1.7924 18.3968 3.548 36.418 5.0555 51.8955"
              fill="none" id="k8s-to-registry" style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" id="polygon920"
              d="m470.99 323.84 3.1085-9.3454-3.5933 4.369-4.369-3.5933 4.8538 8.5697z"/>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="468"
              y="275.0669" id="text922">pull
        </text>
        <path d="M395.29 148.5H445.8809" fill="none" id="configRepo-backto-k8s" style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" id="polygon925"
              d="m390.16 148.5 9.0114 3.9743-4.0114-3.9886 3.9885-4.0114L390.16 148.5z"/>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="24" x="409.82"
              y="164.5669" id="text927">pull
        </text>
        <path d="M643 148.14c11.83-30.14 35.22-30.02 35.22.36s-23.39 30.5-35.22.36" fill="none" id="k8s-to-k8s"
              style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" id="polygon930"
              d="m643 148.86-.4352 9.8392 2.262-5.1849 5.1849 2.262L643 148.86z"/>
        <text fill="#000" font-family="sans-serif" font-size="13" lengthAdjust="spacing" textLength="44" x="684.22"
              y="153.0669" id="text932">deploy
        </text>
    </g>
</svg>

Note: Looks simple but technically challenging: Git protocol vs SCM-specific API



#### Promotion via dependency bot <!-- .element style="margin-top: 0px"-->
<!-- src: gitops-with-renovate.puml -->
<!-- replace: 
<path fill="#181818" with #fff
stroke:#181818 with #fff
<text font-family="sans-serif" with <text  fill="#FFF" font-family="sans-serif"
-->

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="70%" viewBox="0 0 797 491">
    <rect fill="#23A3DD" height="283" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:1" width="223" x="470"
          y="47.566"/>
    <image height="48" width="48" x="557.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEEklEQVR4Xs2XTYoUQRCFvUudoG/QN5gTzA3mBp7AG8zehbhy1StXQoErV+1KEBVhEBkQEcGlj/ym30RH/lR1j6gQDFVZmRFfRryM7Hk0PX3/X9mjeujf2p8B2jz/IKvHz7AHAQni8uXN9dtv881PmR70+kCyM4FAefbuuzj2t79setXgQ7BOBlKkq1dfapQaS9POwDoBaA1KE2v74lPtrWergORxjIKG0sh5WAtA8vL49dfdxx89FIeMuPVkjciJXC1idYHWoGCaowTI9FB/rSePsRpA0spKFMcQDUvqr00bYGUgaFaiRO8nAe1LEbWkPoYZSNRSQ72+NoRszVr1WD2/NjXSi93nBSD1tLTROgavmiaPPj7aq7zrVYOUu16SQGmhIyA6jYFwoQCOweBAAVg6EKbnkomUCpfWZqAnb27jGmJr6w5AnrlNFVhb5KLwsx5Qhq85b6A+K7WMjoC0pt6EmRAK8aJ3ZV5fZSm8HLJKZHFLuMW/lqRMHwFpWVPRJMYrHTt+qgct2PgpGZvpAvWaG2lAgJtwz2NNIOa7dr1rZ1d6WBto0IE0KG1RLGIovEasKn1yuTWoT9YZ9U3SjJ6TjI6AagHxoBiolY5MkjflSGoJHtnPdWkEhtYIr+S+ycRWG0DbTkskB1G210u/DGNZ01rv03BJRvdAqSV6gevlCXP1s9CltCuLhpmDqpH+DETCews4xpb8HLQ8HfTkUlpMeEO2A/9zaY/ezz3QYAcRaA6XhqVDeAsfbXkyIktA8VkLM1BPQBFIiUWkUYNE0hwH9icfAorLtNr//viWvQO6qFoim5aLJBcgbLxeHi4QXslTXDKVJidXpC2Vwk3uHii1xLnIls3RUZi2LQ1Qk5VkH/gYdVuuFH1CVciZT5vyc0AjkMHkv1eH9ngHlAQ0l37l2JQsnZQ56Nr5sKI9B2EBqmc55BCQKkfU1wUg6sWg9RHPswcJBvQmaIU0+4i5WDaH2xddHwGlkiUjGdoZsXFNQ9scurD5kCMhSU/sik3bhRvt/pQ1j71H5lJEFw6FxWAJWhNisVKBon9zHwFNrR8JMbFzqSD535YWQHpcoH0oIuKlguSvSYPbeOaPgKbW74T0bKaYV+rF17hXaJLDRBMPfANozYacBi8hH+Qs0gwqhaXtNYCio3q9mdgW+qAuNg/Wya79xI11gaa+wO2IiwxpuwdiekXOV+U6GziJxV0AmloCtyNayziLlLUnILYUhbwMNLUEbl+Xh/9vapTFaa54HXEBqClw3F2H/xt7tis/Ueoz2xTyKqCpJfAxxKLNHSFHGwFNSwI/yea+kKMtAE19gZ9kqKon5GjLQFMQ+Nk2FnK0VUC+BLglTjU6xVg6tlVAGP33DFvUTbQTgP6O/XdAvwHpMBmWTVfqJgAAAABJRU5ErkJggg=="
           y="49.566"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" font-weight="bold" textLength="91" x="536" y="110.561">K8s
        Cluster
    </text>
    <rect fill="#23A3DD" height="100.594" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="82" x="587"
          y="205.566"/>
    <image height="48" width="48" x="597"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACtUlEQVR4Xu2YT4oVMRDG5y7vBHMDb+AJvMHcwBN4g7d3Ia5czcqVILhypStBdBAGkQH/IQwixB+dN02sr1JJupuZt7D4eDy6U1Vf6k/Sycnu8fujwok+ultsQOj06Yd7zy4Af/Sti7MXny9+/J7x5uoa9fxqCaH755/2b7++vPz17fpPEsH6k3ffcRnwO//402gxPr8aIISDR6+vmJCxFQiOYa+mYGxGDhOCijHRL8TS0CLAZswAIWwNRaUmkNiA0MNXX4zmGqG8cmFpvLsIqdp6oQ9oKJ1nm1DMBrtuK5FfnFE0VqEQdNV4g5DOYBbqaVYOAFEtlEAiQszSDr8RZqbjA5Ad6sZa8SQi5PYUcXZXlB7oqqNSJaTZTTeVqJ760UyfT4jE24GTLI5NCd0uSvEJueEZqpsHzy8JJ8hbJu0GoELW4sT5hLR6eKJeAzRTUxOHkNtcPR1eYktCmi8iry5jbElIl1eyri5jbElIu2BBqwdLfCxzI9u2n6HO+lHa6UGpaxfGO8d/Qi0cKyGWfDp2FPSUWmwin6JmmK3pQEg3jU5Rf03oaY5wzG/XEjJN2wS+rYl/jdw2Id3zzf59q4ROve+tfXFe260npF4D6O6UZINqE8qnO9ToDkARsBHSX6AsxibQsqanU7YZ1iaUFm37BszHGp1EP467CCXJ9BBgo62eprsRHdxLKFX0m8hf2dbW9PXnNsQAoTS1aH/d4M+t4iw1Oz6hfHIon5RCmcff2lSGrjelBCeZKqFa4kvJt3dYp+P4pc4ISVMrLkefUJoWGDjp85USxKZNaDfVgX78L5Y40V2EMshIMxGxkEq3pxRVQqq/X3TE0RvPGFVCtTNQ84IsCwaZQM1IgAMhvVbSCBnk27t8i0BG8o0CNXsm93xDOBBiKhiaMRTkbXEgdDw4OkJ/ASj6cUZi0uR0AAAAAElFTkSuQmCC"
           y="215.566"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="47" x="597" y="276.561">GitOps
    </text>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="62" x="597" y="292.858">operator
    </text>
    <circle cx="43" cy="234.066" fill="#23A3DD" style="stroke:#16688d;stroke-width:1.5" r="16"/>
    <path d="M43 254.066c4 0 7 0 11-4 8 0 16 8 16 16v4c0 4-4 8-8 8H24c-4 0-8-4-8-8v-4c0-8 8-16 16-16 4 4 7 4 11 4"
          fill="#23A3DD" style="stroke:#16688d;stroke-width:1.5"/>
    <text fill="#000" font-family="sans-serif" font-size="14" textLength="74" x="6" y="292.561">Developer
    </text>
    <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="81" x="147.5"
          y="214.066"/>
    <image height="48" width="48" x="157.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAB50lEQVR4Xu3VQUpDMRAG4N5lTuBJPIE38AaewBu4dyEeoCtXguDKla4EURGKSMGqCEWEOBheGGYmyUzyikXe8G/6miZf2zfzZnB8t1WZyUt/mwlUywSq5Z+CDi5fMPJ6Q3pBO6f3j+9f4beul2t8Kde40gWimrFM7SCpGcXUDto/f+aWoXpMLaB02CZMblD8p05u3+LL0U0+EL1vNmRygORdnEwxh1dL+m4sr8kKkppYRzevdBkS+QqnyQTKaYIA5f4+u6kOKmiwLhafdPHe2YKvGMpoqoDKmlh469CP4EONrxjKYiqBLJpY8Zj0fO0xZUF2TRhAeFjqu2aTDnJpAgEFMgvwIsY7C3TQ/OGD71EsCgqi9dRZgEfIcyEHcv08oQZSZwEeIc+FHAh35BsUi4HYLFB3Y1M+RQdhcFO+R74YKJBZoE4mJqbJgsBjkiCs1fobQ6/EKmigDAKzSQWphWvkKTQVEBhMqV/UDqdV/m1i6iAomtg3LswLiwaMIMibWIfnBrRRA3YQZExsvqkdbteACwQZU3qmejtcjQ8EGRO2tzrcvRpoAEHGJKva4WpaQGAwtWmgGQRFU7MGekCQMfVooBMEwtSpgX4QkOnc0FMyI4Awu/MnjLzekHFAI2YC1TKBatk60A/PNIQd+V6mZAAAAABJRU5ErkJggg=="
           y="224.066"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="61" x="157.5" y="285.061">Git Repo
    </text>
    <g class="fragment" data-fragment-index="1">
        <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="115" x="327.5"
        y="214.066"/>
        <image fill-opacity="0.2" height="48" width="48" x="337.5"
        xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAABmklEQVR4Xu2YT0oDMRTGe5c5gTfwBp7AG3gDT+AN3LsQV666ciUIrrrSlSBahCJSsFWEIgX9cCSm3wvJvOfEiZCP36Yz6cxvMvnz2lFzdFsUI3loWH6E9i+fruar6ct7Jo5vllsnd9IgLASbj/yBljQIC6Fv+Nt5sjN+kBIBIbjzV/Nk92wmJaqQFyeEURt8fYMJtR8xdrdPpwUJIYvV2ncaXgi5mL2VJYS4TipFyB3/FkKnUYtMcT1Bx/fOHzeEIEgtcsQfK3SKhQBWBex/4/vXTGDhcffqJPTHVKEoKIzKEsLtScjtawMIYUZjuyAhd/a3Qm3hixt0hDzaBLYOAxgHfdWZfh1iF+prcT+YzP3LGoX6WtnJpjELHV4/87WVweuOVYxasBX4V8doxbN2AZMAcz7yA60fITyubGPj/wuhoIGNXFEw6ahct6EWkiouOBUZHB3RCSVnOxU9BnRCclOkyHVFSxVKUYVSVKEUVShFFUqhE8J+zgqbSf6nmUQn1ESLV5Qlsr0WtVDz1U94d0SwQDZgEcpKcUKf8kQvEoTiGVIAAAAASUVORK5CYII="
        y="224.066"></image>
        <text fill="#fff" font-family="sans-serif" font-size="14" textLength="95" x="337.5" y="285.061">Renovate bot
        </text>
    </g>
    <g class="fragment" data-fragment-index="2">
        <path d="M233.93 256.066h93.5" fill="none" style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" d="m228.82 256.066 9 4-4-4 4-4-9 4z"/>
        <text font-weight="bolder"  fill="#000" font-family="sans-serif" font-size="13" textLength="62" x="247" y="249.133">create PR
        </text>
        <path d="M385 298.236v98.14" fill="none" style="stroke:#000;stroke-width:1"/>
        <path fill="#000" style="stroke:#000;stroke-width:1" d="m385 401.516 4-9-4 4-4-4 4 9z"/>
        <text font-weight="bolder"  fill="#000" font-family="sans-serif" font-size="13" textLength="39" x="386" y="367.633">watch
        </text>
        <animate attributeType="XML" attributeName="stroke-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
        dur="2.0s" repeatCount="indefinite"/>
        <animate attributeType="XML" attributeName="fill-opacity" values="1.0;0.8;0.6;0.4;0.2;0;0.2;0.4;0.6;0.8;"
        dur="2.0s" repeatCount="indefinite"/>
    </g>
    <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="85" x="170.5"
          y="401.566"/>
    <image height="48" width="48" x="180.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAEUklEQVR4Xs2YQYpcNxCGfRedYG4wN8gJcoPcYE6QG2TvRZNVVr3yKmDIKqvJyhCSJmBCMLidEDAh0PnQRxeyStJ7PQmxh5/Hm2qp9FepqlR6z8rzHz8pPMuij4t/S+ju658evvvt8Ordy9d/Pr55f/r9L568I0F+/80pT1nj6YRYj7UvzZ9UpBVC3hmZp8/wFEJffv/m/P7vlsfnL153Y/DcF9/+ip+C1k5v3UYIW6ECA16kxap5WAuYhQGfHX/JAzrsJYR97oXOwPTjz3+wWB45BCPd3+zLDrsI4QZ0ffXDW/+FCkbnYZuQ09pP24SYj5YITMjdFKQt8BN7Bxau3SaEWfgGFXjbOM1j9gMlmIeP809ig5DzTWOeGDcMAohCep1HeLrNzdngFSG2xsl6qNSEz9FjZLAYRSgrCUBaH2teRGSHKSEYuEwbg1DsFEECLGJiCKZAK8vLgpDu6Tao8xBun+ldQ2uHZkwJWWSzsKUIoWFI7QEbPcz/KSFPpSwcmtVik6JVw9M3/zolBJtMKEsyurqQz3wGYBWxmPOjLAjNPJRHdugqJw7rKCqBzTDRpoSYQ4pRweI0LfXQyCMD4QmmtF4h8A0XqKDBenYzIasLT2Ya4L7kkYFZ3bP2lMrYc9AW4AZCFmg3G3XRQvBcxGwcLznw4dFt922EGG3OM8fyiHGaPkyNTUARJ7UOvi2oGWpEowjjPKqwfuGeTWAShoVXIDds7saE7AzLtd8rO6rLHthX+X5bYXSDDMz/hIrAzjhqZl3RmFCpubpO8k20EYMz0BZeuaudWp5SFoR0b4TwE46tQ72sWXigYsSYiaidWTslVGquXmop8mUYgxlxVrA2/ohAQUhEm7AQnWXrilBprmB7Dg0RnSFPfANQokmX2s/YezylYww81itplmdEO2Cl8IS25ETbqTzPFbsIWR474dDnLAmnRbQZzovd30XIKtBp8WDKgz12DD6DmmfMJdIX7ik7CZVrynTC3GILyylTgCVeuVyHrg3sJeR1MdfWw6Txy/Do0HP518AuQvf1Yj/Txaas25JSY9yks5NBz7BMl01CTFOFWi6T+xRj4jtEB6g48Xy9UT3U+4wFKY9fEfKIlYQGWU4sLWiPNPae5TKHa3t6rN2mxsSfpOV0GcXAmFDs0TF9c1H+cP2M50ZYWmLVl/X2KDPldolSV08kY6d/QMiqc55c48u1WzKT7ZaUu+S5ft+wGJr2saRxHXo8LjsnfUAoqn4U3Bna2Oo0mvPn2u+e6gfGNlYuTYE1c1cegofubYUL3NXvYpmQMV6qL7sEjH6oXD+btr+WjpBGdyPWQOnwHGClQ71I8Ww91DI4jr7EfUBoTyXtYFPRCTWdxfzVnX2snyjb02aY+X1QO7MTrtGNN9tdmO1jSfZU0rycrpfG+8mXk56Qu2YfsxOXWl1YIJonn6d6Q/Vfq4MS383EbULoJSb+HwwTuSf00fHJEfoHjfLJHnH3AbMAAAAASUVORK5CYII="
           y="411.566"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="65" x="180.5" y="472.561">CI Server
    </text>
    <rect fill="#23A3DD" height="84.297" rx="2.5" ry="2.5" style="stroke:#16688d;stroke-width:.5" width="107" x="331.5"
          y="401.566"/>
    <image height="48" width="48" x="341.5"
           xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAACUUlEQVR4Xu2WS0oEMRCGvUufYG7gDTyBN/AGnsAbzN6FuHLlypUguHKlK0F0EAaRAV8IgwjjR34oY1e6kxnHBxr5kXR1JflSVamelWb74ldpxZt+VhUopwqUUwXKqQLl9BeBBruXG4c3Jh69T7mWAATE/tXT8OwO7Zw/8Oh9yrUcINGgrZPJ/wbaPL71Il9kChQEUz9QtsLmAGKto/Ezu4qDsQZYCoFY4XQyxdm/Ms0NpLwIyNJUmDJmre1f44Cbfyt9KxDJ1YAgre6NvENTAmSbsQoBt0cDwh5fe7OjVsUYEHHiLUzrB+MWWR6IDZiG1G/4H48R0RqG0lEurNiBY+N4KSyGaOWos7Gm7HkgNlbBIkXCp4ydbGyPOLeA2DVZPYqWxt8NNHp8iS0EDGdWM0saCF5tgFjCxnEN2TiuGyCsnjCqRcmBsW2sstOrFnQaSAUBFif4vFqLEydw/abSB6BB+G43AciqrOt+Yk/e8Dj+sQzO7lrS+R2I1cnCbDYjRwwUUrNwJibbnSIFs/CnxOlaMbifvsquJNoUltIr7JpillappVOGh67o0gWQ324QpTUN1IQ+4Y2flC9hr04goto1eRBKzae/X2oW3t5SJ1BPeNXyu3CTUn/ydq9OoCZcgfjDpLYxjLpqoVqtr199QE04WfJuF4ooxt+pEmWAmsDU08e6RBTVsv2rfuWBmnBQNf74fiYFBwdQorPOSRUBSURe3yDreLpr+ppiF8dcCfKaAygWMdOvIl23xYKR1IJAX6cKlFMFyqkC5VSBcqpAOb0BXdqrKyPxUdcAAAAASUVORK5CYII="
           y="411.566"/>
    <text fill="#fff" font-family="sans-serif" font-size="14" textLength="87" x="341.5" y="472.561">OCI Registry
    </text>
    <path d="M80.34 256.066h62.13" fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m147.48 256.066-9-4 4 4-4 4 9-4z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="31" x="98.25" y="249.133">push
    </text>
    <path d="M194.24 303.376c4.06 30.14 9.31 69.1 13.23 98.14" fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1"
          d="m193.55 298.236-2.756 9.455 3.427-4.5 4.5 3.427-5.171-8.382z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="24" x="204" y="367.633">pull
    </text>
    <path d="M255.52 443.566h70.53" fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1" d="m331.25 443.566-9-4 4 4-4 4 9-4z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="31" x="278" y="436.633">push
    </text>
    <path d="m469.956 317.06-.228.919c-2.45 9.806-5.623 19.66-9.728 28.587-8.24 17.92-20.42 35.52-32.59 50.65"
          fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1"
          d="m423.99 401.426 8.788-4.447-5.628.572-.572-5.628-2.588 9.503z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="24" x="456" y="367.633">pull
    </text>
    <path d="M203.66 208.966c17.85-45.2 51.83-110.83 106.34-140.4 58.6-31.78 100.66-44.83 150 0a83.257 83.257 0 0 1 7.8 8.114 85.537 85.537 0 0 1 1.754 2.16"
          fill="none" style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1"
          d="m201.78 213.826 6.994-6.934-5.179 2.275-2.275-5.18.46 9.839z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="24" x="341" y="19.633">pull
    </text>
    <path d="M699 255.446c11.87-25.88 35.08-25.67 35.08.62 0 26.29-23.21 26.5-35.08.62" fill="none"
          style="stroke:#000;stroke-width:1"/>
    <path fill="#000" style="stroke:#000;stroke-width:1"
          d="m699 256.686.116 9.848 1.969-5.303 5.303 1.968-7.388-6.513z"/>
    <text fill="#000" font-family="sans-serif" font-size="13" textLength="44" x="740.08" y="260.633">deploy
    </text>
</svg>

<div class="fragment" data-fragment-index="1">
    e.g.  <i class='fab fa-github'></i> <a href="https://github.com/renovatebot/renovate">github.com/renovatebot/renovate</a>
</div>



## Wiring <!-- .element style="margin-top: 0px"-->
<!-- .slide: id="wiring" -->
Wiring up operator, repos, folders, envs, etc.

* Bootstrapping: `kubectl`, operator-specific CLI
* Linking/Grouping:
  * Operator-specific CRDs
    * <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> `Kustomization`
    * <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> `Application`
  * Nesting: ️<img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> *App of Apps*  
    (same principle with <img data-src="images/flux-icon.svg" title="flux" style="height: 1.1em; vertical-align: middle;"/> `Kustomization`)
  * Templating: <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> `ApplicationSets` - folders, lists, config files

Note:
* Bootstrapping: Always an imperative part
* Linking folders and also across repos
CRDs
* Generic `Kustomization.v1beta1.kustomize.config.k8s.io`
* Flux `kustomize.toolkit.fluxcd.io/v1beta2/kustomizations`
* ArgoCD `argoproj.io/v1alpha1/applications`
