<!-- .slide: data-background-image="images/example.jpg"  -->
<!-- .slide: style="text-align: center !important"  -->

<div style="border-radius: 5px; border: 4px solid #777;background-color: rgba(255,255,255,0.5); margin-left: 350px; margin-right: 350px; margin-bottom: 500px">
  <h1 style="margin: 0 0 0 0;margin-top: 25px; margin-bottom: 25px;">Live example</h1>
</div>  


Note:
* Different scopes in examples: Some include tool bootstrapping, others focus on folder structure



<!-- .slide: style="text-align: center !important"  -->
<span style="margin-top: 10px;">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="56%" viewBox="-0.5 -0.5 1083 1013"
     style="background-color: rgb(255, 255, 255);">
  <defs>
    <filter id="dropShadow">
      <feGaussianBlur in="SourceAlpha" stdDeviation="1.7" result="blur"/>
      <feOffset in="blur" dx="3" dy="3" result="offsetBlur"/>
      <feFlood flood-color="#3D4574" flood-opacity="0.4" result="offsetColor"/>
      <feComposite in="offsetColor" in2="offsetBlur" operator="in" result="offsetBlur"/>
      <feBlend in="SourceGraphic" in2="offsetBlur"/>
    </filter>
  </defs>
  <rect fill="#ffffff" width="100%" height="100%" x="0" y="0"/>
  <g filter="url(#dropShadow)">
    <g data-cell-id="0">
      <g data-cell-id="1">
        <g data-cell-id="2" >
          <g>
            <rect x="2" y="2" width="1068" height="980" rx="147" ry="147" fill="rgb(255, 255, 255)" stroke="#878787"
                  stroke-width="4" pointer-events="all"/>
          </g>
        </g>
        <g data-cell-id="4" class="fragment" data-fragment-index="10">
          <g>
            <rect x="262" y="212" width="708" height="740" rx="106.2" ry="106.2" fill="rgb(255, 255, 255)"
                  stroke="#23a3dd" stroke-width="4" pointer-events="all"/>
          </g>
        </g>
        <g data-cell-id="5">
          <g/>
          <g data-cell-id="6" class="fragment" data-fragment-index="10">
            <g>
              <image x="440.5" y="241.5" width="70" height="68"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgaWQ9InN2ZzIiIGhlaWdodD0iNzUzLjkxNzc5IiB3aWR0aD0iNzc3IiB2aWV3Qm94PSIwIDAgNzc3IDc1My45MTc3OSI+JiN4YTsgIDx0aXRsZSBpZD0idGl0bGUxMjIxIj5LdWJlcm5ldGVzIGxvZ28gd2l0aCBubyBib3JkZXI8L3RpdGxlPiYjeGE7ICA8ZGVmcyBpZD0iZGVmczQiLz4mI3hhOyAgJiN4YTsgIDxtZXRhZGF0YSBpZD0ibWV0YWRhdGE3Ij4mI3hhOyAgICAmI3hhOyAgICAgICYjeGE7ICAgICAgICBpbWFnZS9zdmcreG1sJiN4YTsgICAgICAgICYjeGE7ICAgICAgICBLdWJlcm5ldGVzIGxvZ28gd2l0aCBubyBib3JkZXImI3hhOyAgICAgICAgImt1YmVjdGwiIGlzIHByb25vdW5jZWQgImt5b29iIGt1dHRlbCImI3hhOyAgICAgICYjeGE7ICAgICYjeGE7ICA8L21ldGFkYXRhPiYjeGE7ICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjEuNDc1OTYyLC0xNzguNTM1KSIgaWQ9ImxheWVyMSI+JiN4YTsgICAgPGcgdHJhbnNmb3JtPSJtYXRyaXgoMS4wNTU2ODU1LDAsMCwxLjA1NTY4NTUsLTEuMTk1ODk5MiwtOS45NDE4MDcyKSIgaWQ9ImcxMzUwIj4mI3hhOyAgICAgIDxwYXRoIGlkPSJwYXRoMzA1NSIgZD0ibSAzODYuOTMxODgsMTc4LjU5Nzk0IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCAtMTguNzUxMjksNC43NDUwOSBMIDExMi4zMDU2NywzMDUuNjAyNzQgQSA0OC45Mjk2NjgsNDguNTI5MjQ4IDAgMCAwIDg1LjgzMTMzMywzMzguNTIzODUgTCAyMi43MDUyNjYsNjEzLjE1MDA2IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCA2LjY0MzEyNywzNy4yMDgwNSA0OC45Mjk2NjgsNDguNTI5MjQ4IDAgMCAwIDIuNzgxNjA1LDMuODYxNTMgTCAyMDkuMjM2NDIsODc0LjQyNDU2IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCAzOC4yNTUyNSwxOC4yNjA0MiBsIDI4NC4wMTgyMSwtMC4wNjU0IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCAzOC4yNTUyNSwtMTguMjI3NjkgTCA3NDYuODA2MSw2NTQuMTU0MTkgYSA0OC45Mjk2NjgsNDguNTI5MjQ4IDAgMCAwIDkuNDU3NDUsLTQxLjA2OTU4IEwgNjkzLjAzOTMxLDMzOC40NTg0IEEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCA2NjYuNTY0OTgsMzA1LjUzNzI5IEwgNDEwLjY1NzM0LDE4My4zNDMwMyBhIDQ4LjkyOTY2OCw0OC41MjkyNDggMCAwIDAgLTIzLjcyNTQ2LC00Ljc0NTA5IHoiIHN0eWxlPSJmaWxsOiMzMjZjZTU7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjA7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIvPiYjeGE7ICAgICAgPHBhdGggc3R5bGU9ImNvbG9yOiMwMDAwMDA7Zm9udC1zdHlsZTpub3JtYWw7Zm9udC12YXJpYW50Om5vcm1hbDtmb250LXdlaWdodDpub3JtYWw7Zm9udC1zdHJldGNoOm5vcm1hbDtmb250LXNpemU6bWVkaXVtO2xpbmUtaGVpZ2h0Om5vcm1hbDtmb250LWZhbWlseTpTYW5zOy1pbmtzY2FwZS1mb250LXNwZWNpZmljYXRpb246U2Fuczt0ZXh0LWluZGVudDowO3RleHQtYWxpZ246c3RhcnQ7dGV4dC1kZWNvcmF0aW9uOm5vbmU7dGV4dC1kZWNvcmF0aW9uLWxpbmU6bm9uZTtsZXR0ZXItc3BhY2luZzpub3JtYWw7d29yZC1zcGFjaW5nOm5vcm1hbDt0ZXh0LXRyYW5zZm9ybTpub25lO3dyaXRpbmctbW9kZTpsci10YjtkaXJlY3Rpb246bHRyO2Jhc2VsaW5lLXNoaWZ0OmJhc2VsaW5lO3RleHQtYW5jaG9yOnN0YXJ0O2Rpc3BsYXk6aW5saW5lO292ZXJmbG93OnZpc2libGU7dmlzaWJpbGl0eTp2aXNpYmxlO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxO21hcmtlcjpub25lO2VuYWJsZS1iYWNrZ3JvdW5kOmFjY3VtdWxhdGUiIGQ9Im0gMzg5LjQ2NzI5LDI3Mi4wNTY4NSBjIC04LjQ1ODEzLDguNmUtNCAtMTUuMzE2MTksNy42MTkyOCAtMTUuMzE1MTksMTcuMDE2ODcgMTBlLTYsMC4xNDQyMyAwLjAyOTUsMC4yODIwNSAwLjAzMjcsMC40MjU0MiAtMC4wMTI1LDEuMjc2OTEgLTAuMDc0MSwyLjgxNTIzIC0wLjAzMjcsMy45MjY5NyAwLjIwMTcxLDUuNDIwMjcgMS4zODMyNCw5LjU2ODcxIDIuMDk0MzksMTQuNTYyNTIgMS4yODgzNCwxMC42ODgzNCAyLjM2Nzg4LDE5LjU0ODMyIDEuNzAxNjksMjcuNzgzMzMgLTAuNjQ3ODksMy4xMDUzNCAtMi45MzUxNiw1Ljk0NTM0IC00Ljk3NDE3LDcuOTE5MzkgbCAtMC4zNTk5Nyw2LjQ3OTUgYyAtOS4xOTEwMiwwLjc2MTQ5IC0xOC40NDM1MiwyLjE1NTkgLTI3LjY4NTE1LDQuMjU0MjIgLTM5Ljc2NjcyLDkuMDI5MDggLTc0LjAwNTE3LDI5LjUxMzEgLTEwMC4wNzIzMiw1Ny4xNzAxNiAtMS42OTE0NSwtMS4xNTM5MyAtNC42NTA2MiwtMy4yNzY4MSAtNS41MzA1NCwtMy45MjY5NyAtMi43MzQ0LDAuMzY5MjYgLTUuNDk3OTgsMS4yMTI5NSAtOS4wOTc0OCwtMC44ODM1NyAtNi44NTM3OCwtNC42MTM1NCAtMTMuMDk2MDYsLTEwLjk4MTgzIC0yMC42NDkzMywtMTguNjUzMTEgLTMuNDYwOTUsLTMuNjY5NTYgLTUuOTY3MjQsLTcuMTYzODYgLTEwLjA3OTIzLC0xMC43MDEgLTAuOTMzOCwtMC44MDMyNyAtMi4zNTg4OCwtMS44ODk3MSAtMy40MDMzNywtMi43MTYxNiAtMy4yMTQ3NiwtMi41NjMwNyAtNy4wMDY0NSwtMy44OTk3NiAtMTAuNjY4MjcsLTQuMDI1MTQgLTQuNzA4MDcsLTAuMTYxMjEgLTkuMjQwMzcsMS42Nzk1NCAtMTIuMjA2MzQsNS4zOTk1OCAtNS4yNzI4Myw2LjYxMzQyIC0zLjU4NDY2LDE2LjcyMTYzIDMuNzYzMzUsMjIuNTgwMDkgMC4wNzQ2LDAuMDU5NCAwLjE1Mzk2LDAuMTA1NTQgMC4yMjkwNywwLjE2MzYyIDEuMDA5NzMsMC44MTg1MSAyLjI0NjE5LDEuODY3MjggMy4xNzQzLDIuNTUyNTQgNC4zNjM1MiwzLjIyMTc0IDguMzQ5NDgsNC44NzA5NiAxMi42OTcyMSw3LjQyODUyIDkuMTU5NzksNS42NTY3MyAxNi43NTMzNywxMC4zNDcxNiAyMi43NzY0NCwxNi4wMDI0MSAyLjM1MjAxLDIuNTA3MTUgMi43NjMxLDYuOTI1IDMuMDc2MTIsOC44MzU2OCBsIDQuOTA4NzIsNC4zODUxMiBjIC0yNi4yNzc2NCwzOS41NDU4NCAtMzguNDM5MTUsODguMzkyOTQgLTMxLjI1MjEsMTM4LjE2Mzk1IGwgLTYuNDE0MDUsMS44NjUzMSBjIC0xLjY5MDQ4LDIuMTgyOTkgLTQuMDc5MjUsNS42MTc5MSAtNi41Nzc3Myw2LjY0MzEzIC03Ljg4MDI2LDIuNDgyMDYgLTE2Ljc0OTA1LDMuMzkzNTIgLTI3LjQ1NjA4LDQuNTE2MDEgLTUuMDI2ODQsMC40MTc5OSAtOS4zNjQxOCwwLjE2ODU1IC0xNC42OTM0MiwxLjE3ODA5IC0xLjE3MjkzLDAuMjIyMiAtMi44MDcyMiwwLjY0Nzk4IC00LjA5MDU5LDAuOTQ5MDIgLTAuMDQ0NiwwLjAwOSAtMC4wODYzLDAuMDIyNiAtMC4xMzA5LDAuMDMyNyAtMC4wNywwLjAxNjIgLTAuMTYxODUsMC4wNTAyIC0wLjIyOTA3LDAuMDY1NCAtOS4wMjY5NSwyLjE4MTA5IC0xNC44MjU4OCwxMC40NzgyMSAtMTIuOTU5MDEsMTguNjUzMTIgMS44NjczMSw4LjE3NjgyIDEwLjY4NDY1LDEzLjE0OTM1IDE5Ljc2NTc2LDExLjE5MTg3IDAuMDY1NiwtMC4wMTUgMC4xNjA3NCwtMC4wMTc1IDAuMjI5MDcsLTAuMDMyNyAwLjEwMjUyLC0wLjAyMzUgMC4xOTI3OCwtMC4wNzMyIDAuMjk0NTIsLTAuMDk4MSAxLjI2NTksLTAuMjc3ODggMi44NTIzMiwtMC41ODcwNSAzLjk1OTcsLTAuODgzNTcgNS4yMzk0NiwtMS40MDI4NSA5LjAzNDA3LC0zLjQ2NDA3IDEzLjc0NDQsLTUuMjY4NjggMTAuMTMzNjIsLTMuNjM0NTcgMTguNTI2NjUsLTYuNjcwODUgMjYuNzAzNDEsLTcuODUzOTUgMy40MTUwOCwtMC4yNjc0NyA3LjAxMzE2LDIuMTA3MTIgOC44MDI5NiwzLjEwODg2IGwgNi42NzU4NSwtMS4xNDUzNyBjIDE1LjM2MjUsNDcuNjI5MjYgNDcuNTU3MzYsODYuMTI2MzYgODguMzI0MTMsMTEwLjI4MjQ1IGwgLTIuNzgxNiw2LjY3NTg1IGMgMS4wMDI2LDIuNTkyMjQgMi4xMDg0Myw2LjA5OTU4IDEuMzYxNTgsOC42NTk1NyAtMi45NzI2NSw3LjcwODU5IC04LjA2NDQsMTUuODQ1MDQgLTEzLjg2MjQ0LDI0LjkxNjA0IC0yLjgwNzM3LDQuMTkwNzggLTUuNjgwNTMsNy40NDMwMyAtOC4yMTM5MiwxMi4yMzkwNiAtMC42MDYyMiwxLjE0NzYxIC0xLjM3ODI5LDIuOTEwNDggLTEuOTYzNDgsNC4xMjMzMiAtMy45MzYyMyw4LjQyMTkgLTEuMDQ4OTEsMTguMTIxODcgNi41MTIyMywyMS43NjE5NyA3LjYwODYzLDMuNjYyOTUgMTcuMDUyOTcsLTAuMjAwMzcgMjEuMTQwMTksLTguNjM5MzQgMC4wMDYsLTAuMDExOSAwLjAyNjksLTAuMDIwNyAwLjAzMjcsLTAuMDMyNyAwLjAwNCwtMC4wMDkgLTAuMDA0LC0wLjAyMzYgMCwtMC4wMzI3IDAuNTgyMTcsLTEuMTk2NDcgMS40MDY5NCwtMi43NjkxNiAxLjg5ODA0LC0zLjg5NDI0IDIuMTY5OTIsLTQuOTcxMDUgMi44OTE5NCwtOS4yMzEwNyA0LjQxNzg0LC0xNC4wMzg5MyA0LjA1MjI0LC0xMC4xNzg4NSA2LjI3ODYyLC0yMC44NTkwNSAxMS44NTY5MiwtMjcuNTE0MDQgMS41Mjc1MiwtMS44MjIzNiA0LjAxNzg4LC0yLjUyMzIxIDYuNTk5ODUsLTMuMjE0NTEgbCAzLjQ2ODgyLC02LjI4MzE1IGMgMzUuNTM5ODcsMTMuNjQxNTYgNzUuMzIxMDYsMTcuMzAyMTkgMTE1LjA2MDI3LDguMjc5MzYgOS4wNjU1MSwtMi4wNTgzMyAxNy44MTczOSwtNC43MjIyNiAyNi4yNzc5OCwtNy45MTkzOSAwLjk3NDkyLDEuNzI5MjYgMi43ODY3Miw1LjA1MzQ0IDMuMjcyNDgsNS44OTA0NiAyLjYyMzg0LDAuODUzNjUgNS40ODc3NSwxLjI5NDQ3IDcuODIxMjIsNC43NDUwOSA0LjE3MzQ3LDcuMTMwMzEgNy4wMjc2LDE1LjU2NTYzIDEwLjUwNDY1LDI1Ljc1NDM5IDEuNTI2MTUsNC44MDc3NyAyLjI4MDM4LDkuMDY3OTggNC40NTA1NywxNC4wMzg5MiAwLjQ5NDYzLDEuMTMzMDEgMS4zMTUyNywyLjcyNzc5IDEuODk4MDMsMy45MjY5NyA0LjA3ODYzLDguNDY2MzggMTMuNTUyODksMTIuMzQyOTEgMjEuMTcyOTIsOC42NzIwNiA3LjU2MDIxLC0zLjY0MjAzIDEwLjQ1MDcxLC0xMy4zNDExMiA2LjUxMjIzLC0yMS43NjE5NiAtMC41ODUyNiwtMS4yMTI4IC0xLjM4OTk0LC0yLjk3NTc1IC0xLjk5NjIxLC00LjEyMzMyIC0yLjUzMzY0LC00Ljc5NTg5IC01LjQwNjM0LC04LjAxNTcyIC04LjIxMzkyLC0xMi4yMDYzNCAtNS43OTg1MiwtOS4wNzA3IC0xMC42MDc3MiwtMTYuNjA2MDYgLTEzLjU4MDc3LC0yNC4zMTQ1IC0xLjI0MzEzLC0zLjk3NTc0IDAuMjA5NzMsLTYuNDQ4MzQgMS4xNzgwOSwtOS4wMzIwMyAtMC41Nzk5MSwtMC42NjQ3MyAtMS44MjA4NywtNC40MTkyNSAtMi41NTI1MywtNi4xODQ5OCA0Mi4zNjY2OCwtMjUuMDE1NSA3My42MTYxMiwtNjQuOTQ4MjMgODguMjkxNDEsLTExMS4wNjc4NSAxLjk4MTcsMC4zMTE0NiA1LjQyNjA3LDAuOTIwODYgNi41NDQ5NSwxLjE0NTM3IDIuMzAzMzQsLTEuNTE5MTYgNC40MjExOCwtMy41MDEzMSA4LjU3Mzg5LC0zLjE3NDMgOC4xNzY4MSwxLjE4MjY2IDE2LjU2OTYsNC4yMTk5IDI2LjcwMzQsNy44NTM5NCA0LjcxMDQzLDEuODA0MzggOC41MDQ4OCwzLjg5ODgzIDEzLjc0NDQsNS4zMDE0MSAxLjEwNzQsMC4yOTY0NSAyLjY5Mzc4LDAuNTczMDMgMy45NTk3LDAuODUwODUgMC4xMDE3OSwwLjAyNDkgMC4xOTE5NSwwLjA3NDggMC4yOTQ1MiwwLjA5ODEgMC4wNjg0LDAuMDE1MyAwLjE2MzUyLDAuMDE3NyAwLjIyOTA4LDAuMDMyNyA5LjA4MTYzLDEuOTU1MDYgMTcuOTAwNTQsLTMuMDE0NTYgMTkuNzY1NzUsLTExLjE5MTg3IDEuODY0NzgsLTguMTc1MzkgLTMuOTMxNDcsLTE2LjQ3NDQ0IC0xMi45NTksLTE4LjY1MzExIC0xLjMxMzExLC0wLjI5ODU5IC0zLjE3NTM1LC0wLjgwNTY5IC00LjQ1MDU3LC0xLjA0NzIgLTUuMzI5MjksLTEuMDA5MjYgLTkuNjY2NTUsLTAuNzYwMzYgLTE0LjY5MzQyLC0xLjE3ODA5IC0xMC43MDcwOCwtMS4xMjE5NCAtMTkuNTc1NjksLTIuMDM0MzcgLTI3LjQ1NjA3LC00LjUxNjAxIC0zLjIxMzA2LC0xLjI0NjQ2IC01LjQ5ODg0LC01LjA2OTcxIC02LjYxMDQ2LC02LjY0MzEzIGwgLTYuMTg0OTgsLTEuNzk5ODYgYyAzLjIwNjc4LC0yMy4xOTk5NCAyLjM0MjEsLTQ3LjM0NDk3IC0zLjIwNzAzLC03MS41MDM2MSAtNS42MDA3OSwtMjQuMzgzNTcgLTE1LjQ5ODgzLC00Ni42ODQ3MiAtMjguNjk5NjEsLTY2LjMzMzA5IDEuNTg2NTUsLTEuNDQyMjkgNC41ODI3MSwtNC4wOTU0OCA1LjQzMjMxLC00Ljg3NTk5IDAuMjQ4MzUsLTIuNzQ4MDEgMC4wMzUsLTUuNjI5MjIgMi44Nzk3OCwtOC42NzIwNiA2LjAyMjc2LC01LjY1NTU3IDEzLjYxNjk0LC0xMC4zNDUyIDIyLjc3NjQzLC0xNi4wMDI0MSA0LjM0NzYsLTIuNTU3NzkgOC4zNjY1OSwtNC4yMDY1NSAxMi43Mjk5MywtNy40Mjg1MiAwLjk4NjcyLC0wLjcyODYgMi4zMzQwOSwtMS44ODI0MyAzLjM3MDY1LC0yLjcxNjE2IDcuMzQ2NDYsLTUuODYwNDMgOS4wMzc4OCwtMTUuOTY4MDMgMy43NjMzNSwtMjIuNTgwMDkgLTUuMjc0NTMsLTYuNjEyMDUgLTE1LjQ5NTQzLC03LjIzNDg3IC0yMi44NDE4OCwtMS4zNzQ0NCAtMS4wNDU2OSwwLjgyODE4IC0yLjQ2NDYsMS45MDg1MyAtMy40MDMzOCwyLjcxNjE2IC00LjExMTgsMy41MzczNyAtNi42NTExOSw3LjAzMTI2IC0xMC4xMTE5NSwxMC43MDEgLTcuNTUyODYsNy42NzE2OCAtMTMuNzk1NzgsMTQuMDcxOTMgLTIwLjY0OTMyLDE4LjY4NTg0IC0yLjk2OTg1LDEuNzI4OTcgLTcuMzE5ODQsMS4xMzA3MyAtOS4yOTM4OSwxLjAxNDQ2IGwgLTUuODI1MDEsNC4xNTYwNSBDIDUwMC4yNzMxMSwzNzYuODYzMTggNDU1LjA0OTIsMzU0LjU5NDc1IDQwNi4zNTMzLDM1MC4yNjg5NyBjIC0wLjEzNjIsLTIuMDQwNjkgLTAuMzE0NjMsLTUuNzI5MzcgLTAuMzU5OTcsLTYuODM5NDggLTEuOTkzNTUsLTEuOTA3NjIgLTQuNDAxNzksLTMuNTM2MjIgLTUuMDA2ODksLTcuNjU3NTkgLTAuNjY2MTksLTguMjM1MDEgMC40NDYwNywtMTcuMDk0OTkgMS43MzQ0MSwtMjcuNzgzMzMgMC43MTExNSwtNC45OTM4MSAxLjg5MjY4LC05LjE0MjI1IDIuMDk0MzksLTE0LjU2MjUyIDAuMDQ1OSwtMS4yMzIxNSAtMC4wMjc3LC0zLjAyMDExIC0wLjAzMjcsLTQuMzUyMzkgLTEwZS00LC05LjM5NzU5IC02Ljg1NzA1LC0xNy4wMTc3MiAtMTUuMzE1MTgsLTE3LjAxNjg3IHogbSAtMTkuMTc2NzEsMTE4Ljc5MDg4IC00LjU0ODc0LDgwLjMzOTI5IC0wLjMyNzI1LDAuMTYzNjMgYyAtMC4zMDUwOSw3LjE4NzI1IC02LjIyMDI4LDEyLjkyNjI4IC0xMy40ODI2LDEyLjkyNjI4IC0yLjk3NDg3LDAgLTUuNzIwNzUsLTAuOTU1MzQgLTcuOTUyMTIsLTIuNTg1MjYgbCAtMC4xMzA5LDAuMDY1NCAtNjUuODc0OTQsLTQ2LjY5ODIzIGMgMjAuMjQ2MDUsLTE5LjkwODM0IDQ2LjE0MjM0LC0zNC42MjA1OSA3NS45ODY5LC00MS4zOTY4MyA1LjQ1MTY3LC0xLjIzNzgxIDEwLjkwMDkxLC0yLjE1NjI3IDE2LjMyOTY1LC0yLjgxNDMzIHogbSAzOC4zODYxNSwwIGMgMzQuODQzNzIsNC4yODU0NSA2Ny4wNjc0NSwyMC4wNjI5NyA5MS43NjAyMyw0NC4yNDM4OCBsIC02NS40NDk1Miw0Ni40MDM3MSAtMC4yMjkwOCwtMC4wOTgxIGMgLTUuODA5MjQsNC4yNDI5IC0xMy45OTQwOCwzLjE5MDE2IC0xOC41MjIyMSwtMi40ODcwOCAtMS44NTQ5MSwtMi4zMjU3NyAtMi44MjgxNywtNS4wNjA0NCAtMi45NDUyMywtNy44MjEyMiBsIC0wLjA2NTUsLTAuMDMyNyB6IG0gLTE1NC41OTE3OCw3NC4yMTk3NiA2MC4xNDgxMSw1My43OTk1MSAtMC4wNjU0LDAuMzI3MjUgYyA1LjQyOTA0LDQuNzE5NjcgNi4yMjk2MywxMi45MDk3MyAxLjcwMTY5LDE4LjU4NzY3IC0xLjg1NDc4LDIuMzI1ODYgLTQuMzM3NTUsMy44ODU4NSAtNy4wMDMxLDQuNjE0MTkgbCAtMC4wNjU0LDAuMjYxOCAtNzcuMDk5NTQsMjIuMjUyODMgYyAtMy45MjQxMiwtMzUuODgyMjIgNC41MzI4MywtNzAuNzYyNiAyMi4zODM3NCwtOTkuODQzMjUgeiBtIDI3MC4zMzkyNiwwLjAzMjcgYyA4LjkzNjg1LDE0LjQ4NTM1IDE1LjcwNDI4LDMwLjY2NDAzIDE5LjczMzA0LDQ4LjIwMzU3IDMuOTgwNDQsMTcuMzI5MjMgNC45NzkzOSwzNC42Mjc0OCAzLjMzNzkyLDUxLjM0NTE1IGwgLTc3LjQ5MjI0LC0yMi4zMTgyOCAtMC4wNjU0LC0wLjMyNzI1IGMgLTYuOTM5MjIsLTEuODk2NTEgLTExLjIwMzgzLC04Ljk1NTE5IC05LjU4ODM1LC0xNi4wMzUxNCAwLjY2MTg2LC0yLjkwMDMyIDIuMjAxNDMsLTUuMzUzOTEgNC4yODY5NCwtNy4xNjY3MiBsIC0wLjAzMjcsLTAuMTYzNjIgNTkuODIwODcsLTUzLjUzNzcxIHogTSAzNzcuMTMwMDYsNTIzLjAyMyBoIDI0LjY0MTc0IGwgMTUuMzE1MTksMTkuMTQzOTggLTUuNDk3NzYsMjMuODg5MDggLTIyLjEyMTk0LDEwLjYzNTU1IC0yMi4xODczOSwtMTAuNjY4MjggLTUuNDk3NzYsLTIzLjg4OTA3IHogbSA3OC45OTc1Nyw2NS41MTQ5NyBjIDEuMDQ3MTcsLTAuMDUyOSAyLjA4OTc2LDAuMDQxNSAzLjEwODg2LDAuMjI5MDcgbCAwLjEzMDksLTAuMTYzNjIgNzkuNzUwMjQsMTMuNDgyNiBjIC0xMS42NzE0OCwzMi43OTA4NCAtMzQuMDA1MjgsNjEuMTk4MTEgLTYzLjg0NjAxLDgwLjIwODM5IGwgLTMwLjk1NzYyLC03NC43NzYwOCAwLjA5ODEsLTAuMTMwOSBjIC0yLjg0Mzc3LC02LjYwNzc3IDAuMDAyLC0xNC4zNTY1NCA2LjU0NDk1LC0xNy41MDc3NCAxLjY3NTE0LC0wLjgwNjc3IDMuNDI1MjUsLTEuMjUzNSA1LjE3MDUxLC0xLjM0MTcyIHogbSAtMTMzLjk0MjQ1LDAuMzI3MjUgYyA2LjA4NjAxLDAuMDg1MyAxMS41NDQ5LDQuMzA5NDYgMTIuOTU5MDEsMTAuNTA0NjUgMC42NjIwMiwyLjkwMDI4IDAuMzM5ODEsNS43NzM5NSAtMC43NTI2Nyw4LjMxMjA5IGwgMC4yMjkwNywwLjI5NDUyIC0zMC42MzAzOCw3NC4wMjM0MSBDIDI3NS4zNTI0OCw2NjMuNjIzMTMgMjUyLjU0MjQyLDYzNi4xMDc3IDI0MC4zNDA1NSw2MDIuMzQ3ODcgbCA3OS4wNjMwMywtMTMuNDE3MTUgMC4xMzA5LDAuMTYzNjIgYyAwLjg4NDM2LC0wLjE2Mjc0IDEuNzgxMjcsLTAuMjQxMjcgMi42NTA3LC0wLjIyOTA3IHogbSA2Ni43OTEyNCwzMi40MzAyOSBjIDIuMTE5OTksLTAuMDc3OSA0LjI3MTEzLDAuMzU3MDcgNi4zMTU4OCwxLjM0MTcyIDIuNjgwMywxLjI5MDY5IDQuNzUwODMsMy4zMjI5NCA2LjA1NDA4LDUuNzU5NTUgaCAwLjI5NDUyIGwgMzguOTc1Miw3MC40MjM2OSBjIC01LjA1ODI1LDEuNjk1NjUgLTEwLjI1ODM5LDMuMTQ0OCAtMTUuNTc2OTksNC4zNTI0IC0yOS44MDc4NCw2Ljc2NzkgLTU5LjUyMDk3LDQuNzE3MjUgLTg2LjQyNjEsLTQuNDUwNTcgbCAzOC44NzcwMiwtNzAuMjkyNzkgaCAwLjA2NTQgYyAyLjMzMjgsLTQuMzYwOTQgNi43NTY5OCwtNi45NjI2NSAxMS40MjA5NCwtNy4xMzQgeiIgaWQ9InBhdGgzMDU5Ii8+JiN4YTsgICAgPC9nPiYjeGE7ICA8L2c+JiN4YTs8L3N2Zz4="/>
            </g>
          </g>
          <g data-cell-id="7">
            <g>
              <rect x="519.43" y="260.6" width="211.57" height="30" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div class="fragment" data-fragment-index="10" xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe flex-start; width: 210px; height: 1px; padding-top: 276px; margin-left: 521px;">
                      <div data-drawio-colors="color: #878787; "
                           style="box-sizing: border-box; font-size: 0px; text-align: left;">
                        <div
                          style="display: inline-block; font-size: 12px; font-family: Helvetica; color: rgb(135, 135, 135); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: normal; overflow-wrap: normal;">
                          <font style="font-size: 24px;">K3D</font>
                          <font style="font-size: 24px;">Container</font>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="521" y="279" fill="#878787" font-family="&quot;Helvetica&quot;" font-size="12px"
                        font-weight="bold">K3D Container
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="8">
          <g/>
          <g data-cell-id="9">
            <g>
              <rect x="522" y="49" width="220" height="30" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe flex-start; width: 218px; height: 1px; padding-top: 64px; margin-left: 524px;">
                      <div data-drawio-colors="color: #878787; "
                           style="box-sizing: border-box; font-size: 0px; text-align: left;">
                        <div
                          style="display: inline-block; font-size: 24px; font-family: Helvetica; color: rgb(135, 135, 135); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: normal; overflow-wrap: normal;">
                          Developer's host
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="524" y="71" fill="#878787" font-family="&quot;Helvetica&quot;" font-size="24px"
                        font-weight="bold">Developer's host
                  </text>
                </switch>
              </g>
            </g>
          </g>
          <g data-cell-id="11">
            <g>
              <rect x="441" y="32" width="70" height="63" fill="none" stroke="none" pointer-events="all"/>
              <path
                d="M 444.26 81.77 C 443.33 81.69 442.47 81.24 441.87 80.53 C 441.28 79.82 441 78.91 441.1 78 L 441.1 35.51 C 441.24 33.75 442.62 32.33 444.4 32.08 L 506.99 32.08 C 509.05 32 510.81 33.51 511 35.51 L 510.93 78.69 C 510.52 80.51 508.9 81.83 506.99 81.91 L 485.05 81.91 L 484.07 85.82 C 483.84 86.72 483.99 87.67 484.49 88.46 C 485 89.25 485.81 89.8 486.74 90 C 488.86 90.7 491.11 91 493.35 90.89 L 497.43 90.89 L 497.43 95 L 451.79 95 L 451.79 90.89 L 456.64 90.89 C 459.18 90.9 461.7 90.49 464.09 89.65 C 465.97 89.21 467.14 87.38 466.7 85.54 L 466.06 81.91 Z M 446.3 76.84 L 505.59 76.84 L 505.59 37.36 L 446.3 37.36 Z"
                fill="#23a3dd" stroke="none" pointer-events="all"/>
            </g>
          </g>
        </g>
        <g data-cell-id="15" class="fragment" data-fragment-index="30">
          <g>
            <path d="M 361 519.46 Q 361 561 361 589.03" fill="none" stroke="#333333" stroke-width="4"
                  stroke-miterlimit="10" pointer-events="stroke"/>
            <path d="M 361 596.53 L 356 586.53 L 361 589.03 L 366 586.53 Z" fill="#333333" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="16" class="fragment" data-fragment-index="30">
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 559px; margin-left: 362px;">
                      <div data-drawio-colors="color: #333333; background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(51, 51, 51); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                          apply resources
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="362" y="564" fill="#333333" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">apply resources
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="17" class="fragment" data-fragment-index="30">
          <g>
            <rect x="301" y="359.46" width="120" height="160" fill="rgb(255, 255, 255)" stroke="rgb(0, 0, 0)"
                  pointer-events="all"/>
          </g>
        </g>
        <g data-cell-id="18" class="fragment" data-fragment-index="30">
          <g>
            <rect x="331" y="465.46" width="60" height="30" fill="none" stroke="none" pointer-events="all"/>
          </g>
          <g>
            <g transform="translate(-0.5 -0.5)">
              <switch>
                <foreignObject pointer-events="none" width="100%" height="100%"
                               requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                               style="overflow: visible; text-align: left;">
                  <div xmlns="http://www.w3.org/1999/xhtml"
                       style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 480px; margin-left: 332px;">
                    <div data-drawio-colors="color: rgb(0, 0, 0); "
                         style="box-sizing: border-box; font-size: 0px; text-align: center;">
                      <div
                        style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                        ArgoCD
                      </div>
                    </div>
                  </div>
                </foreignObject>
                <text x="361" y="486" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="18px"
                      text-anchor="middle">ArgoCD
                </text>
              </switch>
            </g>
          </g>
        </g>
        <g data-cell-id="19" class="fragment" data-fragment-index="30">
          <g>
            <image x="325.5" y="378.96" width="70" height="70"
                   xlink:href="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTI4IDEyOCIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGNsaXBQYXRoIGlkPSJhcmdvY2Qtb3JpZ2luYWwtZSI+PHBhdGggZD0iTTQyIDQxaDQ0djUxSDQyem0wIDAiLz48L2NsaXBQYXRoPjxjbGlwUGF0aCBpZD0iYXJnb2NkLW9yaWdpbmFsLWQiPjxwYXRoIGQ9Ik0wIDBoMTI4djEyOEgweiIvPjwvY2xpcFBhdGg+PGNsaXBQYXRoIGlkPSJhcmdvY2Qtb3JpZ2luYWwtYyI+PHBhdGggZD0iTTAgMGgxMjh2MTI4SDB6Ii8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImFyZ29jZC1vcmlnaW5hbC1mIj48cGF0aCBkPSJNODUuNjk1IDQxLjEzM2wtMi41NSA1OC4yMzhINDQuODg3bC0yLjEyNS01OC4yMzgiLz48L2NsaXBQYXRoPjxjbGlwUGF0aCBpZD0iYXJnb2NkLW9yaWdpbmFsLWIiPjxwYXRoIGQ9Ik0wIDBoMTI4djEyOEgweiIvPjwvY2xpcFBhdGg+PG1hc2sgaWQ9ImFyZ29jZC1vcmlnaW5hbC1sIj48ZyBmaWx0ZXI9InVybCgjYXJnb2NkLW9yaWdpbmFsLWEpIj48cGF0aCBmaWxsLW9wYWNpdHk9Ii4yNTEiIGQ9Ik0wIDBoMTI4djEyOEgweiIvPjwvZz48L21hc2s+PG1hc2sgaWQ9ImFyZ29jZC1vcmlnaW5hbC1oIj48ZyBmaWx0ZXI9InVybCgjYXJnb2NkLW9yaWdpbmFsLWEpIj48cGF0aCBmaWxsLW9wYWNpdHk9Ii4yMiIgZD0iTTAgMGgxMjh2MTI4SDB6Ii8+PC9nPjwvbWFzaz48bWFzayBpZD0iYXJnb2NkLW9yaWdpbmFsLWoiPjxnIGZpbHRlcj0idXJsKCNhcmdvY2Qtb3JpZ2luYWwtYSkiPjxwYXRoIGZpbGwtb3BhY2l0eT0iLjUwMiIgZD0iTTAgMGgxMjh2MTI4SDB6Ii8+PC9nPjwvbWFzaz48ZyBjbGlwLXBhdGg9InVybCgjYXJnb2NkLW9yaWdpbmFsLWIpIiBpZD0iYXJnb2NkLW9yaWdpbmFsLWkiPjxwYXRoIGZpbGw9IiNmYmRmYzMiIGQ9Ik01OC40ODggMzAuNTA4YTIuOTc0IDIuOTc0IDAgMTEtNS45NDgtLjAwMyAyLjk3NCAyLjk3NCAwIDAxNS45NDguMDAzem0wIDAiLz48L2c+PGcgY2xpcC1wYXRoPSJ1cmwoI2FyZ29jZC1vcmlnaW5hbC1jKSIgaWQ9ImFyZ29jZC1vcmlnaW5hbC1nIj48cGF0aCBmaWxsPSIjZTM0ZTNiIiBkPSJNODQuNDIyIDY1LjM2M3MyLjU1LTIyLjUzMS0uODUyLTMxLjAzMUM3Ny4xOTUgMTkuNDUzIDYyLjMxNiAyMC43MyA2Mi4zMTYgMjAuNzNzOC41IDMuMzk5IDguOTI2IDE2LjE1M2MuNDI2IDguOTI2IDAgMjIuMTA1IDAgMjIuMTA1em0wIDAiLz48L2c+PGcgY2xpcC1wYXRoPSJ1cmwoI2FyZ29jZC1vcmlnaW5hbC1kKSIgaWQ9ImFyZ29jZC1vcmlnaW5hbC1rIj48cGF0aCBmaWxsPSIjZTk2NTRiIiBkPSJNODMuMTQ1IDkwLjg2N1Y4Ny40N2MtNS45NSAzLjM5OC0xMi4zMjkgNi44LTE5Ljk3NyA2LjgtOC41MDQgMC0xNC4wMzEtMy44MjQtMTkuNTU1LTYuOGwuNDIyIDMuMzk4czYuMzggNi44MDUgMTkuNTU1IDYuODA1YzEyLjMyOC0uNDI2IDE5LjU1NS02LjgwNSAxOS41NTUtNi44MDV6bTAgMCIvPjwvZz48ZmlsdGVyIGhlaWdodD0iMTAwJSIgd2lkdGg9IjEwMCUiIHk9IjAlIiB4PSIwJSIgZmlsdGVyVW5pdHM9Im9iamVjdEJvdW5kaW5nQm94IiBpZD0iYXJnb2NkLW9yaWdpbmFsLWEiPjxmZUNvbG9yTWF0cml4IHZhbHVlcz0iMCAwIDAgMCAxIDAgMCAwIDAgMSAwIDAgMCAwIDEgMCAwIDAgMSAwIiBpbj0iU291cmNlR3JhcGhpYyIvPjwvZmlsdGVyPjwvZGVmcz48cGF0aCBmaWxsPSIjZTk2NTRiIiBkPSJNNDQuMDM1IDg5LjU5NHMtLjg0NyAyLjU1LTIuMTI1IDMuODI0YTMuODQ0IDMuODQ0IDAgMDEtMi45NzIgMS4yNzcgNDkuOTQ2IDQ5Ljk0NiAwIDAxLTYuMzggMS4yNzRzMi45NzcuNDI2IDYuMzguODUxYzEuMjczIDAgMS4yNzMgMCAyLjEyNC40MjYgMi4xMjYgMCAyLjk3My0xLjI3NyAyLjk3My0xLjI3N3ptMzkuMTEgMHMuODUxIDIuNTUgMi4xMjUgMy44MjRhMy44NTggMy44NTggMCAwMDIuOTc2IDEuMjc3IDQ5LjggNDkuOCAwIDAwNi4zNzUgMS4yNzRzLTIuOTczLjQyNi02LjguODUxYy0xLjI3NCAwLTEuMjc0IDAtMi4xMjYuNDI2LTIuNTUgMC0yLjk3Ni0xLjI3Ny0yLjk3Ni0xLjI3N3ptMCAwIi8+PHBhdGggZmlsbD0iI2I2Y2ZlYSIgZD0iTTEwOS45MjYgNDcuNTA4YzAgMjUuMzU1LTIwLjU1NSA0NS45MS00NS45MSA0NS45MS0yNS4zNTYgMC00NS45MS0yMC41NTUtNDUuOTEtNDUuOTEgMC0yNS4zNTIgMjAuNTU0LTQ1LjkwNiA0NS45MS00NS45MDYgMjUuMzU1IDAgNDUuOTEgMjAuNTU0IDQ1LjkxIDQ1LjkwNnptMCAwIi8+PHBhdGggZmlsbD0iI2U2ZjVmOCIgZD0iTTEwOC4yMjcgNDcuNTA4YzAgMjQuNDE4LTE5Ljc5MyA0NC4yMS00NC4yMTEgNDQuMjEtMjQuNDE0IDAtNDQuMjA3LTE5Ljc5Mi00NC4yMDctNDQuMjFDMTkuODA5IDIzLjA5NCAzOS42MDIgMy4zIDY0LjAxNiAzLjNjMjQuNDE4IDAgNDQuMjEgMTkuNzkzIDQ0LjIxIDQ0LjIwN3ptMCAwIi8+PHBhdGggZmlsbD0iI2QwZThmMCIgZD0iTTEwMC4xNDggNDguMzZjMCAxOS45NTYtMTYuMTc1IDM2LjEzMi0zNi4xMzIgMzYuMTMyLTE5Ljk1NCAwLTM2LjEzMy0xNi4xNzYtMzYuMTMzLTM2LjEzMyAwLTE5Ljk1MyAxNi4xOC0zNi4xMzIgMzYuMTMzLTM2LjEzMiAxOS45NTcgMCAzNi4xMzIgMTYuMTggMzYuMTMyIDM2LjEzMnptMCAwIi8+PHBhdGggZmlsbD0iI2VlNzk0YiIgZD0iTTQyLjc2MiA2NS4zNjNzMi45NzYgNDguMDM1IDIuOTc2IDQ4Ljg4N2MwIC40MjIuNDI2IDEuMjczLTEuNzAzIDIuMTI1LTIuMTI1Ljg0OC04LjkyNiAyLjU1LTguOTI2IDIuNTVoMTAuMjAzYzQuNjc2IDAgNC42NzYtMy44MjcgNC42NzYtNC42NzUgMC0uODUyIDEuMjc0LTE5LjEyOSAxLjI3NC0xOS4xMjlzLjQyNSAyMS42OC40MjUgMjIuNTI3YzAgLjg1Mi0uNDI1IDIuMTI1LTMuMzk4IDIuOTc3LTIuMTI1LjQyNi04LjUwNCAxLjctOC41MDQgMS43aDkuNzc4YzUuOTUzIDAgNS45NTMtMy44MjUgNS45NTMtMy44MjVsMS4yNzMtMTkuMTI5cy40MjYgMTkuMTI5LjQyNiAyMS4yNTRjMCAxLjctMS4yNzQgMi45NzctNS45NTMgMy44MjQtMi45NzMuODUyLTYuODAxIDEuNzAzLTYuODAxIDEuNzAzaDExLjA1NWM1LjUyMy0uNDI1IDYuMzc1LTQuMjU0IDYuMzc1LTQuMjU0bDkuMzUxLTQ3LjYwOXptMCAwIi8+PHBhdGggZmlsbD0iI2VlNzk0YiIgZD0iTTg1LjI3IDY1LjM2M3MtMi45NzMgNDguMDM1LTIuOTczIDQ4Ljg4N2MwIC40MjItLjQyNiAxLjI3MyAxLjcgMi4xMjUgMi4xMjQuODQ4IDguOTI1IDIuNTUgOC45MjUgMi41NUg4Mi43MTljLTQuNjc2IDAtNC42NzYtMy44MjctNC42NzYtNC42NzUgMC0uODUyLTEuMjczLTE5LjEyOS0xLjI3My0xOS4xMjlzLS40MjYgMjEuNjgtLjQyNiAyMi41MjdjMCAuODUyLjQyNiAyLjEyNSAzLjQwMiAyLjk3N2w4LjUgMS43SDc4LjQ3Yy01Ljk1IDAtNS45NS0zLjgyNS01Ljk1LTMuODI1bC0xLjI3Ny0xOS4xMjlzLS40MjYgMTkuMTI5LS40MjYgMjEuMjU0YzAgMS43IDEuMjc4IDIuOTc3IDUuOTU0IDMuODI0IDIuOTc2Ljg1MiA2LjggMS43MDMgNi44IDEuNzAzSDcyLjUyYy01LjUyOC0uNDI1LTYuMzgtNC4yNTQtNi4zOC00LjI1NEw1Ni43OSA3NC4yOXptLjQyNS0yMy4zNzljMCAxMS45MDMtOS43NzcgMjEuMjU0LTIxLjI1NCAyMS4yNTQtMTEuNDc2IDAtMjEuMjU0LTkuNzc3LTIxLjI1NC0yMS4yNTQgMC0xMS40NzYgOS43NzgtMjEuMjU0IDIxLjI1NC0yMS4yNTQgMTEuNDc3IDAgMjEuMjU0IDkuMzUyIDIxLjI1NCAyMS4yNTR6bTAgMCIvPjxnIGNsaXAtcGF0aD0idXJsKCNhcmdvY2Qtb3JpZ2luYWwtZSkiPjxnIGNsaXAtcGF0aD0idXJsKCNhcmdvY2Qtb3JpZ2luYWwtZikiPjxwYXRoIGZpbGw9IiNlZTc5NGIiIGQ9Ik0xMDIuMjczIDUzLjQ2YzAgMjAuODk1LTE2LjkzNyAzNy44MzMtMzcuODMyIDM3LjgzMy0yMC44OTQgMC0zNy44MzItMTYuOTM4LTM3LjgzMi0zNy44MzIgMC0yMC44OTUgMTYuOTM4LTM3LjgzMiAzNy44MzItMzcuODMyIDIwLjg5NSAwIDM3LjgzMiAxNi45MzcgMzcuODMyIDM3LjgzMnptMCAwIi8+PC9nPjwvZz48dXNlIG1hc2s9InVybCgjYXJnb2NkLW9yaWdpbmFsLWgpIiB4bGluazpocmVmPSIjYXJnb2NkLW9yaWdpbmFsLWciLz48dXNlIG1hc2s9InVybCgjYXJnb2NkLW9yaWdpbmFsLWopIiB4bGluazpocmVmPSIjYXJnb2NkLW9yaWdpbmFsLWkiLz48cGF0aCBmaWxsPSIjMDEwMTAxIiBkPSJNNzEuNjY4IDczLjg2M2MwIDcuMjI3LTMuNDAyIDExLjkwNy03LjY1MiAxMS45MDdzLTcuNjUzLTUuNTI4LTcuNjUzLTEyLjc1NGMwIDAgMy40MDMgNi44IDguMDc4IDYuOCA0LjY3NiAwIDcuMjI3LTUuOTUzIDcuMjI3LTUuOTUzem0wIDAiLz48cGF0aCBmaWxsPSIjZmZmIiBkPSJNNzEuNjY4IDczLjg2M2MwIDQuNjgtMy40MDIgNy4yMjctNy42NTIgNy4yMjdzLTcuMjI3LTMuMzk5LTcuMjI3LTcuNjQ5YzAgMCAzLjQwMiA0LjI1IDguMDc4IDQuMjUgNC42NzYgMCA2LjgwMS0zLjgyOCA2LjgwMS0zLjgyOHptMCAwIi8+PHBhdGggZmlsbD0iI2U5NjU0YiIgZD0iTTkyLjA3IDUzLjg4N2MwIDcuMjc3LTUuODk4IDEzLjE3NS0xMy4xNzUgMTMuMTc1LTcuMjc4IDAtMTMuMTgtNS44OTgtMTMuMTgtMTMuMTc1IDAtNy4yNzggNS45MDItMTMuMTggMTMuMTgtMTMuMTggNy4yNzcgMCAxMy4xNzUgNS45MDIgMTMuMTc1IDEzLjE4em0tMjkuNzU0IDBjMCA3LjI3Ny01LjkwMiAxMy4xNzUtMTMuMTggMTMuMTc1LTcuMjc3IDAtMTMuMTc1LTUuODk4LTEzLjE3NS0xMy4xNzUgMC03LjI3OCA1Ljg5OC0xMy4xOCAxMy4xNzYtMTMuMTggNy4yNzcgMCAxMy4xOCA1LjkwMiAxMy4xOCAxMy4xOHptMCAwIi8+PHBhdGggZmlsbD0iI2ZmZiIgZD0iTTg5LjA5OCA1My44ODdjMCA1LjYzMy00LjU3IDEwLjIwMy0xMC4yMDMgMTAuMjAzLTUuNjMzIDAtMTAuMjA0LTQuNTctMTAuMjA0LTEwLjIwMyAwLTUuNjM3IDQuNTctMTAuMjAzIDEwLjIwNC0xMC4yMDMgNS42MzIgMCAxMC4yMDMgNC41NjYgMTAuMjAzIDEwLjIwM3ptLTMwLjYxIDBjMCA1LjYzMy00LjU2NiAxMC4yMDMtMTAuMTk5IDEwLjIwMy01LjYzNyAwLTEwLjIwMy00LjU3LTEwLjIwMy0xMC4yMDNhMTAuMjAxIDEwLjIwMSAwIDAxMTAuMjAzLTEwLjIwM2M1LjYzMyAwIDEwLjIgNC41NjYgMTAuMiAxMC4yMDN6bTAgMCIvPjxwYXRoIGZpbGw9IiMwMTAxMDEiIGQ9Ik01MS4yNjIgNTIuNjFhMi45NzUgMi45NzUgMCAxMS01Ljk1LjAwMyAyLjk3NSAyLjk3NSAwIDAxNS45NS0uMDA0em0zMC42MDkgMGEyLjk3NiAyLjk3NiAwIDExLTUuOTUxLjAwMSAyLjk3NiAyLjk3NiAwIDAxNS45NTEtLjAwMnptMCAwIi8+PHBhdGggZmlsbD0iI2I2Y2ZlYSIgZD0iTTE3LjI1OCA1OC45ODhhMi4wMDUgMi4wMDUgMCAwMS0yLjEyNS0yLjEyNVYzOS44NmEyLjAwOCAyLjAwOCAwIDAxLjU4Mi0xLjU0MyAyLjAwOCAyLjAwOCAwIDAxMS41NDMtLjU4MiAyLjAwNSAyLjAwNSAwIDAxMi4xMjUgMi4xMjV2MTcuMDA0Yy4wMzUuNTctLjE4IDEuMTMzLS41ODYgMS41NGEyLjAwOCAyLjAwOCAwIDAxLTEuNTQuNTg1em05Mi42NjggMGEyLjAwMyAyLjAwMyAwIDAxLTEuNTQtLjU4NiAyLjAwOCAyLjAwOCAwIDAxLS41ODUtMS41MzlWMzkuODZhMi4wMTEgMi4wMTEgMCAwMS41ODYtMS41NDMgMiAyIDAgMDExLjUzOS0uNTgyIDIgMiAwIDAxMS41MzkuNTgyYy40MS40MDcuNjIuOTcuNTg2IDEuNTQzdjE3LjAwNGExLjk5NCAxLjk5NCAwIDAxLS41ODYgMS41NCAyLjAwMyAyLjAwMyAwIDAxLTEuNTQuNTg1em0wIDAiLz48cGF0aCBmaWxsPSIjZmZmIiBkPSJNNTEuNjg4IDEzLjUwNGEyLjEyNSAyLjEyNSAwIDExLTQuMjUgMCAyLjEyNSAyLjEyNSAwIDAxNC4yNSAwek0zNC4yNjIgNzAuODlhMS41NTkgMS41NTkgMCAwMS0xLjI3OC0uNDI1Yy01LjEwMS02LjM3NS03LjY1Mi0xNC40NTMtNy42NTItMjIuNTMxYTM3LjkzMyAzNy45MzMgMCAwMTUuMTAyLTE5LjEzIDQxLjY0MSA0MS42NDEgMCAwMTEzLjYwMS0xMy42IDEuODczIDEuODczIDAgMDEyLjEzLjQyNSAxLjg3NCAxLjg3NCAwIDAxLS40MjcgMi4xMjUgMzQuMzA1IDM0LjMwNSAwIDAwLTE3LjQzIDI5Ljc1NCAzMy40ODcgMzMuNDg3IDAgMDA3LjIyNyAyMC44MzJjLjQyNi40MjYuNDI2IDEuNy0uNDI2IDIuMTI1LS40MjUuNDI2LS40MjUuNDI2LS44NDcuNDI2em0wIDAiLz48dXNlIG1hc2s9InVybCgjYXJnb2NkLW9yaWdpbmFsLWwpIiB4bGluazpocmVmPSIjYXJnb2NkLW9yaWdpbmFsLWsiLz48L3N2Zz4="
                   preserveAspectRatio="none"/>
          </g>
        </g>
        <g data-cell-id="20" >
          <g/>
          <g data-cell-id="21"  class="fragment" data-fragment-index="10">
            <g>
              <rect x="301" y="601" width="120" height="160" fill="rgb(255, 255, 255)" stroke="rgb(0, 0, 0)"
                    pointer-events="all"/>
            </g>
          </g>
          <g data-cell-id="22">
            <g>
              <rect x="331" y="707" width="60" height="30" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g  class="fragment" data-fragment-index="10">
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 722px; margin-left: 332px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          API-Server
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="361" y="727" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">API-Ser...
                  </text>
                </switch>
              </g>
            </g>
          </g>
          <g data-cell-id="23"  class="fragment" data-fragment-index="10">
            <g>
              <image x="325.5" y="620.5" width="70" height="68"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgaWQ9InN2ZzIiIGhlaWdodD0iNzUzLjkxNzc5IiB3aWR0aD0iNzc3IiB2aWV3Qm94PSIwIDAgNzc3IDc1My45MTc3OSI+JiN4YTsgIDx0aXRsZSBpZD0idGl0bGUxMjIxIj5LdWJlcm5ldGVzIGxvZ28gd2l0aCBubyBib3JkZXI8L3RpdGxlPiYjeGE7ICA8ZGVmcyBpZD0iZGVmczQiLz4mI3hhOyAgJiN4YTsgIDxtZXRhZGF0YSBpZD0ibWV0YWRhdGE3Ij4mI3hhOyAgICAmI3hhOyAgICAgICYjeGE7ICAgICAgICBpbWFnZS9zdmcreG1sJiN4YTsgICAgICAgICYjeGE7ICAgICAgICBLdWJlcm5ldGVzIGxvZ28gd2l0aCBubyBib3JkZXImI3hhOyAgICAgICAgImt1YmVjdGwiIGlzIHByb25vdW5jZWQgImt5b29iIGt1dHRlbCImI3hhOyAgICAgICYjeGE7ICAgICYjeGE7ICA8L21ldGFkYXRhPiYjeGE7ICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjEuNDc1OTYyLC0xNzguNTM1KSIgaWQ9ImxheWVyMSI+JiN4YTsgICAgPGcgdHJhbnNmb3JtPSJtYXRyaXgoMS4wNTU2ODU1LDAsMCwxLjA1NTY4NTUsLTEuMTk1ODk5MiwtOS45NDE4MDcyKSIgaWQ9ImcxMzUwIj4mI3hhOyAgICAgIDxwYXRoIGlkPSJwYXRoMzA1NSIgZD0ibSAzODYuOTMxODgsMTc4LjU5Nzk0IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCAtMTguNzUxMjksNC43NDUwOSBMIDExMi4zMDU2NywzMDUuNjAyNzQgQSA0OC45Mjk2NjgsNDguNTI5MjQ4IDAgMCAwIDg1LjgzMTMzMywzMzguNTIzODUgTCAyMi43MDUyNjYsNjEzLjE1MDA2IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCA2LjY0MzEyNywzNy4yMDgwNSA0OC45Mjk2NjgsNDguNTI5MjQ4IDAgMCAwIDIuNzgxNjA1LDMuODYxNTMgTCAyMDkuMjM2NDIsODc0LjQyNDU2IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCAzOC4yNTUyNSwxOC4yNjA0MiBsIDI4NC4wMTgyMSwtMC4wNjU0IGEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCAzOC4yNTUyNSwtMTguMjI3NjkgTCA3NDYuODA2MSw2NTQuMTU0MTkgYSA0OC45Mjk2NjgsNDguNTI5MjQ4IDAgMCAwIDkuNDU3NDUsLTQxLjA2OTU4IEwgNjkzLjAzOTMxLDMzOC40NTg0IEEgNDguOTI5NjY4LDQ4LjUyOTI0OCAwIDAgMCA2NjYuNTY0OTgsMzA1LjUzNzI5IEwgNDEwLjY1NzM0LDE4My4zNDMwMyBhIDQ4LjkyOTY2OCw0OC41MjkyNDggMCAwIDAgLTIzLjcyNTQ2LC00Ljc0NTA5IHoiIHN0eWxlPSJmaWxsOiMzMjZjZTU7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjA7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIvPiYjeGE7ICAgICAgPHBhdGggc3R5bGU9ImNvbG9yOiMwMDAwMDA7Zm9udC1zdHlsZTpub3JtYWw7Zm9udC12YXJpYW50Om5vcm1hbDtmb250LXdlaWdodDpub3JtYWw7Zm9udC1zdHJldGNoOm5vcm1hbDtmb250LXNpemU6bWVkaXVtO2xpbmUtaGVpZ2h0Om5vcm1hbDtmb250LWZhbWlseTpTYW5zOy1pbmtzY2FwZS1mb250LXNwZWNpZmljYXRpb246U2Fuczt0ZXh0LWluZGVudDowO3RleHQtYWxpZ246c3RhcnQ7dGV4dC1kZWNvcmF0aW9uOm5vbmU7dGV4dC1kZWNvcmF0aW9uLWxpbmU6bm9uZTtsZXR0ZXItc3BhY2luZzpub3JtYWw7d29yZC1zcGFjaW5nOm5vcm1hbDt0ZXh0LXRyYW5zZm9ybTpub25lO3dyaXRpbmctbW9kZTpsci10YjtkaXJlY3Rpb246bHRyO2Jhc2VsaW5lLXNoaWZ0OmJhc2VsaW5lO3RleHQtYW5jaG9yOnN0YXJ0O2Rpc3BsYXk6aW5saW5lO292ZXJmbG93OnZpc2libGU7dmlzaWJpbGl0eTp2aXNpYmxlO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxO21hcmtlcjpub25lO2VuYWJsZS1iYWNrZ3JvdW5kOmFjY3VtdWxhdGUiIGQ9Im0gMzg5LjQ2NzI5LDI3Mi4wNTY4NSBjIC04LjQ1ODEzLDguNmUtNCAtMTUuMzE2MTksNy42MTkyOCAtMTUuMzE1MTksMTcuMDE2ODcgMTBlLTYsMC4xNDQyMyAwLjAyOTUsMC4yODIwNSAwLjAzMjcsMC40MjU0MiAtMC4wMTI1LDEuMjc2OTEgLTAuMDc0MSwyLjgxNTIzIC0wLjAzMjcsMy45MjY5NyAwLjIwMTcxLDUuNDIwMjcgMS4zODMyNCw5LjU2ODcxIDIuMDk0MzksMTQuNTYyNTIgMS4yODgzNCwxMC42ODgzNCAyLjM2Nzg4LDE5LjU0ODMyIDEuNzAxNjksMjcuNzgzMzMgLTAuNjQ3ODksMy4xMDUzNCAtMi45MzUxNiw1Ljk0NTM0IC00Ljk3NDE3LDcuOTE5MzkgbCAtMC4zNTk5Nyw2LjQ3OTUgYyAtOS4xOTEwMiwwLjc2MTQ5IC0xOC40NDM1MiwyLjE1NTkgLTI3LjY4NTE1LDQuMjU0MjIgLTM5Ljc2NjcyLDkuMDI5MDggLTc0LjAwNTE3LDI5LjUxMzEgLTEwMC4wNzIzMiw1Ny4xNzAxNiAtMS42OTE0NSwtMS4xNTM5MyAtNC42NTA2MiwtMy4yNzY4MSAtNS41MzA1NCwtMy45MjY5NyAtMi43MzQ0LDAuMzY5MjYgLTUuNDk3OTgsMS4yMTI5NSAtOS4wOTc0OCwtMC44ODM1NyAtNi44NTM3OCwtNC42MTM1NCAtMTMuMDk2MDYsLTEwLjk4MTgzIC0yMC42NDkzMywtMTguNjUzMTEgLTMuNDYwOTUsLTMuNjY5NTYgLTUuOTY3MjQsLTcuMTYzODYgLTEwLjA3OTIzLC0xMC43MDEgLTAuOTMzOCwtMC44MDMyNyAtMi4zNTg4OCwtMS44ODk3MSAtMy40MDMzNywtMi43MTYxNiAtMy4yMTQ3NiwtMi41NjMwNyAtNy4wMDY0NSwtMy44OTk3NiAtMTAuNjY4MjcsLTQuMDI1MTQgLTQuNzA4MDcsLTAuMTYxMjEgLTkuMjQwMzcsMS42Nzk1NCAtMTIuMjA2MzQsNS4zOTk1OCAtNS4yNzI4Myw2LjYxMzQyIC0zLjU4NDY2LDE2LjcyMTYzIDMuNzYzMzUsMjIuNTgwMDkgMC4wNzQ2LDAuMDU5NCAwLjE1Mzk2LDAuMTA1NTQgMC4yMjkwNywwLjE2MzYyIDEuMDA5NzMsMC44MTg1MSAyLjI0NjE5LDEuODY3MjggMy4xNzQzLDIuNTUyNTQgNC4zNjM1MiwzLjIyMTc0IDguMzQ5NDgsNC44NzA5NiAxMi42OTcyMSw3LjQyODUyIDkuMTU5NzksNS42NTY3MyAxNi43NTMzNywxMC4zNDcxNiAyMi43NzY0NCwxNi4wMDI0MSAyLjM1MjAxLDIuNTA3MTUgMi43NjMxLDYuOTI1IDMuMDc2MTIsOC44MzU2OCBsIDQuOTA4NzIsNC4zODUxMiBjIC0yNi4yNzc2NCwzOS41NDU4NCAtMzguNDM5MTUsODguMzkyOTQgLTMxLjI1MjEsMTM4LjE2Mzk1IGwgLTYuNDE0MDUsMS44NjUzMSBjIC0xLjY5MDQ4LDIuMTgyOTkgLTQuMDc5MjUsNS42MTc5MSAtNi41Nzc3Myw2LjY0MzEzIC03Ljg4MDI2LDIuNDgyMDYgLTE2Ljc0OTA1LDMuMzkzNTIgLTI3LjQ1NjA4LDQuNTE2MDEgLTUuMDI2ODQsMC40MTc5OSAtOS4zNjQxOCwwLjE2ODU1IC0xNC42OTM0MiwxLjE3ODA5IC0xLjE3MjkzLDAuMjIyMiAtMi44MDcyMiwwLjY0Nzk4IC00LjA5MDU5LDAuOTQ5MDIgLTAuMDQ0NiwwLjAwOSAtMC4wODYzLDAuMDIyNiAtMC4xMzA5LDAuMDMyNyAtMC4wNywwLjAxNjIgLTAuMTYxODUsMC4wNTAyIC0wLjIyOTA3LDAuMDY1NCAtOS4wMjY5NSwyLjE4MTA5IC0xNC44MjU4OCwxMC40NzgyMSAtMTIuOTU5MDEsMTguNjUzMTIgMS44NjczMSw4LjE3NjgyIDEwLjY4NDY1LDEzLjE0OTM1IDE5Ljc2NTc2LDExLjE5MTg3IDAuMDY1NiwtMC4wMTUgMC4xNjA3NCwtMC4wMTc1IDAuMjI5MDcsLTAuMDMyNyAwLjEwMjUyLC0wLjAyMzUgMC4xOTI3OCwtMC4wNzMyIDAuMjk0NTIsLTAuMDk4MSAxLjI2NTksLTAuMjc3ODggMi44NTIzMiwtMC41ODcwNSAzLjk1OTcsLTAuODgzNTcgNS4yMzk0NiwtMS40MDI4NSA5LjAzNDA3LC0zLjQ2NDA3IDEzLjc0NDQsLTUuMjY4NjggMTAuMTMzNjIsLTMuNjM0NTcgMTguNTI2NjUsLTYuNjcwODUgMjYuNzAzNDEsLTcuODUzOTUgMy40MTUwOCwtMC4yNjc0NyA3LjAxMzE2LDIuMTA3MTIgOC44MDI5NiwzLjEwODg2IGwgNi42NzU4NSwtMS4xNDUzNyBjIDE1LjM2MjUsNDcuNjI5MjYgNDcuNTU3MzYsODYuMTI2MzYgODguMzI0MTMsMTEwLjI4MjQ1IGwgLTIuNzgxNiw2LjY3NTg1IGMgMS4wMDI2LDIuNTkyMjQgMi4xMDg0Myw2LjA5OTU4IDEuMzYxNTgsOC42NTk1NyAtMi45NzI2NSw3LjcwODU5IC04LjA2NDQsMTUuODQ1MDQgLTEzLjg2MjQ0LDI0LjkxNjA0IC0yLjgwNzM3LDQuMTkwNzggLTUuNjgwNTMsNy40NDMwMyAtOC4yMTM5MiwxMi4yMzkwNiAtMC42MDYyMiwxLjE0NzYxIC0xLjM3ODI5LDIuOTEwNDggLTEuOTYzNDgsNC4xMjMzMiAtMy45MzYyMyw4LjQyMTkgLTEuMDQ4OTEsMTguMTIxODcgNi41MTIyMywyMS43NjE5NyA3LjYwODYzLDMuNjYyOTUgMTcuMDUyOTcsLTAuMjAwMzcgMjEuMTQwMTksLTguNjM5MzQgMC4wMDYsLTAuMDExOSAwLjAyNjksLTAuMDIwNyAwLjAzMjcsLTAuMDMyNyAwLjAwNCwtMC4wMDkgLTAuMDA0LC0wLjAyMzYgMCwtMC4wMzI3IDAuNTgyMTcsLTEuMTk2NDcgMS40MDY5NCwtMi43NjkxNiAxLjg5ODA0LC0zLjg5NDI0IDIuMTY5OTIsLTQuOTcxMDUgMi44OTE5NCwtOS4yMzEwNyA0LjQxNzg0LC0xNC4wMzg5MyA0LjA1MjI0LC0xMC4xNzg4NSA2LjI3ODYyLC0yMC44NTkwNSAxMS44NTY5MiwtMjcuNTE0MDQgMS41Mjc1MiwtMS44MjIzNiA0LjAxNzg4LC0yLjUyMzIxIDYuNTk5ODUsLTMuMjE0NTEgbCAzLjQ2ODgyLC02LjI4MzE1IGMgMzUuNTM5ODcsMTMuNjQxNTYgNzUuMzIxMDYsMTcuMzAyMTkgMTE1LjA2MDI3LDguMjc5MzYgOS4wNjU1MSwtMi4wNTgzMyAxNy44MTczOSwtNC43MjIyNiAyNi4yNzc5OCwtNy45MTkzOSAwLjk3NDkyLDEuNzI5MjYgMi43ODY3Miw1LjA1MzQ0IDMuMjcyNDgsNS44OTA0NiAyLjYyMzg0LDAuODUzNjUgNS40ODc3NSwxLjI5NDQ3IDcuODIxMjIsNC43NDUwOSA0LjE3MzQ3LDcuMTMwMzEgNy4wMjc2LDE1LjU2NTYzIDEwLjUwNDY1LDI1Ljc1NDM5IDEuNTI2MTUsNC44MDc3NyAyLjI4MDM4LDkuMDY3OTggNC40NTA1NywxNC4wMzg5MiAwLjQ5NDYzLDEuMTMzMDEgMS4zMTUyNywyLjcyNzc5IDEuODk4MDMsMy45MjY5NyA0LjA3ODYzLDguNDY2MzggMTMuNTUyODksMTIuMzQyOTEgMjEuMTcyOTIsOC42NzIwNiA3LjU2MDIxLC0zLjY0MjAzIDEwLjQ1MDcxLC0xMy4zNDExMiA2LjUxMjIzLC0yMS43NjE5NiAtMC41ODUyNiwtMS4yMTI4IC0xLjM4OTk0LC0yLjk3NTc1IC0xLjk5NjIxLC00LjEyMzMyIC0yLjUzMzY0LC00Ljc5NTg5IC01LjQwNjM0LC04LjAxNTcyIC04LjIxMzkyLC0xMi4yMDYzNCAtNS43OTg1MiwtOS4wNzA3IC0xMC42MDc3MiwtMTYuNjA2MDYgLTEzLjU4MDc3LC0yNC4zMTQ1IC0xLjI0MzEzLC0zLjk3NTc0IDAuMjA5NzMsLTYuNDQ4MzQgMS4xNzgwOSwtOS4wMzIwMyAtMC41Nzk5MSwtMC42NjQ3MyAtMS44MjA4NywtNC40MTkyNSAtMi41NTI1MywtNi4xODQ5OCA0Mi4zNjY2OCwtMjUuMDE1NSA3My42MTYxMiwtNjQuOTQ4MjMgODguMjkxNDEsLTExMS4wNjc4NSAxLjk4MTcsMC4zMTE0NiA1LjQyNjA3LDAuOTIwODYgNi41NDQ5NSwxLjE0NTM3IDIuMzAzMzQsLTEuNTE5MTYgNC40MjExOCwtMy41MDEzMSA4LjU3Mzg5LC0zLjE3NDMgOC4xNzY4MSwxLjE4MjY2IDE2LjU2OTYsNC4yMTk5IDI2LjcwMzQsNy44NTM5NCA0LjcxMDQzLDEuODA0MzggOC41MDQ4OCwzLjg5ODgzIDEzLjc0NDQsNS4zMDE0MSAxLjEwNzQsMC4yOTY0NSAyLjY5Mzc4LDAuNTczMDMgMy45NTk3LDAuODUwODUgMC4xMDE3OSwwLjAyNDkgMC4xOTE5NSwwLjA3NDggMC4yOTQ1MiwwLjA5ODEgMC4wNjg0LDAuMDE1MyAwLjE2MzUyLDAuMDE3NyAwLjIyOTA4LDAuMDMyNyA5LjA4MTYzLDEuOTU1MDYgMTcuOTAwNTQsLTMuMDE0NTYgMTkuNzY1NzUsLTExLjE5MTg3IDEuODY0NzgsLTguMTc1MzkgLTMuOTMxNDcsLTE2LjQ3NDQ0IC0xMi45NTksLTE4LjY1MzExIC0xLjMxMzExLC0wLjI5ODU5IC0zLjE3NTM1LC0wLjgwNTY5IC00LjQ1MDU3LC0xLjA0NzIgLTUuMzI5MjksLTEuMDA5MjYgLTkuNjY2NTUsLTAuNzYwMzYgLTE0LjY5MzQyLC0xLjE3ODA5IC0xMC43MDcwOCwtMS4xMjE5NCAtMTkuNTc1NjksLTIuMDM0MzcgLTI3LjQ1NjA3LC00LjUxNjAxIC0zLjIxMzA2LC0xLjI0NjQ2IC01LjQ5ODg0LC01LjA2OTcxIC02LjYxMDQ2LC02LjY0MzEzIGwgLTYuMTg0OTgsLTEuNzk5ODYgYyAzLjIwNjc4LC0yMy4xOTk5NCAyLjM0MjEsLTQ3LjM0NDk3IC0zLjIwNzAzLC03MS41MDM2MSAtNS42MDA3OSwtMjQuMzgzNTcgLTE1LjQ5ODgzLC00Ni42ODQ3MiAtMjguNjk5NjEsLTY2LjMzMzA5IDEuNTg2NTUsLTEuNDQyMjkgNC41ODI3MSwtNC4wOTU0OCA1LjQzMjMxLC00Ljg3NTk5IDAuMjQ4MzUsLTIuNzQ4MDEgMC4wMzUsLTUuNjI5MjIgMi44Nzk3OCwtOC42NzIwNiA2LjAyMjc2LC01LjY1NTU3IDEzLjYxNjk0LC0xMC4zNDUyIDIyLjc3NjQzLC0xNi4wMDI0MSA0LjM0NzYsLTIuNTU3NzkgOC4zNjY1OSwtNC4yMDY1NSAxMi43Mjk5MywtNy40Mjg1MiAwLjk4NjcyLC0wLjcyODYgMi4zMzQwOSwtMS44ODI0MyAzLjM3MDY1LC0yLjcxNjE2IDcuMzQ2NDYsLTUuODYwNDMgOS4wMzc4OCwtMTUuOTY4MDMgMy43NjMzNSwtMjIuNTgwMDkgLTUuMjc0NTMsLTYuNjEyMDUgLTE1LjQ5NTQzLC03LjIzNDg3IC0yMi44NDE4OCwtMS4zNzQ0NCAtMS4wNDU2OSwwLjgyODE4IC0yLjQ2NDYsMS45MDg1MyAtMy40MDMzOCwyLjcxNjE2IC00LjExMTgsMy41MzczNyAtNi42NTExOSw3LjAzMTI2IC0xMC4xMTE5NSwxMC43MDEgLTcuNTUyODYsNy42NzE2OCAtMTMuNzk1NzgsMTQuMDcxOTMgLTIwLjY0OTMyLDE4LjY4NTg0IC0yLjk2OTg1LDEuNzI4OTcgLTcuMzE5ODQsMS4xMzA3MyAtOS4yOTM4OSwxLjAxNDQ2IGwgLTUuODI1MDEsNC4xNTYwNSBDIDUwMC4yNzMxMSwzNzYuODYzMTggNDU1LjA0OTIsMzU0LjU5NDc1IDQwNi4zNTMzLDM1MC4yNjg5NyBjIC0wLjEzNjIsLTIuMDQwNjkgLTAuMzE0NjMsLTUuNzI5MzcgLTAuMzU5OTcsLTYuODM5NDggLTEuOTkzNTUsLTEuOTA3NjIgLTQuNDAxNzksLTMuNTM2MjIgLTUuMDA2ODksLTcuNjU3NTkgLTAuNjY2MTksLTguMjM1MDEgMC40NDYwNywtMTcuMDk0OTkgMS43MzQ0MSwtMjcuNzgzMzMgMC43MTExNSwtNC45OTM4MSAxLjg5MjY4LC05LjE0MjI1IDIuMDk0MzksLTE0LjU2MjUyIDAuMDQ1OSwtMS4yMzIxNSAtMC4wMjc3LC0zLjAyMDExIC0wLjAzMjcsLTQuMzUyMzkgLTEwZS00LC05LjM5NzU5IC02Ljg1NzA1LC0xNy4wMTc3MiAtMTUuMzE1MTgsLTE3LjAxNjg3IHogbSAtMTkuMTc2NzEsMTE4Ljc5MDg4IC00LjU0ODc0LDgwLjMzOTI5IC0wLjMyNzI1LDAuMTYzNjMgYyAtMC4zMDUwOSw3LjE4NzI1IC02LjIyMDI4LDEyLjkyNjI4IC0xMy40ODI2LDEyLjkyNjI4IC0yLjk3NDg3LDAgLTUuNzIwNzUsLTAuOTU1MzQgLTcuOTUyMTIsLTIuNTg1MjYgbCAtMC4xMzA5LDAuMDY1NCAtNjUuODc0OTQsLTQ2LjY5ODIzIGMgMjAuMjQ2MDUsLTE5LjkwODM0IDQ2LjE0MjM0LC0zNC42MjA1OSA3NS45ODY5LC00MS4zOTY4MyA1LjQ1MTY3LC0xLjIzNzgxIDEwLjkwMDkxLC0yLjE1NjI3IDE2LjMyOTY1LC0yLjgxNDMzIHogbSAzOC4zODYxNSwwIGMgMzQuODQzNzIsNC4yODU0NSA2Ny4wNjc0NSwyMC4wNjI5NyA5MS43NjAyMyw0NC4yNDM4OCBsIC02NS40NDk1Miw0Ni40MDM3MSAtMC4yMjkwOCwtMC4wOTgxIGMgLTUuODA5MjQsNC4yNDI5IC0xMy45OTQwOCwzLjE5MDE2IC0xOC41MjIyMSwtMi40ODcwOCAtMS44NTQ5MSwtMi4zMjU3NyAtMi44MjgxNywtNS4wNjA0NCAtMi45NDUyMywtNy44MjEyMiBsIC0wLjA2NTUsLTAuMDMyNyB6IG0gLTE1NC41OTE3OCw3NC4yMTk3NiA2MC4xNDgxMSw1My43OTk1MSAtMC4wNjU0LDAuMzI3MjUgYyA1LjQyOTA0LDQuNzE5NjcgNi4yMjk2MywxMi45MDk3MyAxLjcwMTY5LDE4LjU4NzY3IC0xLjg1NDc4LDIuMzI1ODYgLTQuMzM3NTUsMy44ODU4NSAtNy4wMDMxLDQuNjE0MTkgbCAtMC4wNjU0LDAuMjYxOCAtNzcuMDk5NTQsMjIuMjUyODMgYyAtMy45MjQxMiwtMzUuODgyMjIgNC41MzI4MywtNzAuNzYyNiAyMi4zODM3NCwtOTkuODQzMjUgeiBtIDI3MC4zMzkyNiwwLjAzMjcgYyA4LjkzNjg1LDE0LjQ4NTM1IDE1LjcwNDI4LDMwLjY2NDAzIDE5LjczMzA0LDQ4LjIwMzU3IDMuOTgwNDQsMTcuMzI5MjMgNC45NzkzOSwzNC42Mjc0OCAzLjMzNzkyLDUxLjM0NTE1IGwgLTc3LjQ5MjI0LC0yMi4zMTgyOCAtMC4wNjU0LC0wLjMyNzI1IGMgLTYuOTM5MjIsLTEuODk2NTEgLTExLjIwMzgzLC04Ljk1NTE5IC05LjU4ODM1LC0xNi4wMzUxNCAwLjY2MTg2LC0yLjkwMDMyIDIuMjAxNDMsLTUuMzUzOTEgNC4yODY5NCwtNy4xNjY3MiBsIC0wLjAzMjcsLTAuMTYzNjIgNTkuODIwODcsLTUzLjUzNzcxIHogTSAzNzcuMTMwMDYsNTIzLjAyMyBoIDI0LjY0MTc0IGwgMTUuMzE1MTksMTkuMTQzOTggLTUuNDk3NzYsMjMuODg5MDggLTIyLjEyMTk0LDEwLjYzNTU1IC0yMi4xODczOSwtMTAuNjY4MjggLTUuNDk3NzYsLTIzLjg4OTA3IHogbSA3OC45OTc1Nyw2NS41MTQ5NyBjIDEuMDQ3MTcsLTAuMDUyOSAyLjA4OTc2LDAuMDQxNSAzLjEwODg2LDAuMjI5MDcgbCAwLjEzMDksLTAuMTYzNjIgNzkuNzUwMjQsMTMuNDgyNiBjIC0xMS42NzE0OCwzMi43OTA4NCAtMzQuMDA1MjgsNjEuMTk4MTEgLTYzLjg0NjAxLDgwLjIwODM5IGwgLTMwLjk1NzYyLC03NC43NzYwOCAwLjA5ODEsLTAuMTMwOSBjIC0yLjg0Mzc3LC02LjYwNzc3IDAuMDAyLC0xNC4zNTY1NCA2LjU0NDk1LC0xNy41MDc3NCAxLjY3NTE0LC0wLjgwNjc3IDMuNDI1MjUsLTEuMjUzNSA1LjE3MDUxLC0xLjM0MTcyIHogbSAtMTMzLjk0MjQ1LDAuMzI3MjUgYyA2LjA4NjAxLDAuMDg1MyAxMS41NDQ5LDQuMzA5NDYgMTIuOTU5MDEsMTAuNTA0NjUgMC42NjIwMiwyLjkwMDI4IDAuMzM5ODEsNS43NzM5NSAtMC43NTI2Nyw4LjMxMjA5IGwgMC4yMjkwNywwLjI5NDUyIC0zMC42MzAzOCw3NC4wMjM0MSBDIDI3NS4zNTI0OCw2NjMuNjIzMTMgMjUyLjU0MjQyLDYzNi4xMDc3IDI0MC4zNDA1NSw2MDIuMzQ3ODcgbCA3OS4wNjMwMywtMTMuNDE3MTUgMC4xMzA5LDAuMTYzNjIgYyAwLjg4NDM2LC0wLjE2Mjc0IDEuNzgxMjcsLTAuMjQxMjcgMi42NTA3LC0wLjIyOTA3IHogbSA2Ni43OTEyNCwzMi40MzAyOSBjIDIuMTE5OTksLTAuMDc3OSA0LjI3MTEzLDAuMzU3MDcgNi4zMTU4OCwxLjM0MTcyIDIuNjgwMywxLjI5MDY5IDQuNzUwODMsMy4zMjI5NCA2LjA1NDA4LDUuNzU5NTUgaCAwLjI5NDUyIGwgMzguOTc1Miw3MC40MjM2OSBjIC01LjA1ODI1LDEuNjk1NjUgLTEwLjI1ODM5LDMuMTQ0OCAtMTUuNTc2OTksNC4zNTI0IC0yOS44MDc4NCw2Ljc2NzkgLTU5LjUyMDk3LDQuNzE3MjUgLTg2LjQyNjEsLTQuNDUwNTcgbCAzOC44NzcwMiwtNzAuMjkyNzkgaCAwLjA2NTQgYyAyLjMzMjgsLTQuMzYwOTQgNi43NTY5OCwtNi45NjI2NSAxMS40MjA5NCwtNy4xMzQgeiIgaWQ9InBhdGgzMDU5Ii8+JiN4YTsgICAgPC9nPiYjeGE7ICA8L2c+JiN4YTs8L3N2Zz4="/>
            </g>
          </g>
        </g>
        <g data-cell-id="24" class="fragment" data-fragment-index="30">
          <g>
            <rect x="491" y="359.46" width="250" height="220" fill="rgb(255, 255, 255)" stroke="#00426b"
                  stroke-width="2" pointer-events="all"/>
          </g>
        </g>
        <g data-cell-id="25" class="fragment" data-fragment-index="30">
          <g/>
          <g data-cell-id="26" class="fragment" data-fragment-index="30">
            <g>
              <rect x="497" y="700" width="120" height="160" fill="rgb(255, 255, 255)" stroke="#00426b" stroke-width="2"
                    pointer-events="all"/>
            </g>
          </g>
          <g data-cell-id="27">
            <g>
              <image x="526.8" y="709.5" width="50.71" height="70"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWw6c3BhY2U9InByZXNlcnZlIiBoZWlnaHQ9IjMxMiIgd2lkdGg9IjIyNiIgdmVyc2lvbj0iMS4xIiBpZD0ic3ZnMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB2aWV3Qm94PSIwIDAgMjI2IDMxMiI+PG1ldGFkYXRhIGlkPSJtZXRhZGF0YTgiPmltYWdlL3N2Zyt4bWw8L21ldGFkYXRhPjxkZWZzIGlkPSJkZWZzNiI+PGNsaXBQYXRoIGlkPSJjbGlwUGF0aDE4IiBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+PHBhdGggaWQ9InBhdGgyMCIgZD0iTSAwLDI0OTQuODQgMCwwIGwgMTgwNC4zNCwwIDAsMjQ5NC44NCAtMTgwNC4zNCwwIHoiLz48L2NsaXBQYXRoPjwvZGVmcz48ZyB0cmFuc2Zvcm09Im1hdHJpeCgxLjI1LDAsMCwtMS4yNSwwLDMxMikiIGlkPSJnMTAiPjxnIGlkPSJnMzM5MyI+PHBhdGggaWQ9InBhdGgyMiIgc3R5bGU9ImZpbGw6I2QzMzgzMztmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxNzcuNzE4LDEyOS4yNjQgYyAwLC00OS40Mjg4IC0zOS4xNzUsLTg5LjQ5OTIgLTg3LjUsLTg5LjQ5OTIgLTQ4LjMyNDIsMCAtODcuNDk5MjUsNDAuMDcwNCAtODcuNDk5MjUsODkuNDk5MiAwLDQ5LjQzIDM5LjE3NTA1LDg5LjUwMSA4Ny40OTkyNSw4OS41MDEgNDguMzI1LDAgODcuNSwtNDAuMDcxIDg3LjUsLTg5LjUwMSIvPjxwYXRoIGlkPSJwYXRoMjQiIHN0eWxlPSJmaWxsOiNlZjNkM2E7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gNi4yODQzOCwxMDcuMDk4IGMgMCwwIC02LjMzNDM4LDkzLjMzMyA3OS42NjYwMiw5NiBsIC01Ljk5OTYsMTAgLTQ2LjY2NjQsLTE1LjY2NyAtMTMuMzMzNiwtMTUuMzMzIC0xMS42NjY0MiwtMjIuMzM0IC02LjY2NzE5LC0yNiAyLC0xNy4zMzMiLz48cGF0aCBpZD0icGF0aDI2IiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lIiBkPSJNIDMwLjI4ODMsMTkwLjMxOSBDIDE0LjkzNjMsMTc0LjYxMSA1LjQzNjMzLDE1Mi45MjMgNS40MzYzMywxMjguOTMgbCAwLDAgYyAwLC0yMy45ODggOS40OTk5NywtNDUuNjc4OCAyNC44NTE5NywtNjEuMzgzOSBsIDAsMCBDIDQ1LjY0NzcsNTEuODQxIDY2LjgxNTIsNDIuMTUgOTAuMjE2OCw0Mi4xNSBsIDAsMCBjIDIzLjQwMjIsMCA0NC41NzEyLDkuNjkxIDU5LjkyOTIsMjUuMzk2MSBsIDAsMCBjIDE1LjM1MSwxNS43MDUxIDI0Ljg1MywzNy4zOTU5IDI0Ljg1Myw2MS4zODM5IGwgMCwwIGMgMCwyMy45OTMgLTkuNTAyLDQ1LjY4MSAtMjQuODUzLDYxLjM4OSBsIDAsMCBjIC0xNS4zNTgsMTUuNzAyIC0zNi41MjcsMjUuMzkzIC01OS45MjkyLDI1LjM5NSBsIDAsMCBDIDY2LjgxNTIsMjE1LjcxMiA0NS42NDc3LDIwNi4wMjEgMzAuMjg4MywxOTAuMzE5IGwgMCwwIHogTSAyNi40MDIzLDYzLjc0NjkgQyAxMC4wODY3LDgwLjQzMjggMCwxMDMuNDkzIDAsMTI4LjkzIGwgMCwwIGMgMCwyNS40NDEgMTAuMDg2Nyw0OC40OTkgMjYuNDAyMyw2NS4xODYgbCAwLDAgYyAxNi4zMTE4LDE2LjY5IDM4Ljg5MTUsMjcuMDM1IDYzLjgxNDUsMjcuMDMyIGwgMCwwIGMgMjQuOTIzMiwwLjAwMyA0Ny41MDUyLC0xMC4zNDIgNjMuODE0MiwtMjcuMDMyIGwgMCwwIGMgMTYuMzE3LC0xNi42ODcgMjYuNDA1LC0zOS43NDcgMjYuNDAzLC02NS4xODYgbCAwLDAgYyAwLjAwMiwtMjUuNDM3IC0xMC4wODYsLTQ4LjQ5NzIgLTI2LjQwMywtNjUuMTgzMSBsIDAsMCBDIDEzNy43MjIsNDcuMDU3OCAxMTUuMTQsMzYuNzE0MSA5MC4yMTY4LDM2LjcxNDEgbCAwLDAgYyAtMjQuOTIzLDAgLTQ3LjUwMjcsMTAuMzQzNyAtNjMuODE0NSwyNy4wMzI4IGwgMCwwIi8+PHBhdGggaWQ9InBhdGgyOCIgc3R5bGU9ImZpbGw6I2YwZDZiNztmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMjcuMDUxLDEyOC43NjggLTEzLjMzNCwtMiAtMTguMDAwMiwtMiAtMTEuNjY3MiwtMC4zMzMgLTExLjMzMjgsMC4zMzMgLTguNjY3MiwyLjY2NyAtNy42NjY4LDguMzMzIC02LDE3IC0xLjMzMzIsMy42NjcgLTgsMi42NjYgLTQuNjY2OCw3LjY2NyAtMy4zMzMyLDExIDMuNjY3Miw5LjY2NyA4LjY2NiwzIDcsLTMuMzM0IDMuMzM0LC03LjMzMyA0LDAuNjY3IDEuMzMyOCwxLjY2NiAtMS4zMzI4LDcuNjY3IC0wLjMzNCw5LjY2NyAyLDEzLjMzMyAtMC4wNzgxLDcuNjE2IDYuMDc4MSw5LjcxNyAxMC42NjY4LDcuNjY3IDE4LjY2NzIsOCAyMC42NjYyLC0zIDE4LC0xMyA4LjMzNCwtMTMuMzMzIDUuMzMzLC05LjY2NyAxLjMzMywtMjQgLTQsLTIwLjY2NyAtNy4zMzMsLTE4LjMzMyAtNywtOS42NjciLz48cGF0aCBpZD0icGF0aDMwIiBzdHlsZT0iZmlsbDojMzM1MDYxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDExNS43MTcsNzEuMTAyIC00Ny42Njc0LC0yIDAsLTggNCwtMjggLTIsLTIuMzM0IC0zMy4zMzI4LDExLjMzNCAtMi4zMzQsNCAtMy4zMzMyLDM3LjY2NiAtNy42NjU2LDIyLjY2NyAtMS42NjcyLDUuMzMzIDI2LjY2NiwxOC4zMzMgOC4zMzQsMy4zMzQgNy4zMzI4LC05IDYuMzMzMiwtNS42NjcgNy4zMzQsLTIuMzMzIDMuMzMyOCwtMSA0LC0xNy4zMzMgMywtMy42NjY4IDcuNjY3MiwyLjY2NjggLTUuMzM0LC0xMC4zMzQgMjkuMDAwMiwtMTMuNjY2IC0zLjY2NiwtMiIvPjxwYXRoIGlkPSJwYXRoMzIiIHN0eWxlPSJmaWxsOiM2ZDZiNmQ7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMzYuNzE2OCwxODcuNDM1IDguNjY2LDMgNywtMy4zMzQgMy4zMzQsLTcuMzMzIDQsMC42NjcgMSw0IC0yLDcuNjY2IDIsMTguMzM0IC0xLjY2NzIsMTAgNiw3IDEzLDEwLjMzMyAtMy42NjY4LDUgLTE4LjMzMzIsLTkgLTcuNjY2OCwtNiAtNC4zMzMyLC05LjMzMyAtNi42NjY4LC05IC0yLC0xMC42NjcgMS4zMzQsLTExLjMzMyIvPjxwYXRoIGlkPSJwYXRoMzQiIHN0eWxlPSJmaWxsOiNkY2Q5ZDg7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gNTAuMzgyOCwyMTguNzY4IGMgMCwwIDUsMTIuMzMzIDI1LDE4LjMzMyAyMCw2IDEsNC4zMzQgMSw0LjMzNCBsIC0yMS42NjYsLTguMzM0IC04LjMzNCwtOC4zMzMgLTMuNjY2LC02LjY2NyA3LjY2NiwwLjY2NyIvPjxwYXRoIGlkPSJwYXRoMzYiIHN0eWxlPSJmaWxsOiNkY2Q5ZDg7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gNDAuMzgyOCwxODkuNzY4IGMgMCwwIC03LDIzLjMzNCAxOS42NjY4LDI2LjY2NyBsIC0xLDQgLTE4LjMzMjgsLTQuMzM0IC01LjMzNCwtMTcuMzMzIDEuMzM0LC0xMS4zMzMgMy42NjYsMi4zMzMiLz48cGF0aCBpZD0icGF0aDM4IiBzdHlsZT0iZmlsbDojZjdlNGNkO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDUxLjA0OTYsMTU4Ljc2OCA0LjM2NDUsNC4yMjkgYyAwLDAgMS45Njk5LC0wLjIyOSAyLjMwMjcsLTIuNTYyIDAuMzMyOCwtMi4zMzQgMS4zMzI4LC0yMy4zMzQgMTUuNjY2LC0zNC42NjggMS4zMDc0LC0xLjAzNCAtMTAuNjY2LDEuNjY4IC0xMC42NjYsMS42NjggbCAtMTAuNjY3MiwxNi42NjYiLz48cGF0aCBpZD0icGF0aDQwIiBzdHlsZT0iZmlsbDojZjdlNGNkO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDExMi4zODUsMTY1LjEwMSBjIDAsMCAwLjc3NywxMC4xMDQgMy40OTgsOS4zMjcgMi43MjEsLTAuNzc3IDIuNzIxLC0zLjQ5OCAyLjcyMSwtMy40OTggMCwwIC02LjYwOCwtNC4yNzUgLTYuMjE5LC01LjgyOSIvPjxwYXRoIGlkPSJwYXRoNDIiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gMTQwLjA1LDIwMi4xMDEgYyAwLDAgLTUuNDk0LC0xLjE2IC02LC02IC0wLjUwNiwtNC44NDEgNiwtMSA3LC0wLjY2NyIvPjxwYXRoIGlkPSJwYXRoNDQiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gOTkuNzE2OCwyMDEuNzY3IGMgMCwwIC03LjMzNCwtMSAtNy4zMzQsLTUuNjY2IDAsLTQuNjY3IDguMzM0MiwtNC4zMzQgMTAuNjY3MiwtMi4zMzQiLz48cGF0aCBpZD0icGF0aDQ2IiBzdHlsZT0iZmlsbDojZjdlNGNkO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDU0LjM4MjgsMTgwLjEwMSBjIDAsMCAtMTIuNjY3Miw3LjY2NyAtMTQsMC4zMzMgLTEuMzMzMiwtNy4zMzMgLTQuMzM0LC0xMi42NjcgMiwtMjAuMzMzIGwgLTQuMzMzMiwxLjMzMyAtNCwxMC4zMzMgLTEuMzMyOCwxMCA3LjY2Niw4LjAwMSA4LjY2NjgsLTAuNjY3IDUsLTQgMC4zMzMyLC01Ii8+PHBhdGggaWQ9InBhdGg0OCIgc3R5bGU9ImZpbGw6I2Y3ZTRjZDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2MC4zODI4LDIwMS4xMDEgYyAwLDAgNS42NjY4LDI5LjMzMyAzNC4zMzQsMzUgMjMuNjAxMiw0LjY2NSAzNS45OTkyLC0xIDQwLjY2NjIsLTYuMzMzIDAsMCAtMjEsMjQuOTk5IC00MS4wMDAyLDE3LjMzMyAtMjAsLTcuNjY3IC0zNC42NjYsLTIxLjY2NyAtMzQuMzMzMiwtMzAuNjY2IDAuNTY3NiwtMTUuMzI4IDAuMzMzMiwtMTUuMzM0IDAuMzMzMiwtMTUuMzM0Ii8+PHBhdGggaWQ9InBhdGg1MCIgc3R5bGU9ImZpbGw6I2Y3ZTRjZDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMzcuNzE3LDIyNi40MzUgYyAwLDAgLTkuNjY2LDAuMzMzIC0xMCwtOC4zMzQgMCwwIC0wLjAwMSwtMS4zMzMgMC42NjYsLTIuNjY2IDAsMCA3LjY2OCw4LjY2NyAxMi4zMzQsNCIvPjxwYXRoIGlkPSJwYXRoNTIiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTUuMzg4NywyMTQuNTMyIGMgMCwwIC0xLjY2NDEsMTMuMzAzIC0xMy4wMDU5LDUuNTY5IC03LjMzMzIsLTUgLTYuNjY2LC0xMiAtNS4zMzMyLC0xMy4zMzMgMS4zMzMyLC0xLjMzNCAwLjk3MDcsLTQuMDE5IDEuOTg1NiwtMi4xNzYgMS4wMTQ0LDEuODQzIDAuNjgwNCw3Ljg0MyA0LjM0NzYsOS41MDkgMy42NjY4LDEuNjY3IDkuNjc3NywzLjUyOSAxMi4wMDU5LDAuNDMxIi8+PHBhdGggaWQ9InBhdGg1NCIgc3R5bGU9ImZpbGw6IzQ5NzI4YjtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2NC4wNDk2LDEyNC40MzUgLTMxLjMzMjgsLTE0IGMgMCwwIDEzLC01MS42NjcgNi4zMzI4LC02Ny42NjcgbCAtNC42NjY4LDEuNjY2IC0wLjMzMzIsMTkuNjY3MiAtOC42NjU2LDM3LjMzMjggLTMuNjY3MiwxMC4zMzQgMzIuNjY2LDIxLjk5OSA5LjY2NjgsLTkuMzMyIi8+PHBhdGggaWQ9InBhdGg1NiIgc3R5bGU9ImZpbGw6IzQ5NzI4YjtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2Ny4yNzE1LDk1Ljg1NzggNC40NDUzLC01LjQyMzggMCwtMjAgLTUuMzM0LDAgYyAwLDAgLTAuNjY2LDE0IC0wLjY2NiwxNS42NjcyIDAsMS42NjY4IDAuNjY2LDcuNjY2OCAwLjY2Niw3LjY2NjgiLz48cGF0aCBpZD0icGF0aDU4IiBzdHlsZT0iZmlsbDojNDk3MjhiO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDY3LjM4MjgsNjcuNDM0IC0xNSwtMC42NjYgNC4zMzQsLTMgMTAuNjY2LC0xLjY2NjgiLz48cGF0aCBpZD0icGF0aDYwIiBzdHlsZT0iZmlsbDojMzM1MDYxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDExOC43MTcsNzAuNzY4IDEyLjMzMywwLjMzMzIgMywtMzAuNjY3MiAtMTIuNjY3LC0xLjY2NiAtMi42NjYsMzIiLz48cGF0aCBpZD0icGF0aDYyIiBzdHlsZT0iZmlsbDojMzM1MDYxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEyMi4wNSw3MC43NjggMTguNjY3LDEgYyAwLDAgNy42NjYsMTkuMzMzMiA3LjY2NiwyMC4zMzMyIDAsMSA2LjY2NywyNy45OTk4IDYuNjY3LDI3Ljk5OTggbCAtMTUsMTUuNjY2IC0zLDIuNjY3IC04LC04IDAsLTMxIC03LC0yOC42NjYiLz48cGF0aCBpZD0icGF0aDY0IiBzdHlsZT0iZmlsbDojNDk3MjhiO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzMC4zODMsNzMuMTAxMiAtMTEuNjY2LC0yLjMzMzIgMS42NjYsLTkuMzM0IGMgNC4zMzMsLTIgMTEuNjY3LDMuMzM0IDExLjY2NywzLjMzNCIvPjxwYXRoIGlkPSJwYXRoNjYiIHN0eWxlPSJmaWxsOiM0OTcyOGI7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTMwLjcxNywxMzEuNDM0IDIzLjMzMywtMTcuMzMzIDAuNjY3LDggLTE3LjY2NywxNi4zMzMgLTYuMzMzLC03Ii8+PHBhdGggaWQ9InBhdGg2OCIgc3R5bGU9ImZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0iTSA3OC45NTA4LDUuMDk4MDUgNzIuMDQ5NiwzMy4xMDIgNjguNjE3Miw1My43NjQ4IDY4LjA0OTYsNjkuMTAyIGwgMzEuMjM0OCwxLjY2MjggMTkuNDMyNiwwLjAwMzIgLTEuNzY3LC0zNS4wMDMyIDMsLTI2Ljk5OTk2IC0wLjMzMywtNSAtMjUuMzMyNiwtMiAtMTUuMzMzNiwzLjMzMzIxIi8+PHBhdGggaWQ9InBhdGg3MCIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMTQuMzgzLDcxLjEwMTIgYyAwLDAgLTEuNjY2LC0zNC42NjcyIDMuMzM0LC01OS4zMzMyIDAsMCAtMTAsLTYuMzM0MDIgLTI0LjY2NzQsLTguMDAwMDMgbCAyOC4wMDA0LDEgMy4zMzMsMiAtNCw1NC42NjYwMyAtMSwxMS42NjgiLz48cGF0aCBpZD0icGF0aDcyIiBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzNC42MTgsNDMuMDk4IDEzLDMuNjY2OCAyNC42NjYsMS4zMzMyIDMuNjY3LDExLjMzMjkgLTYuNjY3LDE5LjY2NzEgLTcuNjY2LDEgLTEwLjY2NywtMy4zMzMyIC0xMC4yMzQsLTQuOTk2OCAtNS40MzMsMC45OTY4IC00LjIzNCwtMS42NjM2Ii8+PHBhdGggaWQ9InBhdGg3NCIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMzQuMzgzLDQ5Ljc2OCBjIDAsMCA4LjY2NiwzLjk5OTIgMTAsMy42NjYgbCAtMy42NjYsMTguMzM0IDQuMzMzLDEuNjY2IGMgMCwwIDMsLTE3LjMzMjggMywtMTkuMzMyOCAwLDAgMTguNjY2LC0xIDIwLjMzMywtMSAwLDAgNCw3LjY2NjggMywxNS42NjY4IGwgMy42NjcsLTEwLjY2NjggMC4zMzMsLTYgLTUuMzMzLC04IC02LC0xLjMzMzIgLTEwLDAuMzMzMiAtMy4zMzMsNC4zMzI4IC0xMS42NjcsLTEuNjY2IC0zLjY2NywtMS4zMzQiLz48cGF0aCBpZD0icGF0aDc2IiBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lIiBkPSJtIDEyMS4yODQsNzMuNDMwOSAtNy4zMzMsMTguNjY3MSAtNy42NjcsMTEgYyAwLDAgMS42NjYsNC42NjcgNCw0LjY2NyAyLjMzNCwwIDcuNjY3LDAgNy42NjcsMCBsIDcuMzMzLC0yLjY2NyAtMC42NjYsLTEyLjMzMzIgLTMuMzM0LC0xOS4zMzM5Ii8+PHBhdGggaWQ9InBhdGg3OCIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMjIuNzE3LDc5Ljc2OCBjIDAsMCAtOS4zMzQsMTcuOTk5MiAtOS4zMzQsMjAuNjY2IDAsMCAxLjY2Niw0IDQsMyAyLjMzNCwtMSA3LjMzNCwtMy42NjYgNy4zMzQsLTMuNjY2IGwgMCw2LjMzMyAtMTEuMzM0LDIuMzM0IC03LjY2NiwtMSAxMywtMzAuNjY3IDIuNjY2LC0wLjMzNCIvPjxwYXRoIGlkPSJwYXRoODAiIHN0eWxlPSJmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gODEuOTUxMiwxMjMuNzY0IC05LjIzNDQsMS4wMDQgLTguNjY3MiwyLjY2NyAwLC0zIDQuMjM0OCwtNC42NyAxMy4zMzMyLC02Ii8+PHBhdGggaWQ9InBhdGg4MiIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2Ny4wNTA4LDEyMi43NjUgYyAwLDAgMTAuMzM0LC00LjMzNCAxMy42NjcyLC0zLjMzNCBsIDAuMzMxNiwtMy45OTYgLTkuMzMxNiwxLjk5NiAtNS42NjcyLDQgMSwxLjMzNCIvPjxwYXRoIGlkPSJwYXRoODQiIHN0eWxlPSJmaWxsOiNkMzM4MzM7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTM0LjU4MiwxMDYuNjMgYyAtNS42NTYsMC4xNjYgLTEwLjc2NiwwLjgzOCAtMTUuMjQsMi4xIDAuMzA0LDEuODM0IC0wLjI2NSwzLjYzNCAwLjE5Miw0Ljk1NSAxLjI0NywwLjg5OCAzLjMzNywwLjg4NCA1LjIyMiwxLjA5NSAtMS42MywwLjgwMSAtMy45MiwxLjExOCAtNS44MDEsMC42NTUgLTAuMDQ0LDEuMjczIC0wLjYxNSwyLjA2MiAtMC45NjEsMy4wNTggMy4xOCwxLjEzNSAxMC42ODcsOC41NzYgMTQuOTEsNi4xMTIgMi4wMTIsLTEuMTcyIDIuODY3LC03Ljg2NiAzLjAyMywtMTEuMTIxIDAuMTMsLTIuNyAtMC4yNDUsLTUuNDI0IC0xLjM0NSwtNi44NTQiLz48cGF0aCBpZD0icGF0aDg2IiBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZDMzODMzO3N0cm9rZS13aWR0aDoyO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLW9wYWNpdHk6MTtzdHJva2UtZGFzaGFycmF5Om5vbmUiIGQ9Im0gMTM0LjU4MiwxMDYuNjMgYyAtNS42NTYsMC4xNjYgLTEwLjc2NiwwLjgzOCAtMTUuMjQsMi4xIDAuMzA0LDEuODM0IC0wLjI2NSwzLjYzNCAwLjE5Miw0Ljk1NSAxLjI0NywwLjg5OCAzLjMzNywwLjg4NCA1LjIyMiwxLjA5NSAtMS42MywwLjgwMSAtMy45MiwxLjExOCAtNS44MDEsMC42NTUgLTAuMDQ0LDEuMjczIC0wLjYxNSwyLjA2MiAtMC45NjEsMy4wNTggMy4xOCwxLjEzNSAxMC42ODcsOC41NzYgMTQuOTEsNi4xMTIgMi4wMTIsLTEuMTcyIDIuODY3LC03Ljg2NiAzLjAyMywtMTEuMTIxIDAuMTMsLTIuNyAtMC4yNDUsLTUuNDI0IC0xLjM0NSwtNi44NTQgeiIvPjxwYXRoIGlkPSJwYXRoODgiIHN0eWxlPSJmaWxsOiNkMzM4MzM7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTA3LjUzNSwxMTUuODc2IGMgLTAuMDE1LC0wLjQyOCAtMC4wMzMsLTAuODU5IC0wLjA1LC0xLjI5MSAtMS43NjYsLTEuMTYgLTQuNjE3LC0xLjE0NiAtNi41NTUsLTIuMTIxIDIuODU3LC0wLjEyNSA1LjEwNiwtMC44MTMgNy4wNTIsLTEuNzgzIC0wLjA0MywtMS4wNzggLTAuMDg0LC0yLjE1NSAtMC4xMjYsLTMuMjMzIC0zLjIzNywtMi4yMTYgLTYuMTk0LC01LjUxNiAtMTAuMDA1MiwtNy41OTQxIC0xLjgwMiwtMC45ODI4IC04LjEyNjIsLTMuNTExNyAtMTAuMDQzNCwtMy4wNjQ4IC0xLjA4NDcsMC4yNTE5IC0xLjE4MjQsMS41OTggLTEuNjE2LDIuODY2OCAtMC45MjM4LDIuNzE3MSAtMy4wNTA4LDcuMDQyMSAtMy4yMzYzLDExLjEzMjEgLTAuMjM2Myw1LjE2NiAtMC43NTc4LDEzLjgyNCA0LjgwOTQsMTIuNzYgNC40OTE0LC0wLjg1NyA5LjcxNTIsLTIuOTI2IDEzLjE5MjUsLTQuODI2IDIuMTI1LC0xLjE2MiAzLjM1NCwtMi41OTggNi41NzgsLTIuODQ2Ii8+PHBhdGggaWQ9InBhdGg5MCIgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6I2QzMzgzMztzdHJva2Utd2lkdGg6MjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1vcGFjaXR5OjE7c3Ryb2tlLWRhc2hhcnJheTpub25lIiBkPSJtIDEwNy41MzUsMTE1Ljg3NiBjIC0wLjAxNSwtMC40MjggLTAuMDMzLC0wLjg1OSAtMC4wNSwtMS4yOTEgLTEuNzY2LC0xLjE2IC00LjYxNywtMS4xNDYgLTYuNTU1LC0yLjEyMSAyLjg1NywtMC4xMjUgNS4xMDYsLTAuODEzIDcuMDUyLC0xLjc4MyAtMC4wNDMsLTEuMDc4IC0wLjA4NCwtMi4xNTUgLTAuMTI2LC0zLjIzMyAtMy4yMzcsLTIuMjE2IC02LjE5NCwtNS41MTYgLTEwLjAwNTIsLTcuNTk0MSAtMS44MDIsLTAuOTgyOCAtOC4xMjYyLC0zLjUxMTcgLTEwLjA0MzQsLTMuMDY0OCAtMS4wODQ3LDAuMjUxOSAtMS4xODI0LDEuNTk4IC0xLjYxNiwyLjg2NjggLTAuOTIzOCwyLjcxNzEgLTMuMDUwOCw3LjA0MjEgLTMuMjM2MywxMS4xMzIxIC0wLjIzNjMsNS4xNjYgLTAuNzU3OCwxMy44MjQgNC44MDk0LDEyLjc2IDQuNDkxNCwtMC44NTcgOS43MTUyLC0yLjkyNiAxMy4xOTI1LC00LjgyNiAyLjEyNSwtMS4xNjIgMy4zNTQsLTIuNTk4IDYuNTc4LC0yLjg0NiB6Ii8+PHBhdGggaWQ9InBhdGg5MiIgc3R5bGU9ImZpbGw6I2QzMzgzMztmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMTAuNzUsMTA5LjcxMiBjIC0wLjQ5NCwyLjgxNCAtMS4wNjUsMy42MTcgLTAuODQ0LDYuMDcyIDcuNTA1LDUuMDA0IDguOTE0LC04LjU5NSAwLjg0NCwtNi4wNzIiLz48cGF0aCBpZD0icGF0aDk0IiBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZDMzODMzO3N0cm9rZS13aWR0aDoyO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLW9wYWNpdHk6MTtzdHJva2UtZGFzaGFycmF5Om5vbmUiIGQ9Im0gMTEwLjc1LDEwOS43MTIgYyAtMC40OTQsMi44MTQgLTEuMDY1LDMuNjE3IC0wLjg0NCw2LjA3MiA3LjUwNSw1LjAwNCA4LjkxNCwtOC41OTUgMC44NDQsLTYuMDcyIHoiLz48cGF0aCBpZD0icGF0aDk2IiBzdHlsZT0iZmlsbDojZWYzZDNhO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEyMS42MTcsMTA3LjQzMSBjIDAsMCAtMi4zMzQsMy4zMzQgLTAuNjY3LDQuMzM0IDEuNjY3LDEgMy4zMzQsLTAuMDAxIDQuMzM0LDEuNjY2IDEsMS42NjcgMCwyLjY2NyAwLjMzMyw0LjY2NyAwLjMzMywyIDIuMDAxLDIuMzM0IDMuNjY3LDIuNjY3IDEuNjY2LDAuMzMzIDYuMzM0LDEgNywtMC42NjcgbCAtMiw2IC00LDEuMzMzIC0xMi42NjcsLTcuMzMzIC0wLjY2NywtMy42NjcgMCwtNy4zMzMiLz48cGF0aCBpZD0icGF0aDk4IiBzdHlsZT0iZmlsbDojZWYzZDNhO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDg2LjYxNzIsOTYuNDMwOSBjIC0wLjQwMDQsNS4yMDIxIC0wLjgyNDIsMTAuMzk3MSAtMS4yOTU3LDE1LjU5NDEgLTAuNzA1NSw3Ljc2IDEuODY0LDYuNDA2IDguNTkwNiw2LjQwNiAxLjAyNzQsMCA2LjMyNTksLTEuMjI1IDYuNzA0OSwtMiAxLjgxOCwtMy43MTMgLTMuMDQsLTIuODg4IDIuMDk0LC01LjY4OCA0LjMzNCwtMi4zNjMgMTEuOTksMS40MzUgMTAuMjM5LDYuNjg4IC0wLjk4LDEuMTY4IC01LjEwNiwwLjM2NCAtNi41ODUsMS4xMzEgLTIuNjA0LDEuMzUgLTUuMjA4LDIuNyAtNy44MTIzLDQuMDUgLTMuMzEzMiwxLjcxOSAtMTAuOTcwNyw0LjIyNSAtMTQuNTAzMSwxLjgyMyAtOC45NTA0LC02LjA4NyAwLjU2NDksLTIxLjI5NiAzLjc1NzgsLTI3LjY0NTkiLz48cGF0aCBpZD0icGF0aDEwMCIgc3R5bGU9ImZpbGw6IzIzMWYyMDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA5NS4zODg3LDIxNC41MzIgYyAtOS4wODUyLDIuMTE2IC0xMy41OTk2LC0zLjgwMiAtMTYuMzUzNSwtOS45NCAtMi40NTksMC41OTYgLTEuNDgwNSwzLjk0IC0wLjg1OTQsNS42NDQgMS42MjYyLDQuNDcyIDguMTc5NywxMC40MjUgMTMuNTM0NCw5LjYxOCAyLjMwNDMsLTAuMzQ3IDUuNDIyNiwtMi40NTQgMy42Nzg1LC01LjMyMiIvPjxwYXRoIGlkPSJwYXRoMTAyIiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzOS42NTUsMjA0LjE4NiBjIDAuMTQzLC0wLjAwNiAwLjI4OCwtMC4wMTEgMC40MzEsLTAuMDE3IDIuMDUzLC00LjI2NSAzLjgzLC04Ljc4MyA2LjQyLC0xMi41NDggLTEuNzM1LC00LjA0MSAtMTMuMTM4LC03LjYxNyAtMTIuOTYyLC0wLjM2MSAyLjQ2NiwxLjA3OCA2LjcyMywwLjIyIDguOTA5LDEuNTk3IC0xLjI2NCwzLjQ2OSAtMy4wODgsNi40MjIgLTIuNzk4LDExLjMyOSIvPjxwYXRoIGlkPSJwYXRoMTA0IiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEwMC4wNCwyMDQuMDc1IGMgMS45NDgsLTMuNTcxIDIuNTgyLC03LjMyMyA1LjM1MSwtMTAuMDIyIDEuMjQ3LC0xLjIxNSAzLjY3MiwtMi42OTYgMi40NywtNi4wNzUgLTAuMjgxLC0wLjc5NyAtMi4zMzQsLTIuNTc0IC0zLjUxOSwtMi45MjMgLTQuMzI5LC0xLjI3OCAtMTQuNDE2MiwtMC4yNjQgLTExLjAwMDIsNS4xMzMgMy41ODAxLC0wLjE2NyA4LjM5MjIsLTIuMzI1IDExLjA2ODIsMC4yNzQgLTIuMDU1LDMuMjg1IC01LjcxODYsOS43ODQgLTQuMzcsMTMuNjEzIi8+PHBhdGggaWQ9InBhdGgxMDYiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTM4LjAzLDE2Ny43ODEgYyAtNi41MTgsLTQuMTg3IC0xMy43ODYsLTguNzQgLTI0LjQ2NiwtNy42ODQgLTIuMjgyLDEuOTg0IC0zLjE1Miw2LjM5OSAtMC45MzUsOS4zMTUgMS4xNTQsLTEuOTg0IDAuNDI5LC01LjYzMyAzLjY0NSwtNi4xODIgNi4wNiwtMS4wMzcgMTMuMTEzLDMuNzA3IDE3LjQ3Miw1LjM2NSAyLjcwMyw0LjU1NyAtMC4yMzMsNi4yMzMgLTIuNjY4LDkuMTY2IC00Ljk4NSw2LjAwOSAtMTEuNjcyLDEzLjQ1NyAtMTEuNDI5LDIyLjQ1MyAyLjAxNSwxLjQ2MSAyLjE4OSwtMi4yMyAyLjQ3OCwtMi45MDIgMi42MDMsLTYuMDkyIDkuMTU0LC0xMy44ODMgMTMuOTM1LC0xOS4wOTcgMS4xNzQsLTEuMjg0IDMuMTA3LC0yLjUxNiAzLjMyMiwtMy4zNjUgMC42MiwtMi40NjkgLTEuNjEzLC01LjQyNyAtMS4zNTQsLTcuMDY5Ii8+PHBhdGggaWQ9InBhdGgxMDgiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gNTIuMTAxNiwxNzIuMTg5IGMgLTIuMDQzLDEuMTY2IC0yLjUyOTMsNi4zMDIgLTQuOTI3OCw2LjQ0OCAtMy40Mjc3LDAuMjA4IC0yLjgwMjcsLTYuNjYzIC0yLjc4OSwtMTAuNjgxIC0yLjM1OTQsMi4xNDIgLTIuNzc0Myw4LjczNyAtMS4wNDEsMTIuMTI0IC0xLjk3NTQsMC45NyAtMi44NTc1LC0xLjA3IC0zLjk1MzIsLTEuNzg5IDEuNDA4MiwxMC4yMyAxNC45NjQ5LDQuNzQ1IDEyLjcxMSwtNi4xMDIiLz48cGF0aCBpZD0icGF0aDExMCIgc3R5bGU9ImZpbGw6IzIzMWYyMDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxNDIuMTgsMTYzLjUyMSBjIC0zLjAzNCwtNS43NzUgLTcuMzI2LC0xMi4xMzUgLTE2LjIyOSwtMTIuMzIgLTAuMTgxLDEuODY1IC0wLjMyLDQuNzAzIDAuMDEsNS44MjYgNi44MDYsMC42NTQgMTEuMDA4LDQuMTE4IDE2LjIxOSw2LjQ5NCIvPjxwYXRoIGlkPSJwYXRoMTEyIiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDk5LjUyNjYsMTU5Ljc3NyBjIDUuNjc4NCwtMi45ODYgMTYuMTE0NCwtMy4zMDcgMjMuODMyNCwtMy4wODEgMC40MTQsLTEuNjkxIDAuNDA0LC0zLjc4IDAuNDIsLTUuODQyIC05LjkyMSwtMC40OTUgLTIxLjY1MSwxLjk2IC0yNC4yNTI0LDguOTIzIi8+PHBhdGggaWQ9InBhdGgxMTQiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTguNDQ3MywxNTQuMjA5IGMgMy45MjY3LC05Ljg1OSAxNy40MjI3LC04LjcyNCAyOC44MDM3LC04LjQ1MiAtMC41MDEsLTEuMjggLTEuNTg3LC0yLjc5MiAtMi45MzcsLTMuMzM5IC0zLjY0NywtMS40ODQgLTEzLjcwNiwtMi42MSAtMTguNzY5LDAuMDc5IC0zLjIxMSwxLjcwNyAtNS4yNzQsNS41NjQgLTcuMDMzMyw3LjgyNSAtMC44NDk2LDEuMDkyIC01LjA4MDEsMy44ODEgLTAuMDY0NCwzLjg4NyIvPjxwYXRoIGlkPSJwYXRoMTE2IiBzdHlsZT0iZmlsbDojODFiMGM0O2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzNy41NTYsOTkuODI2MiBjIC00LjYwOCwtNy44OTIyIC05LjAxNywtMTUuOTk4MSAtMTQuNDg0LC0yMi45NTk0IDIuMjkyLDYuNzM5MSAzLjI3MywxOC4wMTg0IDMuNjE5LDI2LjYxNzIgNC43OTUsMi4yNDQgOC45MDEsLTAuNTA1IDEwLjg2NSwtMy42NTc4Ii8+PHBhdGggaWQ9InBhdGgxMTgiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTYyLjM1Miw3MS40NjA5IGMgLTUuMTU5LC0xLjAzMjggLTguNzg0LC02LjA0NjggLTEzLjgxNywtNS43MjUgMi43NjYsMy44OTkzIDcuNjEzLDUuNTQzIDEzLjgxNyw1LjcyNSIvPjxwYXRoIGlkPSJwYXRoMTIwIiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDE2NC42MjgsNjMuMzg3MSBjIC00LjIwNSwtMC40NDQxIC05LjE0NCwtMS4xMjUgLTEzLjQwOSwtMC43NzQyIDIuMDE5LDMuMDg0IDkuNzk4LDIuMDE5OSAxMy40MDksMC43NzQyIi8+PHBhdGggaWQ9InBhdGgxMjIiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTY2LjA4NSw1Ni40MjYyIGMgLTQuNzI2LC0wLjEwMjQgLTEwLjYsLTAuMDA4MiAtMTUuMDkyLDAuMzY4NyAyLjY1NywyLjg1MzkgMTIuMDI3LDEuMDU5IDE1LjA5MiwtMC4zNjg3Ii8+PHBhdGggaWQ9InBhdGgxMjQiIHN0eWxlPSJmaWxsOiNkY2Q5ZDg7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTI4LjY2NCwzNy4zNzcgYyAwLjY3OCwtNS45MzUyIDMuMDMxLC0xMS45NDg5IDIuNzM2LC0xOC40NDg5IC0yLjYxMywtMC44ODEyIC00LjExNCwtMS42NTE5IC03LjYxNSwtMS42NDcyIC0wLjI0Nyw1LjUyNDIgLTAuOTg2LDEzLjk2OTEgLTAuNzY1LDE5LjIzNTEgMS43MjIsLTAuMTE0IDQuMjYxLDEuMjMwMSA1LjY0NCwwLjg2MSIvPjxwYXRoIGlkPSJwYXRoMTI2IiBzdHlsZT0iZmlsbDojZjBkNmI3O2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEyMS4wNDUsMTI0Ljg0OSBjIC0yLjM3MywtMS41NDkgLTQuMzk0LC0zLjQ4MyAtNi42NzMsLTUuMTM3IC01LjA1NCwtMC4yNSAtNy44MTIsMC4zNSAtMTEuNTI1LDMuMjUyIDAuMDYxLDAuMjMzIDAuNDM0LDAuMTI5IDAuNDQ4LDAuNDE1IDUuNDEsLTIuNDExIDEyLjI4NywwLjk4MiAxNy43NSwxLjQ3Ii8+PHBhdGggaWQ9InBhdGgxMjgiIHN0eWxlPSJmaWxsOiM4MWIwYzQ7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTIuNjQ0NSw4Ny45NzExIGMgMS40ODY0LDYuNDQxIDcuMzEwNiw5Ljc3NjkgMTIuNTk5NSwxMy4zMjM5IDUuNDU5LC02LjkyODIgOC43NzksLTE1LjgzOCAxMi40MzUsLTI0LjQzNiAtOC42MzgsMi42MDM5IC0xNy40NjQsNi44Mjg5IC0yNS4wMzQ1LDExLjExMjEiLz48cGF0aCBpZD0icGF0aDEzMCIgc3R5bGU9ImZpbGw6IzIzMWYyMDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMjMuMDIsMzYuNTE2IGMgLTAuMjIxLC01LjI2NiAwLjUxOCwtMTMuNzEwOSAwLjc2NSwtMTkuMjM1MSAzLjUwMSwtMC4wMDQ3IDUuMDAyLDAuNzY2IDcuNjE1LDEuNjQ3MiAwLjI5NSw2LjUgLTIuMDU4LDEyLjUxMzcgLTIuNzM2LDE4LjQ0ODkgLTEuMzgzLDAuMzY5MSAtMy45MjIsLTAuOTc1IC01LjY0NCwtMC44NjEgeiBNIDY4LjUwNTksNjYuNDY0OCBDIDcwLjgxNDUsNDUuMjQxOCA3NC4xNTgyLDI3LjQwMTIgODAuMjkxLDguNjA3ODEgOTMuOTAyMyw0LjQ3NSAxMTAuMzExLDQuMTE0ODQgMTIyLjM0Miw3Ljg0NDE0IDEyMC4xMzMsMTguNDUxMiAxMjEuMDk4LDMxLjM2NDggMTE5LjgwNyw0Mi42ODQgYyAtMC45NzMsOC41MDc4IC0wLjQ3NywxNy4wNjggLTEuODExLDI1Ljc0OCAtMTQuNTc4LDMuMDMyOCAtMzUuMTgzNSwwLjcwOSAtNDkuNDkwMSwtMS45NjcyIHogbSA1Mi45MzcxLDEuODM0IGMgLTAuMTIzLC05LjExNDggMC40MDgsLTE4LjEwNTggMS4xMDQsLTI3LjIzMiAzLjUsMC41MjU0IDUuODc1LDAuODc2MiA5LjEyNywxLjU4OTEgLTEuMDU2LDguNzg1OSAtMC45MjYsMTguNjcyMiAtMy4wNzcsMjYuNDQ0MSAtMi40ODYsLTAuMDIzOCAtNC42NzUsMC4wMjg5IC03LjE1NCwtMC44MDEyIHogbSAxNy43NTUsMS40NjkyIGMgLTEuNjYxLDAuMzgwOCAtMy41OTUsMC4wMTQ4IC01LjE4MiwtMC4wMTYgMC43NDYsLTcuNDMwMSAyLjU1NiwtMTUuNjI5IDMuMTkzLC0yMy40MjgyIDIuNDk3LC0wLjA3NzcgMy44MzEsMS4xIDUuODg1LDEuNDk2MSAwLjExLDYuODQ2MSAtMC41OTgsMTYuMjc4MSAtMy44OTYsMjEuOTQ4MSB6IG0gMjYuODg0LC0yNC41NjI5IGMgNS4yMDUsMS4yNjQgOC40NzgsNy42MzkgNy4wMjIsMTQuMTg1OSAtMC45NzcsNC40IC0yLjcxNywxMi42ODUyIC00LjU3OSwxNS41IC0xLjM3NiwyLjA4MiAtNS4xMDcsNC44MDc4IC04LjA4NiwyLjkgLTQuODQ2LC0zLjEwMzEgLTEzLjM4MywtNC4wMDM5IC0xNi45MTcsLTcuNzYwMSAxLjc3MiwtNS45IDIuMzIyLC0xNC4wMDM5IDMuMDUzLC0yMS40Nzk3IDYuMDU0LC0wLjM3NzQgMTMuNTAzLDEuNjY2IDE4LjUzOCwtMC41MDI0IC0zLjUxNSwtMS4xMzg2IC04LjA3NiwtMS4xNDc2IC0xMS4xMTMsLTIuODA3IDIuNDgyLC0xLjE5ODggOC4yOTMsLTAuOTU2NiAxMi4wODIsLTAuMDM2NyB6IE0gMTE3LjY3OSw3Ni44NTkgYyAtMy42NTYsOC41OTggLTYuOTc2LDE3LjUwNzggLTEyLjQzNSwyNC40MzYgQyA5OS45NTUxLDk3Ljc0OCA5NC4xMzA5LDk0LjQxMjEgOTIuNjQ0NSw4Ny45NzExIDEwMC4yMTUsODMuNjg3OSAxMDkuMDQxLDc5LjQ2MjkgMTE3LjY3OSw3Ni44NTkgeiBtIDkuMDEyLDI2LjYyNSBjIC0wLjM0NiwtOC41OTg4IC0xLjMyNywtMTkuODc4MSAtMy42MTksLTI2LjYxNzIgNS40NjcsNi45NjEzIDkuODc2LDE1LjA2NzIgMTQuNDg0LDIyLjk1OTQgLTEuOTY0LDMuMTUyOCAtNi4wNyw1LjkwMTggLTEwLjg2NSwzLjY1NzggeiBtIC0xMC4yMTYsMy42MyBjIC0yLjA3MSwwLjIyMyAtMy44MjksLTIuMzgxIC02LjUyMiwtMS4yNTUgLTAuNjE3LC0wLjY4MiAtMS4xNzgsLTEuNDIxIC0xLjgwNywtMi4wODcgNS45NDgsLTcuMTY4MSA4LjY1MSwtMTcuMzM4IDEzLjI0NSwtMjUuNzYxOCAyLjQ2NSw4LjA5MTggMi4xODEsMTYuOTU3IDIuNzI0LDI1Ljc4ODggLTMuMzg3LC0wLjIxNSAtNS4yNjYsMy4wNjMgLTcuNjQsMy4zMTUgeiBtIC02LjU2OSw4LjY3IGMgLTAuMjIxLC0yLjQ1NSAwLjM1LC0zLjI1OCAwLjg0NCwtNi4wNzIgOC4wNywtMi41MjMgNi42NjEsMTEuMDc2IC0wLjg0NCw2LjA3MiB6IG0gLTguOTQ5LDIuOTM4IGMgLTMuNDc3MywxLjkgLTguNzAxMSwzLjk2OSAtMTMuMTkyNSw0LjgyNiAtNS41NjcyLDEuMDY1IC01LjA0NTcsLTcuNTk0IC00LjgwOTQsLTEyLjc2IDAuMTg1NSwtNC4wOSAyLjMxMjUsLTguNDE1IDMuMjM2MywtMTEuMTMyMSAwLjQzMzYsLTEuMjY4OCAwLjUzMTMsLTIuNjE0OSAxLjYxNiwtMi44NjY4IDEuOTE3MiwtMC40NDY5IDguMjQxNCwyLjA4MiAxMC4wNDM0LDMuMDY0OCAzLjgxMTIsMi4wNzgxIDYuNzY4Miw1LjM3ODEgMTAuMDA1Miw3LjU5NDEgMC4wNDIsMS4wNzggMC4wODMsMi4xNTUgMC4xMjYsMy4yMzMgLTEuOTQ2LDAuOTcgLTQuMTk1LDEuNjU4IC03LjA1MiwxLjc4MyAxLjkzOCwwLjk3NSA0Ljc4OSwwLjk2MSA2LjU1NSwyLjEyMSAwLjAxNywwLjQzMiAwLjAzNSwwLjg2MyAwLjA1LDEuMjkxIC0zLjIyNCwwLjI0OCAtNC40NTMsMS42ODQgLTYuNTc4LDIuODQ2IHogbSAtMzMuMjEzNiw2LjAzMyBjIC0yLjg4NiwtMi45MyA4LjA5NDUsLTYuOTI0IDExLjU5MDYsLTcuMTM5IC0wLjAxOTUsMS44NTQgMS4wNTY2LDMuNjAyIDAuODM5OCw0LjkzMiAtNC4xNTIzLDAuNzI5IC05LjYwOTMsMC4yNDggLTEyLjQzMDQsMi4yMDcgeiBtIDM1LjU1MTYsLTEuMzc2IGMgLTAuMDE0LC0wLjI4NiAtMC4zODcsLTAuMTgyIC0wLjQ0OCwtMC40MTUgMy43MTMsLTIuOTAyIDYuNDcxLC0zLjUwMiAxMS41MjUsLTMuMjUyIDIuMjc5LDEuNjU0IDQuMywzLjU4OCA2LjY3Myw1LjEzNyAtNS40NjMsLTAuNDg4IC0xMi4zNCwtMy44ODEgLTE3Ljc1LC0xLjQ3IHogbSAzMi42MzIsLTkuODk1IGMgLTAuMTU2LDMuMjU1IC0xLjAxMSw5Ljk0OSAtMy4wMjMsMTEuMTIxIC00LjIyMywyLjQ2NSAtMTEuNzMsLTQuOTc3IC0xNC45MSwtNi4xMTIgMC4zNDYsLTAuOTk2IDAuOTE3LC0xLjc4NSAwLjk2MSwtMy4wNTggMS44ODEsMC40NjMgNC4xNzEsMC4xNDYgNS44MDEsLTAuNjU1IC0xLjg4NSwtMC4yMTEgLTMuOTc1LC0wLjE5NyAtNS4yMjIsLTEuMDk1IC0wLjQ1NywtMS4zMjEgMC4xMTIsLTMuMTIxIC0wLjE5MiwtNC45NTUgNC40NzQsLTEuMjYyIDkuNTg0LC0xLjkzNCAxNS4yNCwtMi4xIDEuMSwxLjQzIDEuNDc1LDQuMTU0IDEuMzQ1LDYuODU0IHogbSAtNzMuMDQyMiw4LjQzNyBjIC0wLjkwNjMsMC42NDYgLTcuMDM3MSw4LjYyMyAtNy44NzcsOC4yOTIgQyA0My45MTQxLDEyNS44MzggMzMuNTQxLDExOC4yNzMgMjQuMjcxNSwxMTEuMTE4IDMzLjEwOTQsOTIuMTUzOSAzNi42NzcsNjguOTE5OSAzNy4zMDc0LDQ2LjUyNjIgNDcuNDMxNiw0MS43OTEgNTYuMzI0MiwzNC45NjQ4IDcwLjA2MjUsMzQuMjUyIDY4LjQ3MjcsNDUuNSA2Ny4wMjE1LDU1LjUzNTIgNjYuMTE5MSw2Ni4xMjUgYyAtMy40NTE5LDEuNDU1MSAtOC40MDQzLC0wLjA2NiAtMTEuNjM0NywwLjQ1MTIgLTAuMDI3NCwzLjg5MjkgNC45MzM2LDEuNzA0NyA1LjM0NjgsNC4zMjI2IDAuMzExNCwxLjk4MDEgLTIuNzI5NiwyLjEzMDEgLTEuNzM5NCw1LjI0ODEgMi41MjU0LC0wLjkxOCAzLjg1MTYsLTIuOTQ1NyA2LjU0NDksLTMuNzA3MSAyLjQ2MSw1LjM4NCAtMC4wMzQ0LDE0LjkxMDIgMC4zMjAzLDE5LjQxMDIgMC4wNjcyLDAuODQ0OSAwLjQyMTksNC42ODA5IDIuMzE0NSw0LjAwNzggMS42NzUsLTAuNTk1NyAtMC4wOTU3LC0xMC4yMDE5IDAuMDg3OSwtMTQuNDYwOSAwLjE2NzIsLTMuOTIzOSAtMC40NzM5LC03LjcyMDcgMS4xMTUyLC0xMC4xODQgMTMuMjc1NCwxLjgwNyAyNi43NjU2LDIuOTc1IDQxLjEyOTQsMy4zNjkxIC0zLjE2LDEuMzU1OSAtNi45MTQsMi42MzkxIC0xMS4wMjk4LDQuOTU5IC0yLjIzMTIsMS4yNTc4IC05LjI2NDQsMy44NzUgLTkuOTA4Miw1Ljk5NDIgLTEuMDI3MywzLjM3NjkgMi42OTUzLDUuMTc1NyAzLjMzMiw4LjA3MDcgLTYuNzAxMSwtMy42NTQ3IC04LjAwODUsMy41MDMxIC05LjU5MzcsOC41NzQxIC0xLjQzNjMsNC41OTMgLTIuMjUzOSw4LjAyNCAtMi42MDYzLDEwLjY3MyAtNS43NzI2LDIuNzUyIC0xMS45NDQ1LDUuNTM5IC0xNi45MTMyLDkuMDY4IHogbSA2Ny4xNzkyLDcuMzI3IGMgOS4yNDMsNC40ODIgMTAuOTA5LC0xNi43NTEgNy4yODYsLTIzLjU5MSAwLjU2LC0yLjA0IDIuNDg2LC0yLjgyMSAzLjI3MiwtNC42NTUgLTUuMTU4LC05LjIzOTkgLTEwLjg4NywtMTcuODY0OSAtMTYuMTUsLTI2Ljk5NjEgMy45MTUsMi40MzcxIDkuNTA3LDAuNDM1OSAxNC4xMTQsMi4yNjAxIDEuNjg0LDAuNjY2IDIuOTAzLDQuNTIxMSA0LjE3OCw3LjYwNTEgMy41MDcsOC40ODQ4IDcuMTg5LDE5LjE4MTkgOC44MjcsMjcuMjc4OSAwLjM3LDEuODQ1IDEuMzc4LDUuODY1IDEuMTUyLDcuNTA3IC0wLjQwMywyLjk0IC00LjM5Miw1LjEyIC02LjQyMSw2LjkzOCAtMy43MzgsMy4zNTggLTYuMDkyLDYuMzEzIC05Ljk5MSw5LjQ1MyAtMS41ODEsLTIuMzM0IC00Ljk3NCwtMy45MDIgLTYuMjY3LC01LjggeiBtIC04OC4zMTc5LDgxLjk2OCBjIC00LjQwNDMsLTQuODQ2IC0zLjQ4MjQsLTEzLjkyNiAtMi45NDkyLC0yMC4zODYgNy45NjA5LDUuMDA4IDE4LjUyNzMsLTAuMzk2IDE4LjQyNzcsLTguOTE0IDMuODAwOCwwLjEwMSAxLjQxOTksNC43NDcgMC43MzI0LDcuNzQgLTIuMjQ2OCw5Ljc3NiAzLjc4NTIsMjAuMzk3IDAuMjczNSwyOS4zMzcgLTYuODE4NCwtMC41MTcgLTEyLjQyLC0zLjMwMiAtMTYuNDg0NCwtNy43NzcgeiBtIDMxLjUxMzcsMjguMTI2IGMgLTkuOTcwNywtMi44MjYgLTIyLjc0OTMsLTEwLjA3MSAtMjYuODQ2NSwtMTkuMDI4IDMuMTcyNiwwLjQ2MSA1LjM3NSwyLjA2MSA4LjUwNDcsMi4yNTkgMS4xODI4LDAuMDc3IDIuNzMyNCwtMC40OTYgNC4wOTE4LC0wLjE1OCAyLjcwOSwwLjY3MiA0Ljk5NTMsNi43NDYgNy4wMzksOS4wMDYgMS45OTIyLDIuMjA3IDQuMzg2NywzLjE1IDYuMDI1NCw1LjE2MiAxLjA1MjgsMC41MDggMi42MDk0LDAuNDczIDIuNjY5MiwyLjA1NCAtMC40NTYzLDAuNDg4IC0wLjkzNjgsMC44NiAtMS40ODM2LDAuNzA1IHogbSA1MS45MDMyLC0yLjY1OCBjIC0xMC4zNDksNS44MzkgLTI3Ljg2NjEsMTAuMjMxIC0zOC44NzQ3LDQuNzQzIC04Ljg4MjgsLTQuNDI5IC0yMC44ODk5LC0xMS43NTcgLTI0Ljk4MzYsLTIxLjA0MyAzLjgyNDIsLTguOTYxIC0xLjEzMjgsLTE3LjE3MiAtMS40NDkyLC0yNi4yNyAtMC4xNjgsLTQuODQxIDIuMjc5MywtOS4wNjcgMi40NjY4LC0xNC4zMzcgLTEuMzA4NiwtMi4xNTkgLTUuMzA2NywtMi40MjUgLTguMDc0MywtMi4yNzcgLTAuOTMxNiw0LjY2MiAtMi41NjI1LDkuOTAyIC03LjM2MzIsMTAuNDI4IC02Ljc5MywwLjc0MyAtMTEuNzU5OCwtNC44NzkgLTEyLjA2ODQsLTEwLjc1NCAtMC4zNjUyLC02LjkwOSA1LjMwNjYsLTE4LjM2IDEzLjM0NTcsLTE3LjU2NSAzLjEwNTUsMC4zMDcgMy44Njg0LDMuNDIgNy4yNTIsMy4zODggMS44MzM5LC0zLjY1OSAtMi44Mjg5LC00LjgwOCAtMy4zMDg2LC03LjQyNSAtMC4xMjUsLTAuNjc2IDAuMzg2NywtMy4zMTggMC42ODQzLC00LjU1NyAxLjQ2MDIsLTYuMDMzIDQuNzE1MywtMTMuODQxIDcuOTE5MiwtMTguNDM0IDQuMDY2NCwtNS44MjYgMTIuMDU1NSwtNi43MDQgMjAuNjUwNCwtNy4yNzUgMS41MzUxLDMuMzA3IDcuMTkwMiwzLjAzNSAxMC44NzUsMi4xNyAtNC40MTYsMS43NDkgLTguNTIxNSw1Ljk4OSAtMTEuOTIzOSw5Ljc0MiAtMy45MDgyLDQuMzA2IC03Ljg2NzEsOC45MjUgLTguMDY3MSwxNC41NTMgNy4zODU1LC0xMC4yNDYgMTMuNDg3MSwtMTkuMTk0IDI2LjkxNjgsLTIzLjcwMSAxMC4xNjE4LC0zLjQwOCAyMi4wMjk4LDEuNTYyIDI5LjgzNzgsNy4wNDUgMy4yNCwyLjI3OSA1LjE3NCw1Ljg5NSA3LjQ3Nyw5LjIwNSA4LjYxNywxMi4zOTUgMTIuNjM4LDMwLjA4NyAxMS43NTQsNDcuMjM1IC0wLjM2NCw3LjA3MiAtMC4zNDgsMTQuMTIgLTIuNzIxLDE4Ljg3OCAtMi40OCw0Ljk3NSAtMTAuODY4LDkuNDI2IC0xNS43NzgsNC45MjYgLTAuOTEsNC44MzggNC4wODMsNy44MyA5Ljk0OCw2LjA4OSAtNC4xODIsNS4zOTcgLTguNTcxLDExLjg4MiAtMTQuNTE1LDE1LjIzNiB6IE0gMTQ0LjQ0NCw3Ny4xMTY4IGMgOC4wODcsNC4wMjAzIDIzLjE5NywxMC44MjExIDI4LjI2NywtMC4wMTQ4IDEuODcxLC0zLjk5NDIgNC4wNjYsLTEwLjc0NjEgNS4wMzUsLTE0Ljg2OTIgMS4zNjksLTUuODE2OCAtMS40ODQsLTE4LjA0MyAtNy40NjMsLTE5Ljk5NDkgLTUuMjgxLC0xLjcyMzggLTExLjQ0MywtMS42MTg4IC0xNy44MDQsLTAuMzQxIC0wLjc0OSwwLjYyMyAtMS41ODMsMS43MDkgLTIuMTY2LDIuODQxIC00LjU0MiwwLjE3NjIgLTguNzk1LC0wLjI0MzggLTEyLjM4MywtMi4xMTA5IDAuMzQsLTMuMzU5IC0xLjkzMiwtMy44OTgxIC00LjA2MiwtNC41ODk5IC0xLjU3OSwtNi4yNjA5IDMuMTU5LC0xNC40MzcxIDIuMDI1LC0yMC4xNDYxIC0wLjgwOSwtNC4wNjcyIC01LjgxMywtNC42OTYxIC05LjQ5MSwtNS40NTcgLTAuMTIsLTIuMjYwMiAwLjE2MSwtNC4xNDY4OSAwLjQxMiwtNi4wNTkgLTAuODQxLC0zLjA5ODgzIC00LjYxMywtNC44NjI4OSAtOC4xODcsLTUuMjk0OTIgLTExLjc1OSwtMS40MTQwNjQgLTI5LjYxMzMsLTIuMDQ5MjIxIC00MC45MjM5LDIuMDE3OTcgLTMuMTU2Miw3Ljc0MTc1IC01LjY0MjYsMTcuMTU3ODUgLTguMjcxNSwyNS45OTgwNSAtMTEuMDMxMiwtMS4xNzgxIC0xOS45NTMxLDQuNzU5OCAtMjguMzY0LDguNjUgLTIuOTEyMSwxLjM1IC02Ljk0MDYsMi4wOTM3IC04LjAyODUsNC40MTE3IC0xLjA1NDcsMi4yNDQyIC0wLjYyMzEsNi41NDUzIC0wLjg4NDgsMTAuNjA4MiAtMC42NjYsMTAuMzc3IC0xLjIzNjMsMjAuMzg2IC0zLjk3NjYsMzEuMDExIC0xLjIzMDQsNC43Njc5IC0zLjM3NSw4Ljk3NSAtNC44NzExLDEzLjU2OTEgLTEuMzgyOCw0LjI1NzkgLTMuNzk4OCw5LjUxOTkgLTQuNDI4OSwxMy43NjU5IC0wLjkzNDMsNi4yOTMgNC45OTE0LDYuNjQzIDguNzgwNSw5LjM3IDUuODU3NCw0LjIxNyAxMC40NTUxLDYuNTQ5IDE2Ljc5ODgsMTAuMzU1IDEuODc4OSwxLjEyNyA3LjU0NSwzLjk4IDguMTg5NSw1LjI5NCAxLjI4MTIsMi42MDUgLTIuMTk5Miw2LjI3OCAtMy4xMjk3LDguMzIgLTEuNDcxOSwzLjIyOSAtMi4yMzk1LDUuOTcyIC0yLjQ1MDQsOS4xNTggLTUuMzIxNSwwLjg0MSAtOS4zNTU1LDQuMDA4IC0xMS43OTIyLDcuNTc5IC00LjAzMDgsNS45MSAtNi44MjYyLDE2Ljg0NCAtMy4zMzg3LDI1LjE2MSAwLjI3MzUsMC42NTUgMS42Mzc1LDEuOTQzIDEuODM4NywyLjk0OSAwLjM5NjksMS45ODEgLTAuNzQ2OSw0LjYxNSAtMC44MTgsNi43MjIgLTAuMzY2NCwxMC44MSAxLjgyOSwyMC4xMjQgOS4xMDYzLDIzLjM4NCAyLjk1NDMsMTEuNzY5IDEzLjUyODEsMTUuNjgyIDIzLjQ5MDIsMjEuNTMxIDMuNzIzOSwyLjE4NiA3LjgyODksMy41ODMgMTIuMDY4NCw1LjE0MyAxNS4yMDgyLDUuNTk3IDM4LjU0MTksNC41NDMgNTEuMTYzOSwtNS4wMDMgNS4zNTIsLTQuMDQ4IDEzLjkwNywtMTIuNTk1IDE2Ljk2NywtMTguNzgzIDguMDgyLC0xNi4zMzcgNy41MDgsLTQzLjY0IDEuODU1LC02My41MTMgLTAuNzYsLTIuNjY4IC0xLjg2MiwtNi41OSAtMy40MDEsLTkuNzk1IC0xLjA3MywtMi4yMzggLTQuNDA4LC02LjcxNiAtNC4wMDMsLTguNjkyIDAuNDE3LC0yLjA0MyA3LjYwNCwtNy41IDkuMTQ1LC04Ljk4NiAyLjc3NSwtMi42NzcgOC4wNDcsLTYuMjMgOC40NzQsLTkuNjA4IDAuNDU5LC0zLjU5NSAtMS41ODQsLTguNTEzIC0yLjYxOSwtMTEuOTgyIC0zLjQ2LC0xMS41NzY5IC02LjgzNiwtMjIuMjc4MSAtMTAuNzU5LC0zMi41OTkyIi8+PHBhdGggaWQ9InBhdGgxMzIiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTAuNDkxLDE1Ny4yNTUgYyAwLjQzODcsMC41ODQgMi44NTA4LDEuNDcxIDYuMjI1OCwtMC4xNTQgMCwwIC00LC0wLjY2NyAtMy42NjcyLC03LjMzNiBsIC0xLjY2NjgsMC4zMzQgYyAwLDAgLTEuNzIyNiw2LjA0NyAtMC44OTE4LDcuMTU2Ii8+PHBhdGggaWQ9InBhdGgxMzQiIHN0eWxlPSJmaWxsOiMxZDE5MTk7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTE5LjcxNyw5OS45MzQgYyAwLC0xLjAxMjEgLTAuODIxLC0xLjgzMjggLTEuODM0LC0xLjgzMjggLTEuMDEyLDAgLTEuODMzLDAuODIwNyAtMS44MzMsMS44MzI4IDAsMS4wMTIgMC44MjEsMS44MzQgMS44MzMsMS44MzQgMS4wMTMsMCAxLjgzNCwtMC44MjIgMS44MzQsLTEuODM0Ii8+PHBhdGggaWQ9InBhdGgxMzYiIHN0eWxlPSJmaWxsOiMxZDE5MTk7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTIxLjU1LDkxLjQzNCBjIDAsLTEuMDEyMSAtMC44MjEsLTEuODMyOCAtMS44MzQsLTEuODMyOCAtMS4wMTIsMCAtMS44MzMsMC44MjA3IC0xLjgzMywxLjgzMjggMCwxLjAxMjEgMC44MjEsMS44MzQgMS44MzMsMS44MzQgMS4wMTMsMCAxLjgzNCwtMC44MjE5IDEuODM0LC0xLjgzNCIvPjwvZz48L2c+PC9zdmc+"
                     preserveAspectRatio="none"/>
            </g>
          </g>
          <g data-cell-id="28">
            <g>
              <rect x="526.7" y="804" width="60" height="30" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 819px; margin-left: 528px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 12px; font-family: OpenSans; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          <div style="font-size: 18px;">
                            <font style="font-size: 18px;" face="Helvetica">Jenkins</font>
                          </div>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="557" y="823" fill="rgb(0, 0, 0)" font-family="&quot;OpenSans&quot;" font-size="12px"
                        text-anchor="middle">Jenkins
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="29" class="fragment" data-fragment-index="30">
          <g>
            <image x="500.5" y="368.99" width="82.31" height="70"
                   xlink:href="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjEzLjgxIDE4MS43OSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZGF0YS1uYW1lPSJFYmVuZSAxIiBpZD0iRWJlbmVfMSI+PGRlZnM+PHN0eWxlPi5jbHMtMXtmaWxsOm5vbmU7fS5jbHMtMntmaWxsOiNjN2M3YzY7fS5jbHMtM3tjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgpO30uY2xzLTR7ZmlsbDp1cmwoI2xpbmVhci1ncmFkaWVudCk7fS5jbHMtNXtjbGlwLXBhdGg6dXJsKCNjbGlwLXBhdGgtMik7fS5jbHMtNntmaWxsOnVybCgjbGluZWFyLWdyYWRpZW50LTIpO30uY2xzLTd7Y2xpcC1wYXRoOnVybCgjY2xpcC1wYXRoLTMpO30uY2xzLTh7ZmlsbDp1cmwoI2xpbmVhci1ncmFkaWVudC0zKTt9LmNscy05e2NsaXAtcGF0aDp1cmwoI2NsaXAtcGF0aC00KTt9LmNscy0xMHtmaWxsOnVybCgjbGluZWFyLWdyYWRpZW50LTQpO30uY2xzLTExe2NsaXAtcGF0aDp1cmwoI2NsaXAtcGF0aC01KTt9LmNscy0xMntmaWxsOnVybCgjbGluZWFyLWdyYWRpZW50LTUpO308L3N0eWxlPjxjbGlwUGF0aCBpZD0iY2xpcC1wYXRoIj48cGF0aCBkPSJNNzUuNjUsMTgxLjc5aDBBMjQuNzEsMjQuNzEsMCwwLDEsNzksMTc0LjA3YzI0Ljc5LTYxLjYxLDk2LjQxLTg5LjM1LDEzNC44Mi05NnYtLjE4QTEwNC40OCwxMDQuNDgsMCwwLDAsMjAwLDcxLjY2QzE4Miw3Ni41Niw5MS4zLDEwNC44NCw3NS42NSwxODEuNzkiIGNsYXNzPSJjbHMtMSIvPjwvY2xpcFBhdGg+PGxpbmVhckdyYWRpZW50IGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDU0LjMyLCAwLCAwLCAtNTQuMzIsIDE2NzM5LjQ2LCAyMTU3MC44MSkiIHkyPSIzOTQuNzYiIHgyPSItMzA0LjIyIiB5MT0iMzk0Ljc2IiB4MT0iLTMwNi43NiIgaWQ9ImxpbmVhci1ncmFkaWVudCI+PHN0b3Agc3RvcC1jb2xvcj0iIzQ1YmZlYSIgb2Zmc2V0PSIwIi8+PHN0b3Agc3RvcC1jb2xvcj0iIzJmYTllMCIgb2Zmc2V0PSIwLjUiLz48c3RvcCBzdG9wLWNvbG9yPSIjMjg5M2QxIiBvZmZzZXQ9IjEiLz48L2xpbmVhckdyYWRpZW50PjxjbGlwUGF0aCBpZD0iY2xpcC1wYXRoLTIiPjxwYXRoIGQ9Ik03Ny41NiwxNjguNTNjLS40NywzLjItMSw2LjQxLTEuNDMsOS42Qzg4LjMsMTA5LDE1OS4yMiw3OC4yMiwxODkuMTUsNjguMjRBMTM3LjQ5LDEzNy40OSwwLDAsMCwxNzMuMzQsNjVjLTMxLjksMTMuODQtODYuNzcsNDUuNjktOTUuNzgsMTAzLjUxIiBjbGFzcz0iY2xzLTEiLz48L2NsaXBQYXRoPjxsaW5lYXJHcmFkaWVudCB4bGluazpocmVmPSIjbGluZWFyLWdyYWRpZW50IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDQ0LjM5LCAwLCAwLCAtNDQuMzksIDEzNjI1LjY3LCAxNzY5NC40MykiIHkyPSIzOTUuOTIiIHgyPSItMzAyLjcyIiB5MT0iMzk1LjkyIiB4MT0iLTMwNS4yNyIgaWQ9ImxpbmVhci1ncmFkaWVudC0yIi8+PGNsaXBQYXRoIGlkPSJjbGlwLXBhdGgtMyI+PHBhdGggZD0iTTE0NS45Myw2My44M0MxMDYuOTMsODguNjUsODUuMzcsMTE3LjUsODAsMTUybC0xLjQzLDkuNjFjMi42NS0xNS4xMSwxMC43NS02MS4xLDgzLjIzLTk3Ljc4LTIuNzYtLjE2LTUuNTItLjI0LTguMjYtLjI0LTIuNTYsMC01LjExLjA3LTcuNjMuMjEiIGNsYXNzPSJjbHMtMSIvPjwvY2xpcFBhdGg+PGxpbmVhckdyYWRpZW50IHhsaW5rOmhyZWY9IiNsaW5lYXItZ3JhZGllbnQiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMzIuNjksIDAsIDAsIC0zMi42OSwgOTk2MS40NCwgMTMxMjcuNzQpIiB5Mj0iMzk4LjEzIiB4Mj0iLTI5OS43NyIgeTE9IjM5OC4xMyIgeDE9Ii0zMDIuMzIiIGlkPSJsaW5lYXItZ3JhZGllbnQtMyIvPjxjbGlwUGF0aCBpZD0iY2xpcC1wYXRoLTQiPjxwYXRoIGQ9Ik0xMTguNzksNjguNzNDMTAzLjE1LDg0LjE3LDg4LDEwMi43OSw4Mi42OSwxMzQuMTVjLS40OCwzLjItMSw2LjM5LTEuNDQsOS42MSwyLjQxLTEzLjY4LDgtNDUuNyw1MS42My03OC41MWE5Ni43Myw5Ni43MywwLDAsMC0xNC4wOSwzLjQ4IiBjbGFzcz0iY2xzLTEiLz48L2NsaXBQYXRoPjxsaW5lYXJHcmFkaWVudCB4bGluazpocmVmPSIjbGluZWFyLWdyYWRpZW50IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDIwLjI4LCAwLCAwLCAtMjAuMjgsIDYwNzMuMjQsIDgyODAuMDkpIiB5Mj0iNDAzLjE3IiB4Mj0iLTI5Mi45NCIgeTE9IjQwMy4xNyIgeDE9Ii0yOTUuNDkiIGlkPSJsaW5lYXItZ3JhZGllbnQtNCIvPjxjbGlwUGF0aCBpZD0iY2xpcC1wYXRoLTUiPjxwYXRoIGQ9Ik0xMDUuOSw3NC40M0E0OS42NSw0OS42NSwwLDAsMCw5OS4yNyw3OWMtNywxMi4yLTExLjMzLDIyLTE0LjExLDM4LjY4bC0xLjQ0LDkuNmMxLjc2LTEwLDUuNDMtMzAuODgsMjYtNTQuODdxLTIsMS0zLjg0LDIiIGNsYXNzPSJjbHMtMSIvPjwvY2xpcFBhdGg+PGxpbmVhckdyYWRpZW50IHhsaW5rOmhyZWY9IiNsaW5lYXItZ3JhZGllbnQiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMTAuMjIsIDAsIDAsIC0xMC4yMiwgMjkyMi4zMywgNDM1Mi43MSkiIHkyPSI0MTYuMDYiIHgyPSItMjc1LjE2IiB5MT0iNDE2LjA2IiB4MT0iLTI3Ny43IiBpZD0ibGluZWFyLWdyYWRpZW50LTUiLz48L2RlZnM+PHBhdGggZD0iTS4xLDAsMCwuMTVDMjUsMzAsNjEuODIsOTcuMjQsNDEsMTYwLjI5YTI0LjksMjQuOSwwLDAsMS0yLjgsOC42N0M3Ni42MSw5OS45NCwyNS4zMiwxOS41NSwxNC42NSw0LjE1QTEwMi40MywxMDIuNDMsMCwwLDAsLjEsMCIgY2xhc3M9ImNscy0yIi8+PHBhdGggZD0iTTQwLjUxLDE2NS4yMmMzNS40MS02MC43LDEuMDYtMTI5LjgxLTE1LjM0LTE1Ni43YTEzNS45NCwxMzUuOTQsMCwwLDEsMTQuMTUsNy43MkM1NC43Niw0Ny4zMyw3Ni4xMSwxMDcsNDUuNjIsMTU3bC01LjExLDguMjYiIGNsYXNzPSJjbHMtMiIvPjxwYXRoIGQ9Ik00OS4yOSwxNTFjNy43My0xMy4yNiwzMS4yOC01My42LS40MS0xMjguMjdBMTM3LjU0LDEzNy41NCwwLDAsMSw2MS4wNSwzM2MxMy43Niw0NC4wNiwxMS41OCw4MC02LjY1LDEwOS44MloiIGNsYXNzPSJjbHMtMiIvPjxwYXRoIGQ9Ik01OC44MSwxMzUuNjRjNy0xMiwyMy4zOS00MC4wOSwxMS4yOS05My4yMWE5NS41Nyw5NS41NywwLDAsMSw4LjUyLDExLjcyYzIsMjEuODcsMS41NSw0NS44OC0xNC43LDczLjIzcS0yLjU1LDQuMTQtNS4xMSw4LjI2IiBjbGFzcz0iY2xzLTIiLz48cGF0aCBkPSJNNjcuNiwxMjEuNDVjNS4xMy04LjgsMTUuOC0yNy4xLDE1LjU3LTU4LjY4LjYsMS4zNSwxLjE0LDIuNywxLjYyLDRhNDksNDksMCwwLDEsMi4xMyw3Ljc0Yy0yLjUzLDEzLjgzLTUuNTUsMjQuMDgtMTQuMjEsMzguNjRaIiBjbGFzcz0iY2xzLTIiLz48ZyBjbGFzcz0iY2xzLTMiPjxyZWN0IGhlaWdodD0iMTEwLjEzIiB3aWR0aD0iMTM4LjE2IiB5PSI3MS42NiIgeD0iNzUuNjUiIGNsYXNzPSJjbHMtNCIvPjwvZz48ZyBjbGFzcz0iY2xzLTUiPjxyZWN0IGhlaWdodD0iMTEzLjExIiB3aWR0aD0iMTEzLjAxIiB5PSI2NS4wMiIgeD0iNzYuMTMiIGNsYXNzPSJjbHMtNiIvPjwvZz48ZyBjbGFzcz0iY2xzLTciPjxyZWN0IGhlaWdodD0iOTguMDMiIHdpZHRoPSI4My4yMyIgeT0iNjMuNjIiIHg9Ijc4LjU5IiBjbGFzcz0iY2xzLTgiLz48L2c+PGcgY2xhc3M9ImNscy05Ij48cmVjdCBoZWlnaHQ9Ijc4LjUiIHdpZHRoPSI1MS42MyIgeT0iNjUuMjUiIHg9IjgxLjI1IiBjbGFzcz0iY2xzLTEwIi8+PC9nPjxnIGNsYXNzPSJjbHMtMTEiPjxyZWN0IGhlaWdodD0iNTQuODciIHdpZHRoPSIyNi4wMyIgeT0iNzIuMzkiIHg9IjgzLjcyIiBjbGFzcz0iY2xzLTEyIi8+PC9nPjwvc3ZnPg=="
                   preserveAspectRatio="none"/>
          </g>
        </g>
        <g data-cell-id="30" class="fragment" data-fragment-index="30">
          <g>
            <rect x="604" y="389.49" width="120" height="30" fill="none" stroke="none" pointer-events="all"/>
          </g>
          <g>
            <g transform="translate(-0.5 -0.5)">
              <switch>
                <foreignObject pointer-events="none" width="100%" height="100%"
                               requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                               style="overflow: visible; text-align: left;">
                  <div xmlns="http://www.w3.org/1999/xhtml"
                       style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 118px; height: 1px; padding-top: 404px; margin-left: 605px;">
                    <div data-drawio-colors="color: rgb(0, 0, 0); "
                         style="box-sizing: border-box; font-size: 0px; text-align: center;">
                      <div
                        style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                        <font>SCM-Manager</font>
                      </div>
                    </div>
                  </div>
                </foreignObject>
                <text x="664" y="410" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="18px"
                      text-anchor="middle">SCM-Manager
                </text>
              </switch>
            </g>
          </g>
        </g>
        <g data-cell-id="31" class="fragment" data-fragment-index="30">
          <g/>
          <g data-cell-id="32" class="fragment" data-fragment-index="30">
            <g>
              <rect x="507" y="449.46" width="100" height="117" fill="rgb(255, 255, 255)" stroke="rgb(0, 0, 0)"
                    pointer-events="all"/>
            </g>
          </g>
          <g data-cell-id="33">
            <g>
              <image x="526.5" y="459.96" width="60" height="60"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWw6c3BhY2U9InByZXNlcnZlIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAxNTAgMTUwOyIgdmlld0JveD0iMCAwIDE1MCAxNTAiIHk9IjBweCIgeD0iMHB4IiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0iRWJlbmVfMSIgdmVyc2lvbj0iMS4xIj4mI3hhOzxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+JiN4YTsJLnN0MHtmaWxsOiNGMDUwMzM7fSYjeGE7PC9zdHlsZT4mI3hhOzxnPiYjeGE7CTxwYXRoIGQ9Ik0xNDcuMiw2OC4zTDgxLjcsMi44Qzc3LjktMSw3MS44LTEsNjgsMi44TDU0LjQsMTYuNGwxNy4zLDE3LjNjNC0xLjQsOC42LTAuNCwxMS44LDIuNyYjeEE7JiM5OyYjOTtjMy4yLDMuMiw0LjEsNy45LDIuNywxMS45bDE2LjYsMTYuNmM0LTEuNCw4LjctMC41LDExLjksMi43YzQuNSw0LjUsNC41LDExLjgsMCwxNi4zcy0xMS44LDQuNS0xNi4zLDBjLTMuNC0zLjQtNC4yLTguMy0yLjUtMTIuNSYjeEE7JiM5OyYjOTtMODAuNCw1NS45djQwLjhjMS4xLDAuNSwyLjEsMS4zLDMsMi4yYzQuNSw0LjUsNC41LDExLjgsMCwxNi4zcy0xMS44LDQuNS0xNi4zLDBjLTQuNS00LjUtNC41LTExLjgsMC0xNi4zJiN4QTsmIzk7JiM5O2MxLjEtMS4xLDIuNC0xLjksMy44LTIuNVY1NS4yYy0xLjQtMC42LTIuNy0xLjQtMy44LTIuNWMtMy40LTMuNC00LjItOC40LTIuNS0xMi42bC0xNy0xN0wyLjgsNjhjLTMuOCwzLjgtMy44LDkuOSwwLDEzLjcmI3hBOyYjOTsmIzk7bDY1LjUsNjUuNWMzLjgsMy44LDkuOSwzLjgsMTMuNywwTDE0Ny4yLDgyQzE1MC45LDc4LjIsMTUwLjksNzIuMSwxNDcuMiw2OC4zeiIgY2xhc3M9InN0MCIvPiYjeGE7PC9nPiYjeGE7PC9zdmc+"
                     preserveAspectRatio="none"/>
            </g>
          </g>
          <g data-cell-id="34">
            <g>
              <rect x="527" y="526.46" width="60" height="30" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 541px; margin-left: 528px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 12px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          Config Repository
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="557" y="545" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="12px"
                        text-anchor="middle">Config Rep...
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="35" class="fragment" data-fragment-index="30">
          <g/>
          <g data-cell-id="36" class="fragment" data-fragment-index="30">
            <g>
              <rect x="624" y="449.46" width="100" height="117" fill="rgb(255, 255, 255)" stroke="rgb(0, 0, 0)"
                    pointer-events="all"/>
            </g>
          </g>
          <g data-cell-id="37">
            <g>
              <image x="643.5" y="459.96" width="60" height="60"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWw6c3BhY2U9InByZXNlcnZlIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAxNTAgMTUwOyIgdmlld0JveD0iMCAwIDE1MCAxNTAiIHk9IjBweCIgeD0iMHB4IiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0iRWJlbmVfMSIgdmVyc2lvbj0iMS4xIj4mI3hhOzxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+JiN4YTsJLnN0MHtmaWxsOiNGMDUwMzM7fSYjeGE7PC9zdHlsZT4mI3hhOzxnPiYjeGE7CTxwYXRoIGQ9Ik0xNDcuMiw2OC4zTDgxLjcsMi44Qzc3LjktMSw3MS44LTEsNjgsMi44TDU0LjQsMTYuNGwxNy4zLDE3LjNjNC0xLjQsOC42LTAuNCwxMS44LDIuNyYjeEE7JiM5OyYjOTtjMy4yLDMuMiw0LjEsNy45LDIuNywxMS45bDE2LjYsMTYuNmM0LTEuNCw4LjctMC41LDExLjksMi43YzQuNSw0LjUsNC41LDExLjgsMCwxNi4zcy0xMS44LDQuNS0xNi4zLDBjLTMuNC0zLjQtNC4yLTguMy0yLjUtMTIuNSYjeEE7JiM5OyYjOTtMODAuNCw1NS45djQwLjhjMS4xLDAuNSwyLjEsMS4zLDMsMi4yYzQuNSw0LjUsNC41LDExLjgsMCwxNi4zcy0xMS44LDQuNS0xNi4zLDBjLTQuNS00LjUtNC41LTExLjgsMC0xNi4zJiN4QTsmIzk7JiM5O2MxLjEtMS4xLDIuNC0xLjksMy44LTIuNVY1NS4yYy0xLjQtMC42LTIuNy0xLjQtMy44LTIuNWMtMy40LTMuNC00LjItOC40LTIuNS0xMi42bC0xNy0xN0wyLjgsNjhjLTMuOCwzLjgtMy44LDkuOSwwLDEzLjcmI3hBOyYjOTsmIzk7bDY1LjUsNjUuNWMzLjgsMy44LDkuOSwzLjgsMTMuNywwTDE0Ny4yLDgyQzE1MC45LDc4LjIsMTUwLjksNzIuMSwxNDcuMiw2OC4zeiIgY2xhc3M9InN0MCIvPiYjeGE7PC9nPiYjeGE7PC9zdmc+"
                     preserveAspectRatio="none"/>
            </g>
          </g>
          <g data-cell-id="38">
            <g>
              <rect x="644" y="526.46" width="60" height="30" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 541px; margin-left: 645px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 12px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          <div>
                            <font>App</font>
                          </div>
                          <div>
                            <font>Repository
                              <br/>
                            </font>
                          </div>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="674" y="545" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="12px"
                        text-anchor="middle">App...
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="39" class="fragment" data-fragment-index="30">
          <g>
            <path d="M 421 439.5 Q 464 439.5 464 479.75 Q 464 520 494.03 520.01" fill="none" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/>
            <path d="M 501.53 520.01 L 491.53 525.01 L 494.03 520.01 L 491.53 515.01 Z" fill="#333333" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="40" class="fragment" data-fragment-index="30">
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 451px; margin-left: 457px;">
                      <div data-drawio-colors="color: #333333; background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(51, 51, 51); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                          pull
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="457" y="456" fill="#333333" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">pull
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="41">
          <g/>
          <g data-cell-id="42" class="fragment" data-fragment-index="30">
            <g>
              <rect x="801" y="700" width="120" height="160" fill="rgb(255, 255, 255)" stroke="rgb(0, 0, 0)"
                    pointer-events="all"/>
            </g>
          </g>
          <g data-cell-id="43" class="fragment" data-fragment-index="30">
            <g>
              <rect x="831" y="807" width="60" height="12" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 813px; margin-left: 832px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          <div>OCI</div>
                          <div>Registry
                            <br/>
                          </div>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="861" y="818" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">OCI...
                  </text>
                </switch>
              </g>
            </g>
          </g>
          <g data-cell-id="44" class="fragment" data-fragment-index="30">
            <g>
              <image x="825.5" y="719.5" width="70" height="70"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWw6c3BhY2U9InByZXNlcnZlIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAxNTAgMTUwOyIgdmlld0JveD0iMCAwIDE1MCAxNTAiIHk9IjBweCIgeD0iMHB4IiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0iRWJlbmVfMSIgdmVyc2lvbj0iMS4xIj4mI3hhOzxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+JiN4YTsJLnN0MHtmaWxsOiMyNkEzREQ7fSYjeGE7PC9zdHlsZT4mI3hhOzxnIGlkPSJib3giPiYjeGE7CTxwYXRoIGQ9Ik0xNDkuOCwxOC42YzAsNS4yLTQuMiw5LjMtOS4zLDkuM0g5LjVjLTUuMiwwLTkuNC00LjItOS40LTkuM1Y5LjNDMC4yLDQuMiw0LjQsMCw5LjUsMGgxMzEmI3hBOyYjOTsmIzk7YzUuMiwwLDkuMyw0LjIsOS4zLDkuM1YxOC42eiIgY2xhc3M9InN0MCIvPiYjeGE7CTxwYXRoIGQ9Ik0xNDAuNSwxMzAuN2MwLDUuMi00LjIsOS4zLTkuNCw5LjNIMTguOWMtNS4yLDAtOS4zLTQuMi05LjMtOS4zdi04NGMwLTUuMSw0LjItOS4zLDkuMy05LjNoMTEyLjImI3hBOyYjOTsmIzk7YzUuMiwwLDkuNCw0LjIsOS40LDkuM1YxMzAuN3ogTTEwMy4xLDc0LjdjMC01LjEtNC4yLTkuMy05LjQtOS4zSDU2LjNjLTUuMiwwLTkuNCw0LjItOS40LDkuM2wwLDBjMCw1LjIsNC4yLDkuMyw5LjQsOS4zaDM3LjQmI3hBOyYjOTsmIzk7Qzk4LjksODQsMTAzLjEsNzkuOCwxMDMuMSw3NC43TDEwMy4xLDc0Ljd6IiBjbGFzcz0ic3QwIi8+JiN4YTs8L2c+JiN4YTs8L3N2Zz4="
                     preserveAspectRatio="none"/>
            </g>
          </g>
        </g>
        <g data-cell-id="45" class="fragment" data-fragment-index="10">
          <g>
            <path d="M 151 319.7 L 205.5 319.7 L 205.5 321.3 L 247.92 320.88" fill="none" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/>
            <path d="M 255.42 320.8 L 245.47 325.9 L 247.92 320.88 L 245.37 315.9 Z" fill="#333333" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="46">
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 318px; margin-left: 194px;">
                      <div data-drawio-colors="color: #333333; background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(51, 51, 51); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                          run
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="194" y="324" fill="#333333" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">run
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="50" class="fragment" data-fragment-index="30">
          <g>
            <path d="M 557 700 Q 557 700 557 578.43" fill="none" stroke="#333333" stroke-width="4"
                  stroke-miterlimit="10" pointer-events="stroke"/>
            <path d="M 557 570.93 L 562 580.93 L 557 578.43 L 552 580.93 Z" fill="#333333" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="51" class="fragment" data-fragment-index="30">
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 630px; margin-left: 552px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                          push config<br/>and create pull request
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="552" y="635" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">push config...
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="52" class="fragment" data-fragment-index="30">
          <g>
            <path d="M 617 780 Q 674 780 674 578.43" fill="none" stroke="#333333" stroke-width="4"
                  stroke-miterlimit="10" pointer-events="stroke"/>
            <path d="M 674 570.93 L 679 580.93 L 674 578.43 L 669 580.93 Z" fill="#333333" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="53" class="fragment" data-fragment-index="30">
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 677px; margin-left: 671px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                          <font style="font-size: 18px;">pull</font>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="671" y="680" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="11px"
                        text-anchor="middle">pull
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="54">
          <g class="fragment" data-fragment-index="30">
            <path d="M 617 780 L 789.03 780" fill="none" stroke="#333333" stroke-width="4" stroke-miterlimit="10"
                  pointer-events="stroke"/>
            <path d="M 796.53 780 L 786.53 785 L 789.03 780 L 786.53 775 Z" fill="#333333" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="55">
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 782px; margin-left: 709px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="709" y="785" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="11px"
                        text-anchor="middle">Text
                  </text>
                </switch>
              </g>
            </g>
          </g>
          <g data-cell-id="56" >
            <g class="fragment" data-fragment-index="30">
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 781px; margin-left: 710px;">
                      <div data-drawio-colors="color: #333333; background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(51, 51, 51); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                          image push
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="710" y="786" fill="#333333" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">image push
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="E5CzxMxcGZiDEiddyvtC-59">
          <g>
            <rect x="476" y="982" width="120" height="20" fill="none" stroke="none" pointer-events="all"/>
          </g>
        </g>
        <g data-cell-id="gL-06NhibNNK-ix8GGDX-56">
          <g  class="fragment" data-fragment-index="20">
            <path d="M 136 743.16 L 217.5 743.7 L 286.03 742.67" fill="none" stroke="#333333" stroke-width="4"
                  stroke-miterlimit="10" pointer-events="stroke"/>
            <path d="M 293.53 742.56 L 283.6 747.71 L 286.03 742.67 L 283.45 737.71 Z" fill="#333333" stroke="#333333"
                  stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="gL-06NhibNNK-ix8GGDX-57" >
            <g class="fragment" data-fragment-index="20">
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 687px; margin-left: 195px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: nowrap;">
                             bootstrap 
                          <div>tools </div>
                          <div>+ examples</div>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="195" y="693" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">bootstrap...
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="gL-06NhibNNK-ix8GGDX-61">
          <g class="fragment" data-fragment-index="20">
            <path d="M 86 389.49 L 86.5 498.5 L 86.06 594.49" fill="none" stroke="rgb(0, 0, 0)" stroke-width="4"
                  stroke-miterlimit="10" pointer-events="stroke"/>
            <path d="M 86.02 601.99 L 81.07 591.96 L 86.06 594.49 L 91.07 592.01 Z" fill="rgb(0, 0, 0)"
                  stroke="rgb(0, 0, 0)" stroke-width="4" stroke-miterlimit="10" pointer-events="all"/>
          </g>
          <g data-cell-id="gL-06NhibNNK-ix8GGDX-62">
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div  class="fragment" data-fragment-index="20" xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 466px; margin-left: 87px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; background-color: rgb(255, 255, 255); white-space: nowrap;">
                          <font style="font-size: 18px;">run</font>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="87" y="469" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="11px"
                        text-anchor="middle">run
                  </text>
                </switch>
              </g>
            </g>
          </g>
        </g>
        <g data-cell-id="gL-06NhibNNK-ix8GGDX-63">
          <g/>
          <g data-cell-id="47">
            <g>
              <rect x="31" y="239.65" width="120" height="160" fill="rgb(255, 255, 255)" stroke="#1b7daa"
                    stroke-width="2" pointer-events="all"/>
            </g>
          </g>
          <g data-cell-id="48">
            <g>
              <rect x="61" y="348.65" width="60" height="12" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 355px; margin-left: 62px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          Docker Daemon
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="91" y="360" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">Docker...
                  </text>
                </switch>
              </g>
            </g>
          </g>
          <g data-cell-id="49">
            <g>
              <image x="41" y="253.96" width="99" height="70"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWw6c3BhY2U9InByZXNlcnZlIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0MzkgMzA5OyIgdmlld0JveD0iMCAwIDQzOSAzMDkiIHk9IjBweCIgeD0iMHB4IiBpZD0iTGF5ZXJfMSIgdmVyc2lvbj0iMS4xIj4mI3hhOzxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+JiN4YTsJLnN0MHtmaWxsOiMxNzE5MUU7fSYjeGE7PC9zdHlsZT4mI3hhOzxwYXRoIGQ9Ik0zNzkuNiwxMTEuN2MtMi4zLTE2LjctMTEuNS0zMS4yLTI4LjEtNDQuM2wtOS42LTYuNWwtNi40LDkuN2MtOC4yLDEyLjUtMTIuMywyOS45LTExLDQ2LjYmIzEwOyYjOTtjMC42LDUuOCwyLjUsMTYuNCw4LjQsMjUuNWMtNS45LDMuMy0xNy42LDcuNy0zMy4yLDcuNEgxLjdsLTAuNiwzLjVjLTIuOCwxNi43LTIuOCw2OSwzMC43LDEwOS4xYzI1LjUsMzAuNSw2My42LDQ2LDExMy40LDQ2JiMxMDsmIzk7YzEwOCwwLDE4Ny44LTUwLjMsMjI1LjMtMTQxLjljMTQuNywwLjMsNDYuNCwwLjEsNjIuNy0zMS40YzAuNC0wLjcsMS40LTIuNiw0LjItOC42bDEuNi0zLjNsLTkuMS02LjImIzEwOyYjOTtDNDE5LjksMTEwLjgsMzk3LjIsMTA4LjMsMzc5LjYsMTExLjdMMzc5LjYsMTExLjd6IE0yNDAsMGgtNDUuM3Y0MS43SDI0MFYweiBNMjQwLDUwLjFoLTQ1LjN2NDEuN0gyNDBWNTAuMXogTTE4Ni40LDUwLjFoLTQ1LjMmIzEwOyYjOTt2NDEuN2g0NS4zVjUwLjF6IE0xMzIuOSw1MC4xSDg3LjZ2NDEuN2g0NS4zVjUwLjF6IE03OS4zLDEwMC4ySDM0djQxLjdoNDUuM1YxMDAuMnogTTEzMi45LDEwMC4ySDg3LjZ2NDEuN2g0NS4zVjEwMC4yeiYjMTA7JiM5OyBNMTg2LjQsMTAwLjJoLTQ1LjN2NDEuN2g0NS4zVjEwMC4yeiBNMjQwLDEwMC4yaC00NS4zdjQxLjdIMjQwVjEwMC4yeiBNMjkzLjYsMTAwLjJoLTQ1LjN2NDEuN2g0NS4zVjEwMC4yeiIgY2xhc3M9InN0MCIvPiYjeGE7PC9zdmc+"
                     preserveAspectRatio="none"/>
            </g>
          </g>
        </g>
        <g data-cell-id="gL-06NhibNNK-ix8GGDX-64">
          <g/>
          <g data-cell-id="gL-06NhibNNK-ix8GGDX-58"  class="fragment" data-fragment-index="20">
            <g>
              <rect x="26" y="606.46" width="120" height="160" fill="rgb(255, 255, 255)" stroke="#23a3dd"
                    stroke-width="2" pointer-events="all"/>
            </g>
            <g>
              <g transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 118px; height: 1px; padding-top: 686px; margin-left: 27px;">
                      <div data-drawio-colors="color: rgb(0, 0, 0); "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 50px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          <div style="font-size: 50px;">
                            <br style="font-size: 50px;"/>
                          </div>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="86" y="701" fill="rgb(0, 0, 0)" font-family="&quot;Helvetica&quot;" font-size="50px"
                        text-anchor="middle"></text>
                </switch>
              </g>
            </g>
          </g>
          <g data-cell-id="gL-06NhibNNK-ix8GGDX-59">
            <g>
              <rect x="56" y="714.03" width="60" height="12" fill="none" stroke="none" pointer-events="all"/>
            </g>
            <g>
              <g  class="fragment" data-fragment-index="20" transform="translate(-0.5 -0.5)">
                <switch>
                  <foreignObject pointer-events="none" width="100%" height="100%"
                                 requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                                 style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 58px; height: 1px; padding-top: 720px; margin-left: 57px;">
                      <div data-drawio-colors="color: #23A3DD; "
                           style="box-sizing: border-box; font-size: 0px; text-align: center;">
                        <div
                          style="display: inline-block; font-size: 18px; font-family: Helvetica; color: rgb(35, 163, 221); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                          <font>
                            <span style="font-size: 29px;">
                              <b>GOP</b>
                            </span>
                          </font>
                        </div>
                      </div>
                    </div>
                  </foreignObject>
                  <text x="86" y="725" fill="#23A3DD" font-family="&quot;Helvetica&quot;" font-size="18px"
                        text-anchor="middle">GOP
                  </text>
                </switch>
              </g>
            </g>
          </g>
          <g data-cell-id="gL-06NhibNNK-ix8GGDX-60"  class="fragment" data-fragment-index="20">
            <g>
              <image x="28.37" y="626.53" width="114.26" height="70"
                     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA4MzguNjcgNTEzLjc3IiBkYXRhLW5hbWU9Imdlc2NobG9zc2VuZXMgRWxlbWVudCIgaWQ9Imdlc2NobG9zc2VuZXNfRWxlbWVudCI+PGRlZnM+PHN0eWxlPi5jbHMtMXtmaWxsOiMyNGEyZGM7fTwvc3R5bGU+PC9kZWZzPjxwYXRoIGQ9Ik03MjEuMzEsMzI5LjM2YTYwLjY2LDYwLjY2LDAsMCwxLTExNy4xLDIyLjI0bC41MywyLjUxLTExOC4xLDIzLjM3YTY3LjczLDY3LjczLDAsMCwxLTEzNS40LjE3bC0xMTktMjMuNTRhNjAuNjgsNjAuNjgsMCwxLDEsNS4yNy0yNC43NWwxMTcuMywyNC4xNGgwYTY3LjgzLDY3LjgzLDAsMCwxLDUxLjY0LTQ0LjY0aC0uMDZWMjM4LjYxYTYwLjY4LDYwLjY4LDAsMSwxLDI0LjI1LjE1djcwYTY4LjIxLDY4LjIxLDAsMCwxLDUyLjI3LDQ0LjYxbDExNi41My0yNCwuNiwyLjgxYy0uMDUtLjkzLS4wNy0xLjg3LS4wNy0yLjgxYTYwLjY2LDYwLjY2LDAsMSwxLDEyMS4zMSwwWiIgY2xhc3M9ImNscy0xIi8+PHBhdGggZD0iTTc0MiwxNzMuNTFjLTU1LjMyLTI1Ljg4LTEwNi41LTIzLTE0Ny42NS02LjE4LTItNDIuNjctMjAuODgtODMuNzYtNTctMTE4QzQ2Ny4xMS0xNy4xOCwzNTMuODYtMTEsMjg3LjU1LDYyLjc1Yy0yNy44LDMwLjkzLTQyLDY3LjQxLTQ0LjIsMTA0LjU2LTQxLjEzLTE2Ljg0LTkyLjMtMTkuNjctMTQ3LjU5LDYuMkMyNS41MiwyMDYuMzctMjkuODQsMzA5LjYzLDIwLjY5LDQwOS42NWMzNi44Miw3Mi45LDEyOC40OSwxMDcuNTcsMTg3LDEwMS42NGw0MjMuNTcuMTNDNjg5LjgxLDUxNi43Myw3ODAuNDYsNDgyLDgxNyw0MDkuNjUsODY3LjU1LDMwOS42Myw4MTIuMTksMjA2LjM3LDc0MiwxNzMuNTFabTE0LjU5LDIwOS4yM2MtMjEuNTUsMzkuNy01OC43NSw1NC43My0xMDAuNzcsNTguNTRINTA2LjU5Yy0xOS4zOSwyNC40NS00Ny4zNCw0My41OC04Ny41NSw0My41OC0zNS44MywwLTY2LjQyLTE1LjI1LTg3LjU1LTQzLjU4bC0xNDgsLjE0Yy00Mi42Ni0zLjU4LTgwLjUyLTE4LjQ5LTEwMi4zNC01OC42OC0zMS44NC01OC42Ni02LjU4LTEyNS40NSw0OC4zNy0xNTIuMzJzMTIyLTEuODUsMTQ4LDU0LjY3YTExNC4yOCwxMTQuMjgsMCwwLDEsNi4xNywxOC4xNnM0LjIzLTUsNC45My01Ljc3YzIwLjQ2LTIxLjU3LDMzLjUzLTI5LDUzLjMyLTM5LjkyYTkxLjY5LDkxLjY5LDAsMCwxLTEzLjc4LTE2LjM2Yy0uNTctMS0xLTEuODEtMS4yMy0yLjEyLTIzLjE2LTM0LjMyLTI2LjcxLTg5LjgyLDkuMjQtMTMxLjg0QzM3NS41Miw2MS4yLDQ0Mi42OCw1Ni45Myw0OTAsOTUuNjZjMzEuODgsMjYuMDgsNTIuMTksNzkuNTYsMjcuNjMsMTMxLjhsLS4wNy4xcy04LjU0LDE3LjkzLTIxLjc4LDMwYzE5Ljc5LDExLDMyLjg2LDE4LjM1LDUzLjMyLDM5LjkyLjcuNzQsNC44OCw1LjczLDQuOTMsNS43N2ExMTUuMywxMTUuMywwLDAsMSw2LjE3LTE4LjE2YzI1LjkyLTU2LjUyLDkzLTgxLjU0LDE0Ny45NS01NC42N1M3ODguMzgsMzI0LjA4LDc1Ni41NCwzODIuNzRaIiBjbGFzcz0iY2xzLTEiLz48L3N2Zz4="
                     preserveAspectRatio="none"/>
            </g>
          </g>
        </g>
      </g>
    </g>
  </g>
  <switch>
    <g requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"/>
    <a transform="translate(0,-5)" xlink:href="https://www.drawio.com/doc/faq/svg-export-text-problems" target="_blank">
      <text text-anchor="middle" font-size="10px" x="50%" y="100%">Text is not SVG - cannot display</text>
    </a>
  </switch>
</svg>
</span>



## Meet GOP <!-- .element style="font-size: 200%" -->
<!-- .slide: style="font-size:70%"  -->

a GitOps-based operational stack (platform)

<span style="font-size: 250%">
<i class="fab fa-linux" style="color: #FFD133;"></i> 
<i class="fab fa-windows" style="color: #2279D1;"></i> 
<i class="fab fa-apple" style="color: black;"></i>
<span style="margin: 0 30px">➕</span>
<i class="fab fa-docker" style="color: #1D63ED;"></i></span>

```bash
VERSION='0.8.0'
bash <(curl -s \
  "https://raw.githubusercontent.com/cloudogu/gitops-playground/$VERSION/scripts/init-cluster.sh") \
   && docker run --rm -t -u $(id -u) \
    -v ~/.config/k3d/kubeconfig-gitops-playground.yaml:/home/.kube/config \
    --net=host \
    ghcr.io/cloudogu/gitops-playground:$VERSION --yes --base-url=http://localhost --ingress-nginx --argocd 
# Other interesting options  --monitoring --vault=dev --mailhog --cert-manager
```

<i class="fab fa-github"></i> [cloudogu/gitops-playground](https://github.com/cloudogu/gitops-playground)


Note:
* Deploy the whole gop with monitoring, etc. (better showcase for cluster-resources repo)
* accept all [PRs](http://scmm.localhost/scm/repo/argocd/example-apps/pull-requests/) on example-apps repo, so petclinics are already running for demo  
* [Change welcome message](http://scmm.localhost/scm/repo/argocd/petclinic-helm/code/sourceext/edit/main/src/main/resources/messages/messages.properties), but leave PR open 
* Remove [exercise petclinic-helm](http://scmm.localhost/scm/repo/argocd/example-apps/code/sources/main/argocd/exercise-petclinic-helm.yaml/) for less distraction in argo cd
* Login to SCMM, Jenkins, ArgoCD
  



## Example 1: GOP  <!-- .element style="margin-bottom: 0px"--> 
<!-- .slide: id="ex1"  -->

<div style="position: absolute; top: 50px; left: 55%; margin: 0 0 0 0; font-size: 65%;font-weight: bold" >
    <p class="fragment" data-fragment-index="11"><a href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#app-of-apps">App of Apps</a></p>
    <p class="fragment" data-fragment-index="21"><a href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#umbrella-chart">Umbrella Chart</a></p>
</div>

<span style="position: absolute; bottom: 1px; left: 30px;" class="fragment" data-fragment-index="1">
  <img data-src="images/operator-deployment-patterns.drawio.svg" width="60%"/>
</span>

<span style="position: absolute; bottom: 30px; right: 1px;" class="fragment" data-fragment-index="140">
<span style="font-size:65%"><i class='fab fa-github'></i> <a href="https://github.com/cloudogu/gitops-build-lib">cloudogu/gitops-build-lib</a></span>
</span>


<div class="container">
    <div style="color: #5b5a5a; 
      font-size:52%; 
      background-image: url(images/parchment-paper.svg);background-repeat: no-repeat; background-size: contain; ">
        <ul style="margin-left: 70px; margin-top: 10px; margin-right: 30px;">
          <li><strong>Repo pattern:</strong> <a title="Repo per team pattern" href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#repo-per-team">Per team</a> <i class="fas fa-blender" title="mixed with"></i> <a title="Repo per application pattern" href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#repo-per-app">per app</a></li>
          <li><strong>Operator pattern:</strong> <a href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#hub-and-spoke">Instance per Cluster</a><br/>(<a href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#hub-and-spoke">Hub and Spoke</a>, <a href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#instance-per-namespace">Instance per Namespace</a>)</li>
          <li><strong>Operator:</strong>
            <a href="https://github.com/argoproj/argo-cd/" class="tooltip-right">
              <img class="zoom2x" style="height: 1.4em;vertical-align: middle;" data-src="images/argo-icon.svg">
              <span class="tooltip-right-text" style="margin-left: 20px">ArgoCD</span>
            </a>
          </li>
          <li><strong>Bootstrapping:</strong> GOP (<code>Helm</code>, <code>kubectl</code>)</li>
          <li><strong>Linking:</strong> <img data-src="images/argo-icon.svg" title="ArgoCD" style="height: 1.1em; vertical-align: middle;" /> <code>Application</code></li>
          <li><strong>Features:</strong>
            <ul>
              <li>Operate ArgoCD with GitOps</li>
              <li>Solution for cluster resources</li>
              <li>CI: <a href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#config-update">Config update</a> + <a title="Config replication" href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#config-replication">replication</a>,<br/>
                <a href="">rendered Manifest</a> <img data-src="images/helm-icon.svg" title="Helm" style="height: 1.1em; vertical-align: middle;" /></li>
              <li><a title="Environment per application pattern" href="https://github.com/cloudogu/gitops-patterns/blob/a70a1477#global-vs-env-per-app">Env per app</a></li>
              <li>Multi-tenancy: N tenants on 1 cluster<br/>(namespace envs)<br/></li>
            </ul>
          </li>
          <li><strong>Source:</strong> <span style="font-size:100%"><i class='fab fa-github'></i> <a href="https://github.com/cloudogu/gitops-playground">cloudogu/gitops-playground</a></span></li>
        </ul>
    </div>  
    <div class="column">
<svg width="94%"
   viewBox="-0.5 -0.5 621 494"xmlns:xhtml="http://www.w3.org/1999/xhtml">
  <sodipodi:namedview
     id="namedview215"
     pagecolor="#ffffff"
     bordercolor="#999999"
     borderopacity="1"
     inkscape:showpageshadow="0"
     inkscape:pageopacity="0"
     inkscape:pagecheckerboard="0"
     inkscape:deskcolor="#d1d1d1"
     showgrid="false"
     inkscape:zoom="2.8513293"
     inkscape:cx="365.61894"
     inkscape:cy="214.28602"
     inkscape:window-width="1865"
     inkscape:window-height="1043"
     inkscape:window-x="2869"
     inkscape:window-y="0"
     inkscape:window-maximized="1"
     inkscape:current-layer="svg213" />
  <defs
     id="defs7">
    <linearGradient
       x1="0%"
       y1="0%"
       x2="0%"
       y2="100%"
       id="mx-gradient-f5f5f5-1-b3b3b3-1-s-0">
      <stop
         offset="0%"
         style="stop-color: rgb(245, 245, 245); stop-opacity: 1;"
         id="stop2" />
      <stop
         offset="100%"
         style="stop-color: rgb(179, 179, 179); stop-opacity: 1;"
         id="stop4" />
    </linearGradient>
    <linearGradient
       inkscape:collect="always"
       xlink:href="#mx-gradient-f5f5f5-1-b3b3b3-1-s-0"
       id="linearGradient1238"
       x1="492.50366"
       y1="-0.46482195"
       x2="492.50366"
       y2="49.916225"
       gradientTransform="scale(1.0508679,0.9515944)"
       gradientUnits="userSpaceOnUse" />
    <linearGradient
       inkscape:collect="always"
       xlink:href="#mx-gradient-f5f5f5-1-b3b3b3-1-s-0"
       id="linearGradient1240"
       x1="600.96824"
       y1="-0.41308311"
       x2="600.96824"
       y2="51.635388"
       gradientTransform="scale(0.82616621,1.2104102)"
       gradientUnits="userSpaceOnUse" />
    <linearGradient
       inkscape:collect="always"
       xlink:href="#mx-gradient-f5f5f5-1-b3b3b3-1-s-0"
       id="linearGradient1242"
       x1="44.179555"
       y1="-0.41308311"
       x2="44.179555"
       y2="51.635388"
       gradientTransform="scale(0.82616621,1.2104102)"
       gradientUnits="userSpaceOnUse" />
  </defs>
<g class="fragment" data-fragment-index="8"><path d="M 285 459 L 279 459 L 279 145 L 220.24 145" fill="none" stroke="#5b5a5a" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 214.24 145 L 222.24 141 L 220.24 145 L 222.24 149 Z" fill="#5b5a5a" stroke="#5b5a5a" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/></g>
  <g class="fragment" data-fragment-index="7">
        <g transform="translate(-0.5 -0.5)">
            <switch>
                <foreignObject pointer-events="none" width="100%" height="100%"
                               requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
                               style="overflow: visible; text-align: left;">
                    <div xmlns="http://www.w3.org/1999/xhtml"
                         style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 12px; height: 1px; padding-top: 470px; margin-left: 350px;">
                        <div data-drawio-colors="color: #D33833; "
                             style="box-sizing: border-box; font-size: 0px; text-align: center;">
                            <div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: rgb(211, 56, 51); line-height: 1.2; pointer-events: none; font-weight: bold; white-space: normal; overflow-wrap: normal;">
                                <font color="#ee794b">GitOps Operator</font>
                            </div>
                        </div>
                    </div>
                </foreignObject>
                <text x="356" y="474" fill="#D33833" font-family="Helvetica" font-size="12px" text-anchor="middle"
                      font-weight="bold">Gi...
                </text>
            </switch>
        </g>
      <a href="http://argocd.localhost/applications?showFavorites=false&proj=example-apps&sync=&autoSync=&health=&namespace=&cluster=&labels=&search=petclinic-helm"><image x="284.5" y="424.5" width="54.84" height="68"
             xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBoZWlnaHQ9IjMxLjMwMDAwMSIgd2lkdGg9IjI0Ljc5OTk5OSIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgdmlld0JveD0iMCAwIDI0Ljc5OTk5OSAzMS4zMDAwMDEiIHk9IjBweCIgeD0iMHB4IiBpZD0iTGF5ZXJfMSIgdmVyc2lvbj0iMS4xIj48ZGVmcyBpZD0iZGVmczE5MiIvPiYjeGE7PHN0eWxlIGlkPSJzdHlsZTU3IiB0eXBlPSJ0ZXh0L2NzcyI+JiN4YTsJLnN0MHtmaWxsOiNFOTY1NEI7fSYjeGE7CS5zdDF7ZmlsbDojQjZDRkVBO30mI3hhOwkuc3Qye2ZpbGw6I0U2RjVGODt9JiN4YTsJLnN0M3tmaWxsOiNEMEU4RjA7fSYjeGE7CS5zdDR7ZmlsbDojRUU3OTRCO30mI3hhOwkuc3Q1e2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9JiN4YTsJLnN0NntvcGFjaXR5OjAuMjI7fSYjeGE7CS5zdDd7ZmlsbDojRTM0RTNCO30mI3hhOwkuc3Q4e29wYWNpdHk6MC41O30mI3hhOwkuc3Q5e2ZpbGw6I0ZCREZDMzt9JiN4YTsJLnN0MTB7ZmlsbDojMDEwMTAxO30mI3hhOwkuc3QxMXtmaWxsOiNGRkZGRkY7fSYjeGE7CS5zdDEye29wYWNpdHk6MC4yNTt9JiN4YTs8L3N0eWxlPiYjeGE7PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTguMiwtNS45OTk5OTkpIiBpZD0iZzE4NyI+JiN4YTsJPGcgaWQ9Imc2NyI+JiN4YTsJCTxnIGlkPSJnNjEiPiYjeGE7CQkJPHBhdGggaWQ9InBhdGg1OSIgZD0ibSAxNiwyNy43IGMgMCwwIC0wLjIsMC42IC0wLjUsMC45IC0wLjIsMC4yIC0wLjQsMC4zIC0wLjcsMC4zIC0wLjcsMC4yIC0xLjUsMC4zIC0xLjUsMC4zIDAsMCAwLjcsMC4xIDEuNSwwLjIgMC4zLDAgMC4zLDAgMC41LDAuMSAwLjUsMCAwLjcsLTAuMyAwLjcsLTAuMyB6IiBjbGFzcz0ic3QwIi8+JiN4YTsJCTwvZz4mI3hhOwkJPGcgaWQ9Imc2NSI+JiN4YTsJCQk8cGF0aCBpZD0icGF0aDYzIiBkPSJtIDI1LjIsMjcuNyBjIDAsMCAwLjIsMC42IDAuNSwwLjkgMC4yLDAuMiAwLjQsMC4zIDAuNywwLjMgMC43LDAuMiAxLjUsMC4zIDEuNSwwLjMgMCwwIC0wLjcsMC4xIC0xLjYsMC4yIC0wLjMsMCAtMC4zLDAgLTAuNSwwLjEgLTAuNiwwIC0wLjcsLTAuMyAtMC43LC0wLjMgeiIgY2xhc3M9InN0MCIvPiYjeGE7CQk8L2c+JiN4YTsJPC9nPiYjeGE7CTxnIGlkPSJnMTg1Ij4mI3hhOwkJPGcgaWQ9Imc3MSI+JiN4YTsJCQk8Y2lyY2xlIGlkPSJjaXJjbGU2OSIgcj0iMTAuOCIgY3k9IjE3Ljc5OTk5OSIgY3g9IjIwLjcwMDAwMSIgY2xhc3M9InN0MSIvPiYjeGE7CQk8L2c+JiN4YTsJCTxnIGlkPSJnNzUiPiYjeGE7CQkJPGNpcmNsZSBpZD0iY2lyY2xlNzMiIHI9IjEwLjQiIGN5PSIxNy43OTk5OTkiIGN4PSIyMC43MDAwMDEiIGNsYXNzPSJzdDIiLz4mI3hhOwkJPC9nPiYjeGE7CQk8ZyBpZD0iZzc5Ij4mI3hhOwkJCTxjaXJjbGUgaWQ9ImNpcmNsZTc3IiByPSI4LjUiIGN5PSIxOCIgY3g9IjIwLjcwMDAwMSIgY2xhc3M9InN0MyIvPiYjeGE7CQk8L2c+JiN4YTsJCTxnIGlkPSJCb2R5XzFfIj4mI3hhOwkJCTxnIGlkPSJnODMiPiYjeGE7CQkJCTxwYXRoIGlkPSJwYXRoODEiIGQ9Im0gMTUuNywyMiBjIDAsMCAwLjcsMTEuMyAwLjcsMTEuNSAwLDAuMSAwLjEsMC4zIC0wLjQsMC41IC0wLjUsMC4yIC0yLjEsMC42IC0yLjEsMC42IDAsMCAxLjIsMCAyLjQsMCAxLjEsMCAxLjEsLTAuOSAxLjEsLTEuMSAwLC0wLjIgMC4zLC00LjUgMC4zLC00LjUgMCwwIDAuMSw1LjEgMC4xLDUuMyAwLDAuMiAtMC4xLDAuNSAtMC44LDAuNyAtMC41LDAuMSAtMiwwLjQgLTIsMC40IDAsMCAxLjcsMCAyLjMsMCAxLjQsMCAxLjQsLTAuOSAxLjQsLTAuOSBMIDE5LDMwIGMgMCwwIDAuMSw0LjUgMC4xLDUgMCwwLjQgLTAuMywwLjcgLTEuNCwwLjkgLTAuNywwLjIgLTEuNiwwLjQgLTEuNiwwLjQgMCwwIDEuOSwwIDIuNiwwIDEuMywtMC4xIDEuNSwtMSAxLjUsLTEgbCAyLjIsLTExLjIgeiIgY2xhc3M9InN0NCIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPGcgaWQ9Imc4NyI+JiN4YTsJCQkJPHBhdGggaWQ9InBhdGg4NSIgZD0ibSAyNS43LDIyIGMgMCwwIC0wLjcsMTEuMyAtMC43LDExLjUgMCwwLjEgLTAuMSwwLjMgMC40LDAuNSAwLjUsMC4yIDIuMSwwLjYgMi4xLDAuNiAwLDAgLTEuMiwwIC0yLjQsMCBDIDI0LDM0LjYgMjQsMzMuNyAyNCwzMy41IDI0LDMzLjMgMjMuNywyOSAyMy43LDI5IGMgMCwwIC0wLjEsNS4xIC0wLjEsNS4zIDAsMC4yIDAuMSwwLjUgMC44LDAuNyAwLjUsMC4xIDIsMC40IDIsMC40IDAsMCAtMS43LDAgLTIuMywwIC0xLjQsMCAtMS40LC0wLjkgLTEuNCwtMC45IEwgMjIuNCwzMCBjIDAsMCAtMC4xLDQuNSAtMC4xLDUgMCwwLjQgMC4zLDAuNyAxLjQsMC45IDAuNywwLjIgMS42LDAuNCAxLjYsMC40IDAsMCAtMS45LDAgLTIuNiwwIC0xLjMsLTAuMSAtMS41LC0xIC0xLjUsLTEgTCAxOSwyNC4xIFoiIGNsYXNzPSJzdDQiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTxnIGlkPSJnOTEiPiYjeGE7CQkJCTxwYXRoIGlkPSJwYXRoODkiIGQ9Im0gMjUuOCwxNi41IGMgMCwyLjggLTIuMyw1IC01LDUgLTIuNywwIC01LC0yLjMgLTUsLTUgMCwtMi43IDIuMywtNSA1LC01IDIuNywwIDUsMi4yIDUsNSB6IiBjbGFzcz0ic3Q0Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBpZD0iZzEwNSI+JiN4YTsJCQkJPGcgaWQ9ImcxMDMiPiYjeGE7CQkJCQk8ZGVmcyBpZD0iZGVmczk0Ij4mI3hhOwkJCQkJCTxwb2x5bGluZSBwb2ludHM9IjI1LjgsMTYuMyAyNS4yLDMwIDE2LjIsMzAgMTUuNywxNi4zIiBpZD0iU1ZHSURfMV8iLz4mI3hhOwkJCQkJPC9kZWZzPiYjeGE7CQkJCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzJfIj4mI3hhOwkJCQkJCTx1c2UgaGVpZ2h0PSIxMDAlIiB3aWR0aD0iMTAwJSIgeT0iMCIgeD0iMCIgaWQ9InVzZTk2IiBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZSIgeGxpbms6aHJlZj0iI1NWR0lEXzFfIi8+JiN4YTsJCQkJCTwvY2xpcFBhdGg+JiN4YTsJCQkJCTxnIGlkPSJnMTAxIiBjbGlwLXBhdGg9InVybCgjU1ZHSURfMl8pIiBjbGFzcz0ic3Q1Ij4mI3hhOwkJCQkJCTxjaXJjbGUgaWQ9ImNpcmNsZTk5IiByPSI4Ljg5OTk5OTYiIGN5PSIxOS4yMDAwMDEiIGN4PSIyMC43OTk5OTkiIGNsYXNzPSJzdDQiLz4mI3hhOwkJCQkJPC9nPiYjeGE7CQkJCTwvZz4mI3hhOwkJCTwvZz4mI3hhOwkJCTxnIGlkPSJnMTA5IiBjbGFzcz0ic3Q2Ij4mI3hhOwkJCQk8cGF0aCBpZD0icGF0aDEwNyIgZD0ibSAyNS41LDIyIGMgMCwwIDAuNiwtNS4zIC0wLjIsLTcuMyAtMS41LC0zLjUgLTUsLTMuMiAtNSwtMy4yIDAsMCAyLDAuOCAyLjEsMy44IDAuMSwyLjEgMCw1LjIgMCw1LjIgeiIgY2xhc3M9InN0NyIvPiYjeGE7CQkJPC9nPiYjeGE7CQk8L2c+JiN4YTsJCTxnIGlkPSJGYWNlXzFfIj4mI3hhOwkJCTxnIGlkPSJnMTE2IiBjbGFzcz0ic3Q4Ij4mI3hhOwkJCQk8ZyBpZD0iZzExNCI+JiN4YTsJCQkJCTxjaXJjbGUgaWQ9ImNpcmNsZTExMiIgcj0iMC42OTk5OTk5OSIgY3k9IjEzLjgiIGN4PSIxOC43MDAwMDEiIGNsYXNzPSJzdDkiLz4mI3hhOwkJCQk8L2c+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBpZD0iZzE2MiI+JiN4YTsJCQkJPGcgaWQ9ImcxMjYiPiYjeGE7CQkJCQk8ZyBpZD0iZzEyMCI+JiN4YTsJCQkJCQk8cGF0aCBpZD0icGF0aDExOCIgZD0ibSAyMi41LDI0IGMgMCwxLjcgLTAuOCwyLjggLTEuOCwyLjggLTEsMCAtMS44LC0xLjMgLTEuOCwtMyAwLDAgMC44LDEuNiAxLjksMS42IDEuMSwwIDEuNywtMS40IDEuNywtMS40IHoiIGNsYXNzPSJzdDEwIi8+JiN4YTsJCQkJCTwvZz4mI3hhOwkJCQkJPGcgaWQ9ImcxMjQiPiYjeGE7CQkJCQkJPHBhdGggaWQ9InBhdGgxMjIiIGQ9Im0gMjIuNSwyNCBjIDAsMS4xIC0wLjgsMS43IC0xLjgsMS43IC0xLDAgLTEuNywtMC44IC0xLjcsLTEuOCAwLDAgMC44LDEgMS45LDEgMS4xLDAgMS42LC0wLjkgMS42LC0wLjkgeiIgY2xhc3M9InN0MTEiLz4mI3hhOwkJCQkJPC9nPiYjeGE7CQkJCTwvZz4mI3hhOwkJCQk8ZyBpZD0iZzE2MCI+JiN4YTsJCQkJCTxnIGlkPSJnMTQ4Ij4mI3hhOwkJCQkJCTxnIGlkPSJnMTM2Ij4mI3hhOwkJCQkJCQk8ZyBpZD0iZzEzMCI+JiN4YTsJCQkJCQkJCTxjaXJjbGUgaWQ9ImNpcmNsZTEyOCIgcj0iMy4wOTk5OTk5IiBjeT0iMTkuMjk5OTk5IiBjeD0iMjQuMjAwMDAxIiBjbGFzcz0ic3QwIi8+JiN4YTsJCQkJCQkJPC9nPiYjeGE7CQkJCQkJCTxnIGlkPSJnMTM0Ij4mI3hhOwkJCQkJCQkJPGNpcmNsZSBpZD0iY2lyY2xlMTMyIiByPSIzLjA5OTk5OTkiIGN5PSIxOS4yOTk5OTkiIGN4PSIxNy4yMDAwMDEiIGNsYXNzPSJzdDAiLz4mI3hhOwkJCQkJCQk8L2c+JiN4YTsJCQkJCQk8L2c+JiN4YTsJCQkJCQk8ZyBpZD0iZzE0NiI+JiN4YTsJCQkJCQkJPGcgaWQ9ImcxNDAiPiYjeGE7CQkJCQkJCQk8Y2lyY2xlIGlkPSJjaXJjbGUxMzgiIHI9IjIuNDAwMDAwMSIgY3k9IjE5LjI5OTk5OSIgY3g9IjI0LjIwMDAwMSIgY2xhc3M9InN0MTEiLz4mI3hhOwkJCQkJCQk8L2c+JiN4YTsJCQkJCQkJPGcgaWQ9ImcxNDQiPiYjeGE7CQkJCQkJCQk8Y2lyY2xlIGlkPSJjaXJjbGUxNDIiIHI9IjIuNDAwMDAwMSIgY3k9IjE5LjI5OTk5OSIgY3g9IjE3IiBjbGFzcz0ic3QxMSIvPiYjeGE7CQkJCQkJCTwvZz4mI3hhOwkJCQkJCTwvZz4mI3hhOwkJCQkJPC9nPiYjeGE7CQkJCQk8ZyBpZD0iZzE1OCI+JiN4YTsJCQkJCQk8ZyBpZD0iZzE1MiI+JiN4YTsJCQkJCQkJPGNpcmNsZSBpZD0iY2lyY2xlMTUwIiByPSIwLjY5OTk5OTk5IiBjeT0iMTkiIGN4PSIxNyIgY2xhc3M9InN0MTAiLz4mI3hhOwkJCQkJCTwvZz4mI3hhOwkJCQkJCTxnIGlkPSJnMTU2Ij4mI3hhOwkJCQkJCQk8Y2lyY2xlIGlkPSJjaXJjbGUxNTQiIHI9IjAuNjk5OTk5OTkiIGN5PSIxOSIgY3g9IjI0LjIwMDAwMSIgY2xhc3M9InN0MTAiLz4mI3hhOwkJCQkJCTwvZz4mI3hhOwkJCQkJPC9nPiYjeGE7CQkJCTwvZz4mI3hhOwkJCTwvZz4mI3hhOwkJPC9nPiYjeGE7CQk8ZyBpZD0iZzE2NyI+JiN4YTsJCQk8cGF0aCBpZD0icGF0aDE2NSIgZD0ibSA5LjcsMjAuNSB2IDAgQyA5LjQsMjAuNSA5LjIsMjAuMyA5LjIsMjAgdiAtNCBjIDAsLTAuMyAwLjIsLTAuNSAwLjUsLTAuNSB2IDAgYyAwLjMsMCAwLjUsMC4yIDAuNSwwLjUgdiA0IGMgMCwwLjMgLTAuMiwwLjUgLTAuNSwwLjUgeiIgY2xhc3M9InN0MSIvPiYjeGE7CQk8L2c+JiN4YTsJCTxnIGlkPSJnMTcxIj4mI3hhOwkJCTxwYXRoIGlkPSJwYXRoMTY5IiBkPSJtIDMxLjUsMjAuNSB2IDAgQyAzMS4yLDIwLjUgMzEsMjAuMyAzMSwyMCB2IC00IGMgMCwtMC4zIDAuMiwtMC41IDAuNSwtMC41IHYgMCBjIDAuMywwIDAuNSwwLjIgMC41LDAuNSB2IDQgYyAwLDAuMyAtMC4yLDAuNSAtMC41LDAuNSB6IiBjbGFzcz0ic3QxIi8+JiN4YTsJCTwvZz4mI3hhOwkJPGcgaWQ9ImcxNzUiPiYjeGE7CQkJPGNpcmNsZSBpZD0iY2lyY2xlMTczIiByPSIwLjUiIGN5PSI5LjgwMDAwMDIiIGN4PSIxNy4yOTk5OTkiIGNsYXNzPSJzdDExIi8+JiN4YTsJCTwvZz4mI3hhOwkJPGcgaWQ9ImcxNzkiPiYjeGE7CQkJPHBhdGggaWQ9InBhdGgxNzciIGQ9Im0gMTMuNywyMy4zIGMgLTAuMSwwIC0wLjIsMCAtMC4zLC0wLjEgLTEuMiwtMS41IC0xLjgsLTMuNCAtMS44LC01LjMgMCwtMS42IDAuNCwtMy4xIDEuMiwtNC41IDAuOCwtMS4zIDEuOSwtMi40IDMuMiwtMy4yIDAuMiwtMC4xIDAuNCwwIDAuNSwwLjEgMC4xLDAuMiAwLDAuNCAtMC4xLDAuNSAtMi41LDEuNCAtNC4xLDQuMSAtNC4xLDcgMCwxLjggMC42LDMuNSAxLjcsNC45IDAuMSwwLjEgMC4xLDAuNCAtMC4xLDAuNSAtMC4xLDAuMSAtMC4xLDAuMSAtMC4yLDAuMSB6IiBjbGFzcz0ic3QxMSIvPiYjeGE7CQk8L2c+JiN4YTsJCTxnIGlkPSJnMTgzIiBjbGFzcz0ic3QxMiI+JiN4YTsJCQk8cGF0aCBpZD0icGF0aDE4MSIgZD0ibSAyNS4yLDI4IHYgLTAuOCBjIC0xLjQsMC44IC0yLjksMS42IC00LjcsMS42IC0yLDAgLTMuMywtMC45IC00LjYsLTEuNiBMIDE2LDI4IGMgMCwwIDEuNSwxLjYgNC42LDEuNiAyLjksLTAuMSA0LjYsLTEuNiA0LjYsLTEuNiB6IiBjbGFzcz0ic3QwIi8+JiN4YTsJCTwvZz4mI3hhOwk8L2c+JiN4YTs8L2c+JiN4YTs8L3N2Zz4="
             preserveAspectRatio="none"/></a>
  </g>  
<g data-cell-id="2PjzfI4b0vl6DdQ2SJS3-4" class="fragment" data-fragment-index="91"><g><rect x="325" y="126" width="196" height="61" fill="none" stroke="#82b366" stroke-width="2" pointer-events="all"/></g><g><g transform="translate(-0.5 -0.5)"><switch><foreignObject pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility" style="overflow: visible; text-align: left;"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe flex-start; width: 194px; height: 1px; padding-top: 157px; margin-left: 327px;"><div data-drawio-colors="color: #ffffff; " style="box-sizing: border-box; font-size: 0px; text-align: left;"><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: rgb(255, 255, 255); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;"><b><br /></b></div></div></div></foreignObject><text x="327" y="160" fill="#ffffff" font-family="&quot;Helvetica&quot;" font-size="12px"></text></switch></g></g></g>
<g data-cell-id="2PjzfI4b0vl6DdQ2SJS3-5" class="fragment" data-fragment-index="91"><g><g transform="translate(-0.5 -0.5)"><switch><foreignObject pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility" style="overflow: visible; text-align: left;"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 117px; margin-left: 404px;"><div data-drawio-colors="color: #82B366; " style="box-sizing: border-box; font-size: 0px; text-align: center;"><div style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(130, 179, 102); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">Env per app</div></div></div></foreignObject><text x="404" y="121" fill="#82B366" font-family="&quot;Helvetica&quot;" font-size="11px" text-anchor="middle" font-weight="bold">Env per app</text></switch></g></g></g>

<a href="http://scmm.localhost/scm/repo/argocd/petclinic-helm/code/sources/main/">
<image
     x="352.5"
     y="312.5"
     width="230"
     height="130"
     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjE0MCIgd2lkdGg9IjI0NyIgdmlld0JveD0iMCAwIDI0NyAxNDAiPiYjeGE7CTxkZWZzPiYjeGE7CQk8ZyBpZD0iZ3JvdXBfMCI+JiN4YTsJCQk8dGV4dCB5PSIyNi40Mzc1IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHBhdGggZD0iTTQzOS41NSAyMzYuMDVMMjQ0IDQwLjQ1UTI0My40OTkgMzkuOTQ5NCAyNDIuOTc0IDM5LjQ3MzlRMjQyLjQ0OSAzOC45OTg1IDI0MS45MDEgMzguNTQ5M1EyNDEuMzUzIDM4LjEwMDIgMjQwLjc4NCAzNy42Nzg1UTI0MC4yMTUgMzcuMjU2NyAyMzkuNjI2IDM2Ljg2MzRRMjM5LjAzNyAzNi40NzAxIDIzOC40MyAzNi4xMDYxUTIzNy44MjIgMzUuNzQyMiAyMzcuMTk3IDM1LjQwODVRMjM2LjU3MiAzNS4wNzQ3IDIzNS45MzIgMzQuNzcyMVEyMzUuMjkyIDM0LjQ2OTQgMjM0LjYzNyAzNC4xOTg1UTIzMy45ODMgMzMuOTI3NiAyMzMuMzE2IDMzLjY4OTFRMjMyLjY0OSAzMy40NTA2IDIzMS45NzEgMzMuMjQ1MVEyMzEuMjkzIDMzLjAzOTYgMjMwLjYwNiAzMi44Njc2UTIyOS45MTkgMzIuNjk1NSAyMjkuMjI0IDMyLjU1NzRRMjI4LjUyOSAzMi40MTkzIDIyNy44MjkgMzIuMzE1NVEyMjcuMTI4IDMyLjIxMTYgMjI2LjQyMyAzMi4xNDIyUTIyNS43MTggMzIuMDcyOCAyMjUuMDExIDMyLjAzODFRMjI0LjMwMyAzMi4wMDMzIDIyMy41OTUgMzIuMDAzM1EyMjIuODg3IDMyLjAwMzMgMjIyLjE3OSAzMi4wMzgxUTIyMS40NzIgMzIuMDcyOCAyMjAuNzY3IDMyLjE0MjJRMjIwLjA2MiAzMi4yMTE2IDIxOS4zNjEgMzIuMzE1NVEyMTguNjYxIDMyLjQxOTMgMjE3Ljk2NiAzMi41NTc0UTIxNy4yNzEgMzIuNjk1NSAyMTYuNTg0IDMyLjg2NzZRMjE1Ljg5NyAzMy4wMzk2IDIxNS4yMTkgMzMuMjQ1MVEyMTQuNTQxIDMzLjQ1MDYgMjEzLjg3NCAzMy42ODkxUTIxMy4yMDcgMzMuOTI3NSAyMTIuNTUzIDM0LjE5ODVRMjExLjg5OCAzNC40Njk0IDIxMS4yNTggMzQuNzcyUTIxMC42MTggMzUuMDc0NyAyMDkuOTkzIDM1LjQwODVRMjA5LjM2OCAzNS43NDIyIDIwOC43NjEgMzYuMTA2MVEyMDguMTUzIDM2LjQ3MDEgMjA3LjU2NCAzNi44NjM0UTIwNi45NzUgMzcuMjU2NyAyMDYuNDA2IDM3LjY3ODVRMjA1LjgzNyAzOC4xMDAyIDIwNS4yODkgMzguNTQ5M1EyMDQuNzQxIDM4Ljk5ODUgMjA0LjIxNiAzOS40NzM5UTIwMy42OTEgMzkuOTQ5NCAyMDMuMTkgNDAuNDVMMTYyLjUzIDgxLjA4TDIxNC4wNSAxMzIuNkMyNDEuMTEgMTIzLjQ2IDI2Ni43MyAxNDkuMzcgMjU3LjQ0IDE3Ni4yOEwzMDcuMSAyMjUuOTRDMzQxLjMzIDIxNC4xNCAzNjguMjggMjU2Ljk0IDM0Mi41NyAyODIuNjNDMzE2LjA4IDMwOS4xMiAyNzIuMzYgMjc5Ljc2IDI4Ni41NyAyNDUuMjlMMjQwLjIyIDE5OUwyNDAuMjIgMzIwLjg1QzI2NS41MiAzMzMuMzkgMjYyLjQ4IDM2Mi43IDI0OS4zIDM3NS44NVEyNDguNzA0IDM3Ni40NDYgMjQ4LjA3OSAzNzcuMDEyUTI0Ny40NTUgMzc3LjU3NyAyNDYuODAzIDM3OC4xMTJRMjQ2LjE1MiAzNzguNjQ2IDI0NS40NzUgMzc5LjE0OFEyNDQuNzk4IDM3OS42NSAyNDQuMDk3IDM4MC4xMThRMjQzLjM5NiAzODAuNTg2IDI0Mi42NzMgMzgxLjAxOVEyNDEuOTUxIDM4MS40NTIgMjQxLjIwNyAzODEuODQ5UTI0MC40NjQgMzgyLjI0NiAyMzkuNzAyIDM4Mi42MDZRMjM4Ljk0IDM4Mi45NjcgMjM4LjE2MiAzODMuMjg5UTIzNy4zODMgMzgzLjYxMSAyMzYuNTkgMzgzLjg5NVEyMzUuNzk2IDM4NC4xNzkgMjM0Ljk5IDM4NC40MjNRMjM0LjE4MyAzODQuNjY4IDIzMy4zNjYgMzg0Ljg3M1EyMzIuNTQ5IDM4NS4wNzcgMjMxLjcyMiAzODUuMjQyUTIzMC44OTYgMzg1LjQwNiAyMzAuMDYyIDM4NS41M1EyMjkuMjI4IDM4NS42NTMgMjI4LjM5IDM4NS43MzZRMjI3LjU1MSAzODUuODE4IDIyNi43MDkgMzg1Ljg2UTIyNS44NjggMzg1LjkwMSAyMjUuMDI1IDM4NS45MDFRMjI0LjE4MiAzODUuOTAxIDIyMy4zNDEgMzg1Ljg2UTIyMi40OTkgMzg1LjgxOCAyMjEuNjYgMzg1LjczNlEyMjAuODIyIDM4NS42NTMgMjE5Ljk4OCAzODUuNTNRMjE5LjE1NSAzODUuNDA2IDIxOC4zMjggMzg1LjI0MlEyMTcuNTAyIDM4NS4wNzcgMjE2LjY4NCAzODQuODczUTIxNS44NjcgMzg0LjY2OCAyMTUuMDYgMzg0LjQyM1EyMTQuMjU0IDM4NC4xNzkgMjEzLjQ2IDM4My44OTVRMjEyLjY2NyAzODMuNjExIDIxMS44ODggMzgzLjI4OVEyMTEuMTEgMzgyLjk2NyAyMTAuMzQ4IDM4Mi42MDZRMjA5LjU4NiAzODIuMjQ2IDIwOC44NDMgMzgxLjg0OVEyMDguMSAzODEuNDUyIDIwNy4zNzcgMzgxLjAxOVEyMDYuNjU0IDM4MC41ODYgMjA1Ljk1MyAzODAuMTE4UTIwNS4yNTIgMzc5LjY1IDIwNC41NzUgMzc5LjE0OFEyMDMuODk4IDM3OC42NDYgMjAzLjI0NyAzNzguMTEyUTIwMi41OTUgMzc3LjU3NyAyMDEuOTcxIDM3Ny4wMTJRMjAxLjM0NiAzNzYuNDQ2IDIwMC43NSAzNzUuODVDMTgzLjE4IDM1OC4yNSAxODkuNjggMzI4Ljk0IDIxMiAzMTkuODVMMjEyIDE5Ni44NUMxOTEuMiAxODguMzQgMTg3LjQgMTY2LjExIDE5My4zNiAxNTEuODVMMTQyLjU3IDEwMUw4LjQ1IDIzNS4xNFE3Ljk0OTE1IDIzNS42NDEgNy40NzM0OCAyMzYuMTY2UTYuOTk3ODEgMjM2LjY5MSA2LjU0ODQ3IDIzNy4yMzhRNi4wOTkxMyAyMzcuNzg2IDUuNjc3MTkgMjM4LjM1NVE1LjI1NTI2IDIzOC45MjQgNC44NjE3NSAyMzkuNTEzUTQuNDY4MjQgMjQwLjEwMiA0LjEwNDEgMjQwLjcxUTMuNzM5OTcgMjQxLjMxNyAzLjQwNjA4IDI0MS45NDJRMy4wNzIxOSAyNDIuNTY3IDIuNzY5MzUgMjQzLjIwN1EyLjQ2NjUyIDI0My44NDggMi4xOTU0NyAyNDQuNTAyUTEuOTI0NDIgMjQ1LjE1NyAxLjY4NTggMjQ1LjgyNFExLjQ0NzE4IDI0Ni40OTEgMS4yNDE1OCAyNDcuMTY4UTEuMDM1OTcgMjQ3Ljg0NiAwLjg2Mzg3MSAyNDguNTM0UTAuNjkxNzcgMjQ5LjIyMSAwLjU1MzU5IDI0OS45MTVRMC40MTU0MSAyNTAuNjEgMC4zMTE0ODIgMjUxLjMxMVEwLjIwNzU1NSAyNTIuMDEyIDAuMTM4MTMgMjUyLjcxN1EwLjA2ODcwNTkgMjUzLjQyMiAwLjAzMzk1MTkgMjU0LjEyOVEtMC4wMDA4MDIxODcgMjU0LjgzNyAtMC4wMDA4MDIxODcgMjU1LjU0NVEtMC4wMDA4MDIxODcgMjU2LjI1MyAwLjAzMzk1MTkgMjU2Ljk2MVEwLjA2ODcwNTkgMjU3LjY2OCAwLjEzODEzIDI1OC4zNzNRMC4yMDc1NTUgMjU5LjA3OCAwLjMxMTQ4MiAyNTkuNzc5UTAuNDE1NDEgMjYwLjQ4IDAuNTUzNTkgMjYxLjE3NVEwLjY5MTc3IDI2MS44NjkgMC44NjM4NzEgMjYyLjU1N1ExLjAzNTk3IDI2My4yNDQgMS4yNDE1OCAyNjMuOTIyUTEuNDQ3MTggMjY0LjU5OSAxLjY4NTggMjY1LjI2NlExLjkyNDQyIDI2NS45MzMgMi4xOTU0NyAyNjYuNTg4UTIuNDY2NTIgMjY3LjI0MiAyLjc2OTM1IDI2Ny44ODNRMy4wNzIxOSAyNjguNTIzIDMuNDA2MDggMjY5LjE0OFEzLjczOTk2IDI2OS43NzMgNC4xMDQxIDI3MC4zOFE0LjQ2ODI0IDI3MC45ODggNC44NjE3NSAyNzEuNTc3UTUuMjU1MjYgMjcyLjE2NiA1LjY3NzE5IDI3Mi43MzVRNi4wOTkxMyAyNzMuMzA0IDYuNTQ4NDcgMjczLjg1MlE2Ljk5NzgxIDI3NC4zOTkgNy40NzM0OCAyNzQuOTI0UTcuOTQ5MTUgMjc1LjQ0OSA4LjQ1IDI3NS45NUwyMDQuMDYgNDcxLjU1UTIwNC41NjEgNDcyLjA1MSAyMDUuMDg2IDQ3Mi41MjZRMjA1LjYxMSA0NzMuMDAxIDIwNi4xNTggNDczLjQ1UTIwNi43MDYgNDczLjkgMjA3LjI3NSA0NzQuMzIxUTIwNy44NDQgNDc0Ljc0MyAyMDguNDMyIDQ3NS4xMzZRMjA5LjAyMSA0NzUuNTMgMjA5LjYyOSA0NzUuODkzUTIxMC4yMzYgNDc2LjI1NyAyMTAuODYxIDQ3Ni41OTFRMjExLjQ4NiA0NzYuOTI1IDIxMi4xMjYgNDc3LjIyN1EyMTIuNzY2IDQ3Ny41MyAyMTMuNDIgNDc3LjgwMVEyMTQuMDc1IDQ3OC4wNzIgMjE0Ljc0MSA0NzguMzFRMjE1LjQwOCA0NzguNTQ5IDIxNi4wODYgNDc4Ljc1NFEyMTYuNzY0IDQ3OC45NiAyMTcuNDUxIDQ3OS4xMzJRMjE4LjEzOCA0NzkuMzA0IDIxOC44MzIgNDc5LjQ0MlEyMTkuNTI3IDQ3OS41OCAyMjAuMjI3IDQ3OS42ODRRMjIwLjkyOCA0NzkuNzg4IDIyMS42MzIgNDc5Ljg1N1EyMjIuMzM3IDQ3OS45MjYgMjIzLjA0NSA0NzkuOTYxUTIyMy43NTIgNDc5Ljk5NiAyMjQuNDYgNDc5Ljk5NlEyMjUuMTY4IDQ3OS45OTYgMjI1Ljg3NSA0NzkuOTYxUTIyNi41ODMgNDc5LjkyNiAyMjcuMjg4IDQ3OS44NTdRMjI3Ljk5MiA0NzkuNzg4IDIyOC42OTMgNDc5LjY4NFEyMjkuMzkzIDQ3OS41OCAyMzAuMDg4IDQ3OS40NDJRMjMwLjc4MiA0NzkuMzA0IDIzMS40NjkgNDc5LjEzMlEyMzIuMTU2IDQ3OC45NiAyMzIuODM0IDQ3OC43NTRRMjMzLjUxMiA0NzguNTQ5IDIzNC4xNzkgNDc4LjMxUTIzNC44NDUgNDc4LjA3MiAyMzUuNSA0NzcuODAxUTIzNi4xNTQgNDc3LjUzIDIzNi43OTQgNDc3LjIyN1EyMzcuNDM0IDQ3Ni45MjUgMjM4LjA1OSA0NzYuNTkxUTIzOC42ODQgNDc2LjI1NyAyMzkuMjkxIDQ3NS44OTNRMjM5Ljg5OSA0NzUuNTMgMjQwLjQ4NyA0NzUuMTM2UTI0MS4wNzYgNDc0Ljc0MyAyNDEuNjQ1IDQ3NC4zMjFRMjQyLjIxNCA0NzMuOSAyNDIuNzYyIDQ3My40NVEyNDMuMzA5IDQ3My4wMDEgMjQzLjgzNCA0NzIuNTI2UTI0NC4zNTkgNDcyLjA1MSAyNDQuODYgNDcxLjU1TDQzOS41NSAyNzYuODZRNDQwLjA1MSAyNzYuMzU5IDQ0MC41MjYgMjc1LjgzNFE0NDEuMDAyIDI3NS4zMDkgNDQxLjQ1MSAyNzQuNzYyUTQ0MS45MDEgMjc0LjIxNCA0NDIuMzIzIDI3My42NDVRNDQyLjc0NSAyNzMuMDc2IDQ0My4xMzggMjcyLjQ4N1E0NDMuNTMyIDI3MS44OTggNDQzLjg5NiAyNzEuMjlRNDQ0LjI2IDI3MC42ODMgNDQ0LjU5NCAyNzAuMDU4UTQ0NC45MjggMjY5LjQzMyA0NDUuMjMxIDI2OC43OTNRNDQ1LjUzNCAyNjguMTUyIDQ0NS44MDUgMjY3LjQ5OFE0NDYuMDc2IDI2Ni44NDMgNDQ2LjMxNCAyNjYuMTc2UTQ0Ni41NTMgMjY1LjUwOSA0NDYuNzU4IDI2NC44MzJRNDQ2Ljk2NCAyNjQuMTU0IDQ0Ny4xMzYgMjYzLjQ2N1E0NDcuMzA4IDI2Mi43NzkgNDQ3LjQ0NiAyNjIuMDg1UTQ0Ny41ODUgMjYxLjM5IDQ0Ny42ODkgMjYwLjY4OVE0NDcuNzkyIDI1OS45ODggNDQ3Ljg2MiAyNTkuMjgzUTQ0Ny45MzEgMjU4LjU3OCA0NDcuOTY2IDI1Ny44NzFRNDQ4LjAwMSAyNTcuMTYzIDQ0OC4wMDEgMjU2LjQ1NVE0NDguMDAxIDI1NS43NDcgNDQ3Ljk2NiAyNTUuMDM5UTQ0Ny45MzEgMjU0LjMzMiA0NDcuODYyIDI1My42MjdRNDQ3Ljc5MiAyNTIuOTIyIDQ0Ny42ODkgMjUyLjIyMVE0NDcuNTg1IDI1MS41MiA0NDcuNDQ2IDI1MC44MjVRNDQ3LjMwOCAyNTAuMTMxIDQ0Ny4xMzYgMjQ5LjQ0M1E0NDYuOTY0IDI0OC43NTYgNDQ2Ljc1OCAyNDguMDc4UTQ0Ni41NTMgMjQ3LjQwMSA0NDYuMzE0IDI0Ni43MzRRNDQ2LjA3NiAyNDYuMDY3IDQ0NS44MDUgMjQ1LjQxMlE0NDUuNTM0IDI0NC43NTggNDQ1LjIzMSAyNDQuMTE3UTQ0NC45MjggMjQzLjQ3NyA0NDQuNTk0IDI0Mi44NTJRNDQ0LjI2IDI0Mi4yMjcgNDQzLjg5NiAyNDEuNjJRNDQzLjUzMiAyNDEuMDEyIDQ0My4xMzggMjQwLjQyM1E0NDIuNzQ1IDIzOS44MzQgNDQyLjMyMyAyMzkuMjY1UTQ0MS45MDEgMjM4LjY5NiA0NDEuNDUxIDIzOC4xNDhRNDQxLjAwMiAyMzcuNjAxIDQ0MC41MjYgMjM3LjA3NlE0NDAuMDUxIDIzNi41NTEgNDM5LjU1IDIzNi4wNUw0MzkuNTUgMjM2LjA1WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4wMzM0ODIxIDAgMCAwLjAzMzE5MDMgMTYgMTMuMDAzMykiIGZpbGw9IiMyM0EzREQiLz4mI3hhOwkJCTx0ZXh0IHk9IjI2LjQzNzUiIHg9IjMwLjk4NDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjI2LjQzNzUiIHg9IjM4LjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJCWV4YW1wbGUtdGVuYW50L215LWFwcCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNDIiIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI0MiIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilJzilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF8zIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjMxIiB4PSI0MSIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfMykiIGlkPSJjbF80Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjMxIiB4PSI0MSIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF80KSI+JiN4YTsJCQkJPHBhdGggZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMzEpIiBmaWxsPSIjMjY5Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfNCkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zMCAxMEwyMy40MzggMTBDMTggMTAgMTguNTYyIDE1IDE1IDE1TDYgMTVDMy43OTEgMTUgMiAxNi43OTEgMiAxOUwyIDI5QzIgMjkuNTUzIDEuNTUyIDMwIDEgMzBDMC40NDggMzAgMCAyOS41NTMgMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDMwIDMzQzMyLjIwOSAzMyAzNCAzMS4yMDkgMzQgMjlMMzQgMTRDMzQgMTEuNzkxIDMyLjIwOSAxMCAzMCAxMFoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA0MSAzMSkiIGZpbGw9IiM1NUFDRUUiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjQyIiB4PSI1NC4yNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjQyIiB4PSI2Mi4wNzgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJCWs4cyYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNTciIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI1NyIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI1NyIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfNSI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI0NiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzUpIiBpZD0iY2xfNiI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI0NiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfNikiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0wIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMjggMzNDMzAuMjA5IDMzIDMyIDMxLjIwOSAzMiAyOUwzMiAxMkMzMiA5Ljc5MSAzMC4yMDkgOCAyOCA4TDE5IDhDMTUuNDM4IDggMTYgMyAxMC41NjIgM0w0IDNDMS43OTEgMyAwIDQuNzkxIDAgN0wwIDI5WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDQ2KSIgZmlsbD0iIzI2OSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzYpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzAgMTBMMjMuNDM4IDEwQzE4IDEwIDE4LjU2MiAxNSAxNSAxNUw2IDE1QzMuNzkxIDE1IDIgMTYuNzkxIDIgMTlMMiAyOUMyIDI5LjU1MyAxLjU1MiAzMCAxIDMwQzAuNDQ4IDMwIDAgMjkuNTUzIDAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wzMCAzM0MzMi4yMDkgMzMgMzQgMzEuMjA5IDM0IDI5TDM0IDE0QzM0IDExLjc5MSAzMi4yMDkgMTAgMzAgMTBaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNjQgNDYpIiBmaWxsPSIjNTVBQ0VFIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSI1NyIgeD0iNzcuNzM0Mzc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNTciIHg9Ijg1LjU2MjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJCXByb2R1Y3Rpb24mI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjcyIiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNzIiIHg9IjE1LjgyODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSCwqDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNzIiIHg9IjM5LjMxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjcyIiB4PSI2Mi43OTY4NzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzciPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iNjEiIHg9Ijg4Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF83KSIgaWQ9ImNsXzgiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iNjEiIHg9Ijg4Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzgpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzQgMTVMMzAuNjM4IDE1QzMwLjMxNCAxMy42MzEgMjkuNzc0IDEyLjM0OSAyOS4wNTYgMTEuMTg2TDMxLjQzNSA4LjgwN0MzMi4yMTYgOC4wMjYgMzIuMjE2IDYuNzU5IDMxLjQzNSA1Ljk3OEwzMC4wMjEgNC41NjRDMjkuMjQgMy43ODMgMjcuOTc0IDMuNzgzIDI3LjE5MyA0LjU2NEwyNC44MTQgNi45NDNDMjMuNjUgNi4yMjUgMjIuMzY5IDUuNjg2IDIxIDUuMzYyTDIxIDJDMjEgMC44OTYgMjAuMTA0IDAgMTkgMEwxNyAwQzE1Ljg5NiAwIDE1IDAuODk2IDE1IDJMMTUgNS4zNjJDMTMuNjMxIDUuNjg2IDEyLjM0OSA2LjIyNiAxMS4xODYgNi45NDRMOC44MDggNC41NjVDOC4wMjcgMy43ODQgNi43NiAzLjc4NCA1Ljk4IDQuNTY1TDQuNTY1IDUuOTc5QzMuNzg0IDYuNzYgMy43ODQgOC4wMjcgNC41NjQgOC44MDhMNi45NDMgMTEuMTg3QzYuMjI1IDEyLjM1IDUuNjg2IDEzLjYzMiA1LjM2MiAxNUwyIDE1QzAuODk2IDE1IDAgMTUuODk2IDAgMTdMMCAxOUMwIDIwLjEwNCAwLjg5NiAyMSAyIDIxTDUuMzYyIDIxQzUuNjg2IDIyLjM2OCA2LjIyNiAyMy42NSA2Ljk0NCAyNC44MTNMNC41NjUgMjcuMTkyQzMuNzg1IDI3Ljk3MiAzLjc4NSAyOS4yNCA0LjU2NiAzMC4wMjFMNS45OCAzMS40MzVDNi43NiAzMi4yMTUgOC4wMjcgMzIuMjE1IDguODA4IDMxLjQzNUwxMS4xODcgMjkuMDU2QzEyLjM1IDI5Ljc3NSAxMy42MzIgMzAuMzE0IDE1LjAwMSAzMC42MzhMMTUuMDAxIDM0QzE1LjAwMSAzNS4xMDQgMTUuODk3IDM2IDE3LjAwMSAzNkwxOS4wMDEgMzZDMjAuMTA1IDM2IDIxLjAwMSAzNS4xMDQgMjEuMDAxIDM0TDIxLjAwMSAzMC42MzhDMjIuMzY5IDMwLjMxNCAyMy42NTEgMjkuNzc0IDI0LjgxNCAyOS4wNTZMMjcuMTkzIDMxLjQzNUMyNy45NzQgMzIuMjE2IDI5LjI0IDMyLjIxNiAzMC4wMjEgMzEuNDM1TDMxLjQzNSAzMC4wMjFDMzIuMjE2IDI5LjI0IDMyLjIxNiAyNy45NzMgMzEuNDM1IDI3LjE5MkwyOS4wNTYgMjQuODEzQzI5Ljc3NSAyMy42NSAzMC4zMTQgMjIuMzY4IDMwLjYzOCAyMC45OTlMMzQgMjAuOTk5QzM1LjEwNCAyMC45OTkgMzYgMjAuMTAzIDM2IDE4Ljk5OUwzNiAxNi45OTlDMzYgMTUuODk2IDM1LjEwNCAxNSAzNCAxNVpNMTggMjZDMTMuNTgyIDI2IDEwIDIyLjQxOCAxMCAxOEMxMCAxMy41ODIgMTMuNTgyIDEwIDE4IDEwQzIyLjQxOCAxMCAyNiAxMy41ODIgMjYgMThDMjYgMjIuNDE4IDIyLjQxOCAyNiAxOCAyNloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA4OCA2MSkiIGZpbGw9IiM2Njc1N0YiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjcyIiB4PSIxMDEuMjE4NzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgZGVwbG95bWVudC55YW1sJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI4NyIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilJTilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF85Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9Ijc2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfOSkiIGlkPSJjbF9hIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9Ijc2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF9hKSI+JiN4YTsJCQkJPHBhdGggZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNjQgNzYpIiBmaWxsPSIjMjY5Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfYSkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zMCAxMEwyMy40MzggMTBDMTggMTAgMTguNTYyIDE1IDE1IDE1TDYgMTVDMy43OTEgMTUgMiAxNi43OTEgMiAxOUwyIDI5QzIgMjkuNTUzIDEuNTUyIDMwIDEgMzBDMC40NDggMzAgMCAyOS41NTMgMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDMwIDMzQzMyLjIwOSAzMyAzNCAzMS4yMDkgMzQgMjlMMzQgMTRDMzQgMTEuNzkxIDMyLjIwOSAxMCAzMCAxMFoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCA3NikiIGZpbGw9IiM1NUFDRUUiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSI3Ny43MzQzNzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI4NyIgeD0iODUuNTYyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXdlaWdodD0iNjAwIiBmb250LXNpemU9IjEzIiBmaWxsPSIjMjNBM0REIj4mI3hhOwkJCQkJc3RhZ2luZyYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTAyIiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTAyIiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjEwMiIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqDCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMDIiIHg9IjYyLjc5Njg3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSU4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfYiI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI5MSIgeD0iODgiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsX2IpIiBpZD0iY2xfYyI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI5MSIgeD0iODgiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfYykiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDg4IDkxKSIgZmlsbD0iIzY2NzU3RiIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iMTAyIiB4PSIxMDEuMjE4NzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgZGVwbG95bWVudC55YW1sJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMTciIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMTciIHg9IjE1LjgyODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfZCI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIxMDYiIHg9IjQxIi8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF9kKSIgaWQ9ImNsX2UiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMTA2IiB4PSI0MSIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF9lKSI+JiN4YTsJCQkJPHBhdGggZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMTA2KSIgZmlsbD0iIzI2OSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsX2UpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzAgMTBMMjMuNDM4IDEwQzE4IDEwIDE4LjU2MiAxNSAxNSAxNUw2IDE1QzMuNzkxIDE1IDIgMTYuNzkxIDIgMTlMMiAyOUMyIDI5LjU1MyAxLjU1MiAzMCAxIDMwQzAuNDQ4IDMwIDAgMjkuNTUzIDAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wzMCAzM0MzMi4yMDkgMzMgMzQgMzEuMjA5IDM0IDI5TDM0IDE0QzM0IDExLjc5MSAzMi4yMDkgMTAgMzAgMTBaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMTA2KSIgZmlsbD0iIzU1QUNFRSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iMTE3IiB4PSI1NC4yNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjExNyIgeD0iNjIuMDc4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMyM0EzREQiPiYjeGE7CQkJCQlzcmMmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjEzMiIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjEzMiIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilJTilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHBhdGggZD0iTTIyNCAxMzZMMjI0IDBMMjQgMEMxMC43IDAgMCAxMC43IDAgMjRMMCA0ODhDMCA1MDEuMyAxMC43IDUxMiAyNCA1MTJMMzYwIDUxMkMzNzMuMyA1MTIgMzg0IDUwMS4zIDM4NCA0ODhMMzg0IDE2MEwyNDggMTYwQzIzNC44IDE2MCAyMjQgMTQ5LjIgMjI0IDEzNlpNMzg0IDEyMS45TDM4NCAxMjhMMjU2IDEyOEwyNTYgMEwyNjIuMSAwQzI2OC41IDAgMjc0LjYgMi41IDI3OS4xIDdMMzc3IDEwNUMzODEuNSAxMDkuNSAzODQgMTE1LjYgMzg0IDEyMS45WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4wMjYwNDE3IDAgMCAwLjAyNTM5MDYgMzkgMTIxKSIgZmlsbD0iIzVGODc4NyIvPiYjeGE7CQkJPHRleHQgeT0iMTMyIiB4PSI0OS4wNjI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoEplbmtpbnNmaWxlJiN4YTsJCQk8L3RleHQ+JiN4YTsJCTwvZz4mI3hhOwk8L2RlZnM+JiN4YTsJPHVzZSBocmVmPSIjZ3JvdXBfMCIvPiYjeGE7PC9zdmc+"
     preserveAspectRatio="none"
     id="image9" /></a>
  <a href="http://scmm.localhost/scm/repo/argocd/example-apps/code/sources/main/"><image
     x="271.5"
     y="81.5"
     width="301.5"
     height="201"
     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjIwMSIgd2lkdGg9IjMwMS41IiB2aWV3Qm94PSIwIDAgMzAxLjUgMjAxIj4mI3hhOwk8ZGVmcz4mI3hhOwkJPGcgaWQ9Imdyb3VwXzAiPiYjeGE7CQkJPHRleHQgeT0iMjYuNDM3NSIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHBhdGggZD0iTTQzOS41NSAyMzYuMDVMMjQ0IDQwLjQ1UTI0My40OTkgMzkuOTQ5NCAyNDIuOTc0IDM5LjQ3MzlRMjQyLjQ0OSAzOC45OTg1IDI0MS45MDEgMzguNTQ5M1EyNDEuMzUzIDM4LjEwMDIgMjQwLjc4NCAzNy42Nzg1UTI0MC4yMTUgMzcuMjU2NyAyMzkuNjI2IDM2Ljg2MzRRMjM5LjAzNyAzNi40NzAxIDIzOC40MyAzNi4xMDYxUTIzNy44MjIgMzUuNzQyMiAyMzcuMTk3IDM1LjQwODVRMjM2LjU3MiAzNS4wNzQ3IDIzNS45MzIgMzQuNzcyMVEyMzUuMjkyIDM0LjQ2OTQgMjM0LjYzNyAzNC4xOTg1UTIzMy45ODMgMzMuOTI3NiAyMzMuMzE2IDMzLjY4OTFRMjMyLjY0OSAzMy40NTA2IDIzMS45NzEgMzMuMjQ1MVEyMzEuMjkzIDMzLjAzOTYgMjMwLjYwNiAzMi44Njc2UTIyOS45MTkgMzIuNjk1NSAyMjkuMjI0IDMyLjU1NzRRMjI4LjUyOSAzMi40MTkzIDIyNy44MjkgMzIuMzE1NVEyMjcuMTI4IDMyLjIxMTYgMjI2LjQyMyAzMi4xNDIyUTIyNS43MTggMzIuMDcyOCAyMjUuMDExIDMyLjAzODFRMjI0LjMwMyAzMi4wMDMzIDIyMy41OTUgMzIuMDAzM1EyMjIuODg3IDMyLjAwMzMgMjIyLjE3OSAzMi4wMzgxUTIyMS40NzIgMzIuMDcyOCAyMjAuNzY3IDMyLjE0MjJRMjIwLjA2MiAzMi4yMTE2IDIxOS4zNjEgMzIuMzE1NVEyMTguNjYxIDMyLjQxOTMgMjE3Ljk2NiAzMi41NTc0UTIxNy4yNzEgMzIuNjk1NSAyMTYuNTg0IDMyLjg2NzZRMjE1Ljg5NyAzMy4wMzk2IDIxNS4yMTkgMzMuMjQ1MVEyMTQuNTQxIDMzLjQ1MDYgMjEzLjg3NCAzMy42ODkxUTIxMy4yMDcgMzMuOTI3NSAyMTIuNTUzIDM0LjE5ODVRMjExLjg5OCAzNC40Njk0IDIxMS4yNTggMzQuNzcyUTIxMC42MTggMzUuMDc0NyAyMDkuOTkzIDM1LjQwODVRMjA5LjM2OCAzNS43NDIyIDIwOC43NjEgMzYuMTA2MVEyMDguMTUzIDM2LjQ3MDEgMjA3LjU2NCAzNi44NjM0UTIwNi45NzUgMzcuMjU2NyAyMDYuNDA2IDM3LjY3ODVRMjA1LjgzNyAzOC4xMDAyIDIwNS4yODkgMzguNTQ5M1EyMDQuNzQxIDM4Ljk5ODUgMjA0LjIxNiAzOS40NzM5UTIwMy42OTEgMzkuOTQ5NCAyMDMuMTkgNDAuNDVMMTYyLjUzIDgxLjA4TDIxNC4wNSAxMzIuNkMyNDEuMTEgMTIzLjQ2IDI2Ni43MyAxNDkuMzcgMjU3LjQ0IDE3Ni4yOEwzMDcuMSAyMjUuOTRDMzQxLjMzIDIxNC4xNCAzNjguMjggMjU2Ljk0IDM0Mi41NyAyODIuNjNDMzE2LjA4IDMwOS4xMiAyNzIuMzYgMjc5Ljc2IDI4Ni41NyAyNDUuMjlMMjQwLjIyIDE5OUwyNDAuMjIgMzIwLjg1QzI2NS41MiAzMzMuMzkgMjYyLjQ4IDM2Mi43IDI0OS4zIDM3NS44NVEyNDguNzA0IDM3Ni40NDYgMjQ4LjA3OSAzNzcuMDEyUTI0Ny40NTUgMzc3LjU3NyAyNDYuODAzIDM3OC4xMTJRMjQ2LjE1MiAzNzguNjQ2IDI0NS40NzUgMzc5LjE0OFEyNDQuNzk4IDM3OS42NSAyNDQuMDk3IDM4MC4xMThRMjQzLjM5NiAzODAuNTg2IDI0Mi42NzMgMzgxLjAxOVEyNDEuOTUxIDM4MS40NTIgMjQxLjIwNyAzODEuODQ5UTI0MC40NjQgMzgyLjI0NiAyMzkuNzAyIDM4Mi42MDZRMjM4Ljk0IDM4Mi45NjcgMjM4LjE2MiAzODMuMjg5UTIzNy4zODMgMzgzLjYxMSAyMzYuNTkgMzgzLjg5NVEyMzUuNzk2IDM4NC4xNzkgMjM0Ljk5IDM4NC40MjNRMjM0LjE4MyAzODQuNjY4IDIzMy4zNjYgMzg0Ljg3M1EyMzIuNTQ5IDM4NS4wNzcgMjMxLjcyMiAzODUuMjQyUTIzMC44OTYgMzg1LjQwNiAyMzAuMDYyIDM4NS41M1EyMjkuMjI4IDM4NS42NTMgMjI4LjM5IDM4NS43MzZRMjI3LjU1MSAzODUuODE4IDIyNi43MDkgMzg1Ljg2UTIyNS44NjggMzg1LjkwMSAyMjUuMDI1IDM4NS45MDFRMjI0LjE4MiAzODUuOTAxIDIyMy4zNDEgMzg1Ljg2UTIyMi40OTkgMzg1LjgxOCAyMjEuNjYgMzg1LjczNlEyMjAuODIyIDM4NS42NTMgMjE5Ljk4OCAzODUuNTNRMjE5LjE1NSAzODUuNDA2IDIxOC4zMjggMzg1LjI0MlEyMTcuNTAyIDM4NS4wNzcgMjE2LjY4NCAzODQuODczUTIxNS44NjcgMzg0LjY2OCAyMTUuMDYgMzg0LjQyM1EyMTQuMjU0IDM4NC4xNzkgMjEzLjQ2IDM4My44OTVRMjEyLjY2NyAzODMuNjExIDIxMS44ODggMzgzLjI4OVEyMTEuMTEgMzgyLjk2NyAyMTAuMzQ4IDM4Mi42MDZRMjA5LjU4NiAzODIuMjQ2IDIwOC44NDMgMzgxLjg0OVEyMDguMSAzODEuNDUyIDIwNy4zNzcgMzgxLjAxOVEyMDYuNjU0IDM4MC41ODYgMjA1Ljk1MyAzODAuMTE4UTIwNS4yNTIgMzc5LjY1IDIwNC41NzUgMzc5LjE0OFEyMDMuODk4IDM3OC42NDYgMjAzLjI0NyAzNzguMTEyUTIwMi41OTUgMzc3LjU3NyAyMDEuOTcxIDM3Ny4wMTJRMjAxLjM0NiAzNzYuNDQ2IDIwMC43NSAzNzUuODVDMTgzLjE4IDM1OC4yNSAxODkuNjggMzI4Ljk0IDIxMiAzMTkuODVMMjEyIDE5Ni44NUMxOTEuMiAxODguMzQgMTg3LjQgMTY2LjExIDE5My4zNiAxNTEuODVMMTQyLjU3IDEwMUw4LjQ1IDIzNS4xNFE3Ljk0OTE1IDIzNS42NDEgNy40NzM0OCAyMzYuMTY2UTYuOTk3ODEgMjM2LjY5MSA2LjU0ODQ3IDIzNy4yMzhRNi4wOTkxMyAyMzcuNzg2IDUuNjc3MTkgMjM4LjM1NVE1LjI1NTI2IDIzOC45MjQgNC44NjE3NSAyMzkuNTEzUTQuNDY4MjQgMjQwLjEwMiA0LjEwNDEgMjQwLjcxUTMuNzM5OTcgMjQxLjMxNyAzLjQwNjA4IDI0MS45NDJRMy4wNzIxOSAyNDIuNTY3IDIuNzY5MzUgMjQzLjIwN1EyLjQ2NjUyIDI0My44NDggMi4xOTU0NyAyNDQuNTAyUTEuOTI0NDIgMjQ1LjE1NyAxLjY4NTggMjQ1LjgyNFExLjQ0NzE4IDI0Ni40OTEgMS4yNDE1OCAyNDcuMTY4UTEuMDM1OTcgMjQ3Ljg0NiAwLjg2Mzg3MSAyNDguNTM0UTAuNjkxNzcgMjQ5LjIyMSAwLjU1MzU5IDI0OS45MTVRMC40MTU0MSAyNTAuNjEgMC4zMTE0ODIgMjUxLjMxMVEwLjIwNzU1NSAyNTIuMDEyIDAuMTM4MTMgMjUyLjcxN1EwLjA2ODcwNTkgMjUzLjQyMiAwLjAzMzk1MTkgMjU0LjEyOVEtMC4wMDA4MDIxODcgMjU0LjgzNyAtMC4wMDA4MDIxODcgMjU1LjU0NVEtMC4wMDA4MDIxODcgMjU2LjI1MyAwLjAzMzk1MTkgMjU2Ljk2MVEwLjA2ODcwNTkgMjU3LjY2OCAwLjEzODEzIDI1OC4zNzNRMC4yMDc1NTUgMjU5LjA3OCAwLjMxMTQ4MiAyNTkuNzc5UTAuNDE1NDEgMjYwLjQ4IDAuNTUzNTkgMjYxLjE3NVEwLjY5MTc3IDI2MS44NjkgMC44NjM4NzEgMjYyLjU1N1ExLjAzNTk3IDI2My4yNDQgMS4yNDE1OCAyNjMuOTIyUTEuNDQ3MTggMjY0LjU5OSAxLjY4NTggMjY1LjI2NlExLjkyNDQyIDI2NS45MzMgMi4xOTU0NyAyNjYuNTg4UTIuNDY2NTIgMjY3LjI0MiAyLjc2OTM1IDI2Ny44ODNRMy4wNzIxOSAyNjguNTIzIDMuNDA2MDggMjY5LjE0OFEzLjczOTk2IDI2OS43NzMgNC4xMDQxIDI3MC4zOFE0LjQ2ODI0IDI3MC45ODggNC44NjE3NSAyNzEuNTc3UTUuMjU1MjYgMjcyLjE2NiA1LjY3NzE5IDI3Mi43MzVRNi4wOTkxMyAyNzMuMzA0IDYuNTQ4NDcgMjczLjg1MlE2Ljk5NzgxIDI3NC4zOTkgNy40NzM0OCAyNzQuOTI0UTcuOTQ5MTUgMjc1LjQ0OSA4LjQ1IDI3NS45NUwyMDQuMDYgNDcxLjU1UTIwNC41NjEgNDcyLjA1MSAyMDUuMDg2IDQ3Mi41MjZRMjA1LjYxMSA0NzMuMDAxIDIwNi4xNTggNDczLjQ1UTIwNi43MDYgNDczLjkgMjA3LjI3NSA0NzQuMzIxUTIwNy44NDQgNDc0Ljc0MyAyMDguNDMyIDQ3NS4xMzZRMjA5LjAyMSA0NzUuNTMgMjA5LjYyOSA0NzUuODkzUTIxMC4yMzYgNDc2LjI1NyAyMTAuODYxIDQ3Ni41OTFRMjExLjQ4NiA0NzYuOTI1IDIxMi4xMjYgNDc3LjIyN1EyMTIuNzY2IDQ3Ny41MyAyMTMuNDIgNDc3LjgwMVEyMTQuMDc1IDQ3OC4wNzIgMjE0Ljc0MSA0NzguMzFRMjE1LjQwOCA0NzguNTQ5IDIxNi4wODYgNDc4Ljc1NFEyMTYuNzY0IDQ3OC45NiAyMTcuNDUxIDQ3OS4xMzJRMjE4LjEzOCA0NzkuMzA0IDIxOC44MzIgNDc5LjQ0MlEyMTkuNTI3IDQ3OS41OCAyMjAuMjI3IDQ3OS42ODRRMjIwLjkyOCA0NzkuNzg4IDIyMS42MzIgNDc5Ljg1N1EyMjIuMzM3IDQ3OS45MjYgMjIzLjA0NSA0NzkuOTYxUTIyMy43NTIgNDc5Ljk5NiAyMjQuNDYgNDc5Ljk5NlEyMjUuMTY4IDQ3OS45OTYgMjI1Ljg3NSA0NzkuOTYxUTIyNi41ODMgNDc5LjkyNiAyMjcuMjg4IDQ3OS44NTdRMjI3Ljk5MiA0NzkuNzg4IDIyOC42OTMgNDc5LjY4NFEyMjkuMzkzIDQ3OS41OCAyMzAuMDg4IDQ3OS40NDJRMjMwLjc4MiA0NzkuMzA0IDIzMS40NjkgNDc5LjEzMlEyMzIuMTU2IDQ3OC45NiAyMzIuODM0IDQ3OC43NTRRMjMzLjUxMiA0NzguNTQ5IDIzNC4xNzkgNDc4LjMxUTIzNC44NDUgNDc4LjA3MiAyMzUuNSA0NzcuODAxUTIzNi4xNTQgNDc3LjUzIDIzNi43OTQgNDc3LjIyN1EyMzcuNDM0IDQ3Ni45MjUgMjM4LjA1OSA0NzYuNTkxUTIzOC42ODQgNDc2LjI1NyAyMzkuMjkxIDQ3NS44OTNRMjM5Ljg5OSA0NzUuNTMgMjQwLjQ4NyA0NzUuMTM2UTI0MS4wNzYgNDc0Ljc0MyAyNDEuNjQ1IDQ3NC4zMjFRMjQyLjIxNCA0NzMuOSAyNDIuNzYyIDQ3My40NVEyNDMuMzA5IDQ3My4wMDEgMjQzLjgzNCA0NzIuNTI2UTI0NC4zNTkgNDcyLjA1MSAyNDQuODYgNDcxLjU1TDQzOS41NSAyNzYuODZRNDQwLjA1MSAyNzYuMzU5IDQ0MC41MjYgMjc1LjgzNFE0NDEuMDAyIDI3NS4zMDkgNDQxLjQ1MSAyNzQuNzYyUTQ0MS45MDEgMjc0LjIxNCA0NDIuMzIzIDI3My42NDVRNDQyLjc0NSAyNzMuMDc2IDQ0My4xMzggMjcyLjQ4N1E0NDMuNTMyIDI3MS44OTggNDQzLjg5NiAyNzEuMjlRNDQ0LjI2IDI3MC42ODMgNDQ0LjU5NCAyNzAuMDU4UTQ0NC45MjggMjY5LjQzMyA0NDUuMjMxIDI2OC43OTNRNDQ1LjUzNCAyNjguMTUyIDQ0NS44MDUgMjY3LjQ5OFE0NDYuMDc2IDI2Ni44NDMgNDQ2LjMxNCAyNjYuMTc2UTQ0Ni41NTMgMjY1LjUwOSA0NDYuNzU4IDI2NC44MzJRNDQ2Ljk2NCAyNjQuMTU0IDQ0Ny4xMzYgMjYzLjQ2N1E0NDcuMzA4IDI2Mi43NzkgNDQ3LjQ0NiAyNjIuMDg1UTQ0Ny41ODUgMjYxLjM5IDQ0Ny42ODkgMjYwLjY4OVE0NDcuNzkyIDI1OS45ODggNDQ3Ljg2MiAyNTkuMjgzUTQ0Ny45MzEgMjU4LjU3OCA0NDcuOTY2IDI1Ny44NzFRNDQ4LjAwMSAyNTcuMTYzIDQ0OC4wMDEgMjU2LjQ1NVE0NDguMDAxIDI1NS43NDcgNDQ3Ljk2NiAyNTUuMDM5UTQ0Ny45MzEgMjU0LjMzMiA0NDcuODYyIDI1My42MjdRNDQ3Ljc5MiAyNTIuOTIyIDQ0Ny42ODkgMjUyLjIyMVE0NDcuNTg1IDI1MS41MiA0NDcuNDQ2IDI1MC44MjVRNDQ3LjMwOCAyNTAuMTMxIDQ0Ny4xMzYgMjQ5LjQ0M1E0NDYuOTY0IDI0OC43NTYgNDQ2Ljc1OCAyNDguMDc4UTQ0Ni41NTMgMjQ3LjQwMSA0NDYuMzE0IDI0Ni43MzRRNDQ2LjA3NiAyNDYuMDY3IDQ0NS44MDUgMjQ1LjQxMlE0NDUuNTM0IDI0NC43NTggNDQ1LjIzMSAyNDQuMTE3UTQ0NC45MjggMjQzLjQ3NyA0NDQuNTk0IDI0Mi44NTJRNDQ0LjI2IDI0Mi4yMjcgNDQzLjg5NiAyNDEuNjJRNDQzLjUzMiAyNDEuMDEyIDQ0My4xMzggMjQwLjQyM1E0NDIuNzQ1IDIzOS44MzQgNDQyLjMyMyAyMzkuMjY1UTQ0MS45MDEgMjM4LjY5NiA0NDEuNDUxIDIzOC4xNDhRNDQxLjAwMiAyMzcuNjAxIDQ0MC41MjYgMjM3LjA3NlE0NDAuMDUxIDIzNi41NTEgNDM5LjU1IDIzNi4wNUw0MzkuNTUgMjM2LjA1WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4wMzM0ODIxIDAgMCAwLjAzMzE5MDMgMTYgMTMuMDAzMykiIGZpbGw9IiMyM0EzREQiLz4mI3hhOwkJCTx0ZXh0IHk9IjI2LjQzNzUiIHg9IjMwLjk4NDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMjYuNDM3NSIgeD0iMzguODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXdlaWdodD0iNjAwIiBmb250LXNpemU9IjEzIiBmaWxsPSIjMjNBM0REIj4mI3hhOwkJCQlleGFtcGxlLXRlbmFudC9naXRvcHMmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjQyIiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI0MiIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUnOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzMiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMzEiIHg9IjQxIi8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF8zKSIgaWQ9ImNsXzQiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMzEiIHg9IjQxIi8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzQpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDI4IDMzQzMwLjIwOSAzMyAzMiAzMS4yMDkgMzIgMjlMMzIgMTJDMzIgOS43OTEgMzAuMjA5IDggMjggOEwxOSA4QzE1LjQzOCA4IDE2IDMgMTAuNTYyIDNMNCAzQzEuNzkxIDMgMCA0Ljc5MSAwIDdMMCAyOVoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA0MSAzMSkiIGZpbGw9IiMyNjkiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF80KSI+JiN4YTsJCQkJPHBhdGggZD0iTTMwIDEwTDIzLjQzOCAxMEMxOCAxMCAxOC41NjIgMTUgMTUgMTVMNiAxNUMzLjc5MSAxNSAyIDE2Ljc5MSAyIDE5TDIgMjlDMiAyOS41NTMgMS41NTIgMzAgMSAzMEMwLjQ0OCAzMCAwIDI5LjU1MyAwIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMzAgMzNDMzIuMjA5IDMzIDM0IDMxLjIwOSAzNCAyOUwzNCAxNEMzNCAxMS43OTEgMzIuMjA5IDEwIDMwIDEwWiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDQxIDMxKSIgZmlsbD0iIzU1QUNFRSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iNDIiIHg9IjU0LjI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI0MiIgeD0iNjIuMDc4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMyM0EzREQiPiYjeGE7CQkJCWFwcHMmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjU3IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI1NyIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjU3IiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzUiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iNDYiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF81KSIgaWQ9ImNsXzYiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iNDYiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzYpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDI4IDMzQzMwLjIwOSAzMyAzMiAzMS4yMDkgMzIgMjlMMzIgMTJDMzIgOS43OTEgMzAuMjA5IDggMjggOEwxOSA4QzE1LjQzOCA4IDE2IDMgMTAuNTYyIDNMNCAzQzEuNzkxIDMgMCA0Ljc5MSAwIDdMMCAyOVoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCA0NikiIGZpbGw9IiMyNjkiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF82KSI+JiN4YTsJCQkJPHBhdGggZD0iTTMwIDEwTDIzLjQzOCAxMEMxOCAxMCAxOC41NjIgMTUgMTUgMTVMNiAxNUMzLjc5MSAxNSAyIDE2Ljc5MSAyIDE5TDIgMjlDMiAyOS41NTMgMS41NTIgMzAgMSAzMEMwLjQ0OCAzMCAwIDI5LjU1MyAwIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMzAgMzNDMzIuMjA5IDMzIDM0IDMxLjIwOSAzNCAyOUwzNCAxNEMzNCAxMS43OTEgMzIuMjA5IDEwIDMwIDEwWiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDQ2KSIgZmlsbD0iIzU1QUNFRSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iNTciIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNTciIHg9Ijg1LjU2MjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJbXktYXBwJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI3MiIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNzIiIHg9IjE1LjgyODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI3MiIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoMKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjcyIiB4PSI2Mi43OTY4NzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfNyI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI2MSIgeD0iODgiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzcpIiBpZD0iY2xfOCI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI2MSIgeD0iODgiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfOCkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0wIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMjggMzNDMzAuMjA5IDMzIDMyIDMxLjIwOSAzMiAyOUwzMiAxMkMzMiA5Ljc5MSAzMC4yMDkgOCAyOCA4TDE5IDhDMTUuNDM4IDggMTYgMyAxMC41NjIgM0w0IDNDMS43OTEgMyAwIDQuNzkxIDAgN0wwIDI5WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDg4IDYxKSIgZmlsbD0iIzI2OSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzgpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzAgMTBMMjMuNDM4IDEwQzE4IDEwIDE4LjU2MiAxNSAxNSAxNUw2IDE1QzMuNzkxIDE1IDIgMTYuNzkxIDIgMTlMMiAyOUMyIDI5LjU1MyAxLjU1MiAzMCAxIDMwQzAuNDQ4IDMwIDAgMjkuNTUzIDAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wzMCAzM0MzMi4yMDkgMzMgMzQgMzEuMjA5IDM0IDI5TDM0IDE0QzM0IDExLjc5MSAzMi4yMDkgMTAgMzAgMTBaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgODggNjEpIiBmaWxsPSIjNTVBQ0VFIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSI3MiIgeD0iMTAxLjIxODc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI3MiIgeD0iMTA5LjA0Njg4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMyM0EzREQiPiYjeGE7CQkJCXByb2R1Y3Rpb24mI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI4NyIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgwqDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iODciIHg9IjYyLjc5Njg3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnilJTilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF85Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9Ijc2IiB4PSI4OCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfOSkiIGlkPSJjbF9hIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9Ijc2IiB4PSI4OCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF9hKSI+JiN4YTsJCQkJPHBhdGggZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgODggNzYpIiBmaWxsPSIjMjY5Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfYSkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zMCAxMEwyMy40MzggMTBDMTggMTAgMTguNTYyIDE1IDE1IDE1TDYgMTVDMy43OTEgMTUgMiAxNi43OTEgMiAxOUwyIDI5QzIgMjkuNTUzIDEuNTUyIDMwIDEgMzBDMC40NDggMzAgMCAyOS41NTMgMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDMwIDMzQzMyLjIwOSAzMyAzNCAzMS4yMDkgMzQgMjlMMzQgMTRDMzQgMTEuNzkxIDMyLjIwOSAxMCAzMCAxMFoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA4OCA3NikiIGZpbGw9IiM1NUFDRUUiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSIxMDEuMjE4NzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSIxMDkuMDQ2ODgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJc3RhZ2luZyYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTAyIiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMDIiIHg9IjE1LjgyODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMDIiIHg9IjM5LjMxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJwqDCoMKgwqDCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMDIiIHg9Ijg2LjI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsX2IiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iOTEiIHg9IjExMSIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfYikiIGlkPSJjbF9jIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjkxIiB4PSIxMTEiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfYykiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDExMSA5MSkiIGZpbGw9IiM2Njc1N0YiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjEwMiIgeD0iMTI0LjcwMzEyIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgZGVwbG95bWVudC55YW1sJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMTciIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjExNyIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUnOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsX2QiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMTA2IiB4PSI0MSIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfZCkiIGlkPSJjbF9lIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEwNiIgeD0iNDEiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfZSkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0wIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMjggMzNDMzAuMjA5IDMzIDMyIDMxLjIwOSAzMiAyOUwzMiAxMkMzMiA5Ljc5MSAzMC4yMDkgOCAyOCA4TDE5IDhDMTUuNDM4IDggMTYgMyAxMC41NjIgM0w0IDNDMS43OTEgMyAwIDQuNzkxIDAgN0wwIDI5WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDQxIDEwNikiIGZpbGw9IiMyNjkiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF9lKSI+JiN4YTsJCQkJPHBhdGggZD0iTTMwIDEwTDIzLjQzOCAxMEMxOCAxMCAxOC41NjIgMTUgMTUgMTVMNiAxNUMzLjc5MSAxNSAyIDE2Ljc5MSAyIDE5TDIgMjlDMiAyOS41NTMgMS41NTIgMzAgMSAzMEMwLjQ0OCAzMCAwIDI5LjU1MyAwIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMzAgMzNDMzIuMjA5IDMzIDM0IDMxLjIwOSAzNCAyOUwzNCAxNEMzNCAxMS43OTEgMzIuMjA5IDEwIDMwIDEwWiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDQxIDEwNikiIGZpbGw9IiM1NUFDRUUiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjExNyIgeD0iNTQuMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjExNyIgeD0iNjIuMDc4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMyM0EzREQiPiYjeGE7CQkJCWFyZ29jZCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTMyIiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMzIiIHg9IjE1LjgyODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMzIiIHg9IjM5LjMxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfZiI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIxMjEiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF9mKSIgaWQ9ImNsXzEwIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEyMSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTApIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzQgMTVMMzAuNjM4IDE1QzMwLjMxNCAxMy42MzEgMjkuNzc0IDEyLjM0OSAyOS4wNTYgMTEuMTg2TDMxLjQzNSA4LjgwN0MzMi4yMTYgOC4wMjYgMzIuMjE2IDYuNzU5IDMxLjQzNSA1Ljk3OEwzMC4wMjEgNC41NjRDMjkuMjQgMy43ODMgMjcuOTc0IDMuNzgzIDI3LjE5MyA0LjU2NEwyNC44MTQgNi45NDNDMjMuNjUgNi4yMjUgMjIuMzY5IDUuNjg2IDIxIDUuMzYyTDIxIDJDMjEgMC44OTYgMjAuMTA0IDAgMTkgMEwxNyAwQzE1Ljg5NiAwIDE1IDAuODk2IDE1IDJMMTUgNS4zNjJDMTMuNjMxIDUuNjg2IDEyLjM0OSA2LjIyNiAxMS4xODYgNi45NDRMOC44MDggNC41NjVDOC4wMjcgMy43ODQgNi43NiAzLjc4NCA1Ljk4IDQuNTY1TDQuNTY1IDUuOTc5QzMuNzg0IDYuNzYgMy43ODQgOC4wMjcgNC41NjQgOC44MDhMNi45NDMgMTEuMTg3QzYuMjI1IDEyLjM1IDUuNjg2IDEzLjYzMiA1LjM2MiAxNUwyIDE1QzAuODk2IDE1IDAgMTUuODk2IDAgMTdMMCAxOUMwIDIwLjEwNCAwLjg5NiAyMSAyIDIxTDUuMzYyIDIxQzUuNjg2IDIyLjM2OCA2LjIyNiAyMy42NSA2Ljk0NCAyNC44MTNMNC41NjUgMjcuMTkyQzMuNzg1IDI3Ljk3MiAzLjc4NSAyOS4yNCA0LjU2NiAzMC4wMjFMNS45OCAzMS40MzVDNi43NiAzMi4yMTUgOC4wMjcgMzIuMjE1IDguODA4IDMxLjQzNUwxMS4xODcgMjkuMDU2QzEyLjM1IDI5Ljc3NSAxMy42MzIgMzAuMzE0IDE1LjAwMSAzMC42MzhMMTUuMDAxIDM0QzE1LjAwMSAzNS4xMDQgMTUuODk3IDM2IDE3LjAwMSAzNkwxOS4wMDEgMzZDMjAuMTA1IDM2IDIxLjAwMSAzNS4xMDQgMjEuMDAxIDM0TDIxLjAwMSAzMC42MzhDMjIuMzY5IDMwLjMxNCAyMy42NTEgMjkuNzc0IDI0LjgxNCAyOS4wNTZMMjcuMTkzIDMxLjQzNUMyNy45NzQgMzIuMjE2IDI5LjI0IDMyLjIxNiAzMC4wMjEgMzEuNDM1TDMxLjQzNSAzMC4wMjFDMzIuMjE2IDI5LjI0IDMyLjIxNiAyNy45NzMgMzEuNDM1IDI3LjE5MkwyOS4wNTYgMjQuODEzQzI5Ljc3NSAyMy42NSAzMC4zMTQgMjIuMzY4IDMwLjYzOCAyMC45OTlMMzQgMjAuOTk5QzM1LjEwNCAyMC45OTkgMzYgMjAuMTAzIDM2IDE4Ljk5OUwzNiAxNi45OTlDMzYgMTUuODk2IDM1LjEwNCAxNSAzNCAxNVpNMTggMjZDMTMuNTgyIDI2IDEwIDIyLjQxOCAxMCAxOEMxMCAxMy41ODIgMTMuNTgyIDEwIDE4IDEwQzIyLjQxOCAxMCAyNiAxMy41ODIgMjYgMThDMjYgMjIuNDE4IDIyLjQxOCAyNiAxOCAyNloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCAxMjEpIiBmaWxsPSIjNjY3NTdGIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSIxMzIiIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoG15LWFwcC1zdGFnaW5nLnlhbWwmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE0NyIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTQ3IiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJ4pSCwqDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTQ3IiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUnOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzExIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEzNiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzExKSIgaWQ9ImNsXzEyIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEzNiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTIpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzQgMTVMMzAuNjM4IDE1QzMwLjMxNCAxMy42MzEgMjkuNzc0IDEyLjM0OSAyOS4wNTYgMTEuMTg2TDMxLjQzNSA4LjgwN0MzMi4yMTYgOC4wMjYgMzIuMjE2IDYuNzU5IDMxLjQzNSA1Ljk3OEwzMC4wMjEgNC41NjRDMjkuMjQgMy43ODMgMjcuOTc0IDMuNzgzIDI3LjE5MyA0LjU2NEwyNC44MTQgNi45NDNDMjMuNjUgNi4yMjUgMjIuMzY5IDUuNjg2IDIxIDUuMzYyTDIxIDJDMjEgMC44OTYgMjAuMTA0IDAgMTkgMEwxNyAwQzE1Ljg5NiAwIDE1IDAuODk2IDE1IDJMMTUgNS4zNjJDMTMuNjMxIDUuNjg2IDEyLjM0OSA2LjIyNiAxMS4xODYgNi45NDRMOC44MDggNC41NjVDOC4wMjcgMy43ODQgNi43NiAzLjc4NCA1Ljk4IDQuNTY1TDQuNTY1IDUuOTc5QzMuNzg0IDYuNzYgMy43ODQgOC4wMjcgNC41NjQgOC44MDhMNi45NDMgMTEuMTg3QzYuMjI1IDEyLjM1IDUuNjg2IDEzLjYzMiA1LjM2MiAxNUwyIDE1QzAuODk2IDE1IDAgMTUuODk2IDAgMTdMMCAxOUMwIDIwLjEwNCAwLjg5NiAyMSAyIDIxTDUuMzYyIDIxQzUuNjg2IDIyLjM2OCA2LjIyNiAyMy42NSA2Ljk0NCAyNC44MTNMNC41NjUgMjcuMTkyQzMuNzg1IDI3Ljk3MiAzLjc4NSAyOS4yNCA0LjU2NiAzMC4wMjFMNS45OCAzMS40MzVDNi43NiAzMi4yMTUgOC4wMjcgMzIuMjE1IDguODA4IDMxLjQzNUwxMS4xODcgMjkuMDU2QzEyLjM1IDI5Ljc3NSAxMy42MzIgMzAuMzE0IDE1LjAwMSAzMC42MzhMMTUuMDAxIDM0QzE1LjAwMSAzNS4xMDQgMTUuODk3IDM2IDE3LjAwMSAzNkwxOS4wMDEgMzZDMjAuMTA1IDM2IDIxLjAwMSAzNS4xMDQgMjEuMDAxIDM0TDIxLjAwMSAzMC42MzhDMjIuMzY5IDMwLjMxNCAyMy42NTEgMjkuNzc0IDI0LjgxNCAyOS4wNTZMMjcuMTkzIDMxLjQzNUMyNy45NzQgMzIuMjE2IDI5LjI0IDMyLjIxNiAzMC4wMjEgMzEuNDM1TDMxLjQzNSAzMC4wMjFDMzIuMjE2IDI5LjI0IDMyLjIxNiAyNy45NzMgMzEuNDM1IDI3LjE5MkwyOS4wNTYgMjQuODEzQzI5Ljc3NSAyMy42NSAzMC4zMTQgMjIuMzY4IDMwLjYzOCAyMC45OTlMMzQgMjAuOTk5QzM1LjEwNCAyMC45OTkgMzYgMjAuMTAzIDM2IDE4Ljk5OUwzNiAxNi45OTlDMzYgMTUuODk2IDM1LjEwNCAxNSAzNCAxNVpNMTggMjZDMTMuNTgyIDI2IDEwIDIyLjQxOCAxMCAxOEMxMCAxMy41ODIgMTMuNTgyIDEwIDE4IDEwQzIyLjQxOCAxMCAyNiAxMy41ODIgMjYgMThDMjYgMjIuNDE4IDIyLjQxOCAyNiAxOCAyNloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCAxMzYpIiBmaWxsPSIjNjY3NTdGIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSIxNDciIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoG15LWFwcC1wcm9kdWN0aW9uLnlhbWwmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE2MiIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTYyIiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJ4pSCwqDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTYyIiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzEzIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE1MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzEzKSIgaWQ9ImNsXzE0Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE1MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTQpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzQgMTVMMzAuNjM4IDE1QzMwLjMxNCAxMy42MzEgMjkuNzc0IDEyLjM0OSAyOS4wNTYgMTEuMTg2TDMxLjQzNSA4LjgwN0MzMi4yMTYgOC4wMjYgMzIuMjE2IDYuNzU5IDMxLjQzNSA1Ljk3OEwzMC4wMjEgNC41NjRDMjkuMjQgMy43ODMgMjcuOTc0IDMuNzgzIDI3LjE5MyA0LjU2NEwyNC44MTQgNi45NDNDMjMuNjUgNi4yMjUgMjIuMzY5IDUuNjg2IDIxIDUuMzYyTDIxIDJDMjEgMC44OTYgMjAuMTA0IDAgMTkgMEwxNyAwQzE1Ljg5NiAwIDE1IDAuODk2IDE1IDJMMTUgNS4zNjJDMTMuNjMxIDUuNjg2IDEyLjM0OSA2LjIyNiAxMS4xODYgNi45NDRMOC44MDggNC41NjVDOC4wMjcgMy43ODQgNi43NiAzLjc4NCA1Ljk4IDQuNTY1TDQuNTY1IDUuOTc5QzMuNzg0IDYuNzYgMy43ODQgOC4wMjcgNC41NjQgOC44MDhMNi45NDMgMTEuMTg3QzYuMjI1IDEyLjM1IDUuNjg2IDEzLjYzMiA1LjM2MiAxNUwyIDE1QzAuODk2IDE1IDAgMTUuODk2IDAgMTdMMCAxOUMwIDIwLjEwNCAwLjg5NiAyMSAyIDIxTDUuMzYyIDIxQzUuNjg2IDIyLjM2OCA2LjIyNiAyMy42NSA2Ljk0NCAyNC44MTNMNC41NjUgMjcuMTkyQzMuNzg1IDI3Ljk3MiAzLjc4NSAyOS4yNCA0LjU2NiAzMC4wMjFMNS45OCAzMS40MzVDNi43NiAzMi4yMTUgOC4wMjcgMzIuMjE1IDguODA4IDMxLjQzNUwxMS4xODcgMjkuMDU2QzEyLjM1IDI5Ljc3NSAxMy42MzIgMzAuMzE0IDE1LjAwMSAzMC42MzhMMTUuMDAxIDM0QzE1LjAwMSAzNS4xMDQgMTUuODk3IDM2IDE3LjAwMSAzNkwxOS4wMDEgMzZDMjAuMTA1IDM2IDIxLjAwMSAzNS4xMDQgMjEuMDAxIDM0TDIxLjAwMSAzMC42MzhDMjIuMzY5IDMwLjMxNCAyMy42NTEgMjkuNzc0IDI0LjgxNCAyOS4wNTZMMjcuMTkzIDMxLjQzNUMyNy45NzQgMzIuMjE2IDI5LjI0IDMyLjIxNiAzMC4wMjEgMzEuNDM1TDMxLjQzNSAzMC4wMjFDMzIuMjE2IDI5LjI0IDMyLjIxNiAyNy45NzMgMzEuNDM1IDI3LjE5MkwyOS4wNTYgMjQuODEzQzI5Ljc3NSAyMy42NSAzMC4zMTQgMjIuMzY4IDMwLjYzOCAyMC45OTlMMzQgMjAuOTk5QzM1LjEwNCAyMC45OTkgMzYgMjAuMTAzIDM2IDE4Ljk5OUwzNiAxNi45OTlDMzYgMTUuODk2IDM1LjEwNCAxNSAzNCAxNVpNMTggMjZDMTMuNTgyIDI2IDEwIDIyLjQxOCAxMCAxOEMxMCAxMy41ODIgMTMuNTgyIDEwIDE4IDEwQzIyLjQxOCAxMCAyNiAxMy41ODIgMjYgMThDMjYgMjIuNDE4IDIyLjQxOCAyNiAxOCAyNloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCAxNTEpIiBmaWxsPSIjNjY3NTdGIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSIxNjIiIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoG1pc2MueWFtbCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTc3IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxNzciIHg9IjE1LjgyODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnilJTilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF8xNSI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIxNjYiIHg9IjQxIi8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF8xNSkiIGlkPSJjbF8xNiI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIxNjYiIHg9IjQxIi8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzE2KSI+JiN4YTsJCQkJPHBhdGggZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMTY2KSIgZmlsbD0iIzI2OSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzE2KSI+JiN4YTsJCQkJPHBhdGggZD0iTTMwIDEwTDIzLjQzOCAxMEMxOCAxMCAxOC41NjIgMTUgMTUgMTVMNiAxNUMzLjc5MSAxNSAyIDE2Ljc5MSAyIDE5TDIgMjlDMiAyOS41NTMgMS41NTIgMzAgMSAzMEMwLjQ0OCAzMCAwIDI5LjU1MyAwIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMzAgMzNDMzIuMjA5IDMzIDM0IDMxLjIwOSAzNCAyOUwzNCAxNEMzNCAxMS43OTEgMzIuMjA5IDEwIDMwIDEwWiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDQxIDE2NikiIGZpbGw9IiM1NUFDRUUiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjE3NyIgeD0iNTQuMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE3NyIgeD0iNjIuMDc4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMyM0EzREQiPiYjeGE7CQkJCW1pc2MmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE5MiIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoMKgwqDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTkyIiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzE3Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE4MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzE3KSIgaWQ9ImNsXzE4Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE4MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTgpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzQgMTVMMzAuNjM4IDE1QzMwLjMxNCAxMy42MzEgMjkuNzc0IDEyLjM0OSAyOS4wNTYgMTEuMTg2TDMxLjQzNSA4LjgwN0MzMi4yMTYgOC4wMjYgMzIuMjE2IDYuNzU5IDMxLjQzNSA1Ljk3OEwzMC4wMjEgNC41NjRDMjkuMjQgMy43ODMgMjcuOTc0IDMuNzgzIDI3LjE5MyA0LjU2NEwyNC44MTQgNi45NDNDMjMuNjUgNi4yMjUgMjIuMzY5IDUuNjg2IDIxIDUuMzYyTDIxIDJDMjEgMC44OTYgMjAuMTA0IDAgMTkgMEwxNyAwQzE1Ljg5NiAwIDE1IDAuODk2IDE1IDJMMTUgNS4zNjJDMTMuNjMxIDUuNjg2IDEyLjM0OSA2LjIyNiAxMS4xODYgNi45NDRMOC44MDggNC41NjVDOC4wMjcgMy43ODQgNi43NiAzLjc4NCA1Ljk4IDQuNTY1TDQuNTY1IDUuOTc5QzMuNzg0IDYuNzYgMy43ODQgOC4wMjcgNC41NjQgOC44MDhMNi45NDMgMTEuMTg3QzYuMjI1IDEyLjM1IDUuNjg2IDEzLjYzMiA1LjM2MiAxNUwyIDE1QzAuODk2IDE1IDAgMTUuODk2IDAgMTdMMCAxOUMwIDIwLjEwNCAwLjg5NiAyMSAyIDIxTDUuMzYyIDIxQzUuNjg2IDIyLjM2OCA2LjIyNiAyMy42NSA2Ljk0NCAyNC44MTNMNC41NjUgMjcuMTkyQzMuNzg1IDI3Ljk3MiAzLjc4NSAyOS4yNCA0LjU2NiAzMC4wMjFMNS45OCAzMS40MzVDNi43NiAzMi4yMTUgOC4wMjcgMzIuMjE1IDguODA4IDMxLjQzNUwxMS4xODcgMjkuMDU2QzEyLjM1IDI5Ljc3NSAxMy42MzIgMzAuMzE0IDE1LjAwMSAzMC42MzhMMTUuMDAxIDM0QzE1LjAwMSAzNS4xMDQgMTUuODk3IDM2IDE3LjAwMSAzNkwxOS4wMDEgMzZDMjAuMTA1IDM2IDIxLjAwMSAzNS4xMDQgMjEuMDAxIDM0TDIxLjAwMSAzMC42MzhDMjIuMzY5IDMwLjMxNCAyMy42NTEgMjkuNzc0IDI0LjgxNCAyOS4wNTZMMjcuMTkzIDMxLjQzNUMyNy45NzQgMzIuMjE2IDI5LjI0IDMyLjIxNiAzMC4wMjEgMzEuNDM1TDMxLjQzNSAzMC4wMjFDMzIuMjE2IDI5LjI0IDMyLjIxNiAyNy45NzMgMzEuNDM1IDI3LjE5MkwyOS4wNTYgMjQuODEzQzI5Ljc3NSAyMy42NSAzMC4zMTQgMjIuMzY4IDMwLjYzOCAyMC45OTlMMzQgMjAuOTk5QzM1LjEwNCAyMC45OTkgMzYgMjAuMTAzIDM2IDE4Ljk5OUwzNiAxNi45OTlDMzYgMTUuODk2IDM1LjEwNCAxNSAzNCAxNVpNMTggMjZDMTMuNTgyIDI2IDEwIDIyLjQxOCAxMCAxOEMxMCAxMy41ODIgMTMuNTgyIDEwIDE4IDEwQzIyLjQxOCAxMCAyNiAxMy41ODIgMjYgMThDMjYgMjIuNDE4IDIyLjQxOCAyNiAxOCAyNloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCAxODEpIiBmaWxsPSIjNjY3NTdGIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSIxOTIiIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQnCoG5ldHdvcmstcG9saWNpZXMueWFtbCYjeGE7CQkJPC90ZXh0PiYjeGE7CQk8L2c+JiN4YTsJPC9kZWZzPiYjeGE7CTx1c2UgaHJlZj0iI2dyb3VwXzAiLz4mI3hhOzwvc3ZnPg=="
     id="image11" /></a>
  <a href="http://scmm.localhost/scm/repo/argocd/argocd/code/sources/main/"> 
<image 
     x="2.5"
     y="90.5"
     width="300"
     height="300"
     xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjMwMCIgd2lkdGg9IjMwMCIgdmlld0JveD0iMCAwIDMwMCAzMDAiPiYjeGE7CTxkZWZzPiYjeGE7CQk8ZyBpZD0iZ3JvdXBfMCI+JiN4YTsJCQk8dGV4dCB5PSIyNi40Mzc1IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHBhdGggZD0iTTQzOS41NSAyMzYuMDVMMjQ0IDQwLjQ1UTI0My40OTkgMzkuOTQ5NCAyNDIuOTc0IDM5LjQ3MzlRMjQyLjQ0OSAzOC45OTg1IDI0MS45MDEgMzguNTQ5M1EyNDEuMzUzIDM4LjEwMDIgMjQwLjc4NCAzNy42Nzg1UTI0MC4yMTUgMzcuMjU2NyAyMzkuNjI2IDM2Ljg2MzRRMjM5LjAzNyAzNi40NzAxIDIzOC40MyAzNi4xMDYxUTIzNy44MjIgMzUuNzQyMiAyMzcuMTk3IDM1LjQwODVRMjM2LjU3MiAzNS4wNzQ3IDIzNS45MzIgMzQuNzcyMVEyMzUuMjkyIDM0LjQ2OTQgMjM0LjYzNyAzNC4xOTg1UTIzMy45ODMgMzMuOTI3NiAyMzMuMzE2IDMzLjY4OTFRMjMyLjY0OSAzMy40NTA2IDIzMS45NzEgMzMuMjQ1MVEyMzEuMjkzIDMzLjAzOTYgMjMwLjYwNiAzMi44Njc2UTIyOS45MTkgMzIuNjk1NSAyMjkuMjI0IDMyLjU1NzRRMjI4LjUyOSAzMi40MTkzIDIyNy44MjkgMzIuMzE1NVEyMjcuMTI4IDMyLjIxMTYgMjI2LjQyMyAzMi4xNDIyUTIyNS43MTggMzIuMDcyOCAyMjUuMDExIDMyLjAzODFRMjI0LjMwMyAzMi4wMDMzIDIyMy41OTUgMzIuMDAzM1EyMjIuODg3IDMyLjAwMzMgMjIyLjE3OSAzMi4wMzgxUTIyMS40NzIgMzIuMDcyOCAyMjAuNzY3IDMyLjE0MjJRMjIwLjA2MiAzMi4yMTE2IDIxOS4zNjEgMzIuMzE1NVEyMTguNjYxIDMyLjQxOTMgMjE3Ljk2NiAzMi41NTc0UTIxNy4yNzEgMzIuNjk1NSAyMTYuNTg0IDMyLjg2NzZRMjE1Ljg5NyAzMy4wMzk2IDIxNS4yMTkgMzMuMjQ1MVEyMTQuNTQxIDMzLjQ1MDYgMjEzLjg3NCAzMy42ODkxUTIxMy4yMDcgMzMuOTI3NSAyMTIuNTUzIDM0LjE5ODVRMjExLjg5OCAzNC40Njk0IDIxMS4yNTggMzQuNzcyUTIxMC42MTggMzUuMDc0NyAyMDkuOTkzIDM1LjQwODVRMjA5LjM2OCAzNS43NDIyIDIwOC43NjEgMzYuMTA2MVEyMDguMTUzIDM2LjQ3MDEgMjA3LjU2NCAzNi44NjM0UTIwNi45NzUgMzcuMjU2NyAyMDYuNDA2IDM3LjY3ODVRMjA1LjgzNyAzOC4xMDAyIDIwNS4yODkgMzguNTQ5M1EyMDQuNzQxIDM4Ljk5ODUgMjA0LjIxNiAzOS40NzM5UTIwMy42OTEgMzkuOTQ5NCAyMDMuMTkgNDAuNDVMMTYyLjUzIDgxLjA4TDIxNC4wNSAxMzIuNkMyNDEuMTEgMTIzLjQ2IDI2Ni43MyAxNDkuMzcgMjU3LjQ0IDE3Ni4yOEwzMDcuMSAyMjUuOTRDMzQxLjMzIDIxNC4xNCAzNjguMjggMjU2Ljk0IDM0Mi41NyAyODIuNjNDMzE2LjA4IDMwOS4xMiAyNzIuMzYgMjc5Ljc2IDI4Ni41NyAyNDUuMjlMMjQwLjIyIDE5OUwyNDAuMjIgMzIwLjg1QzI2NS41MiAzMzMuMzkgMjYyLjQ4IDM2Mi43IDI0OS4zIDM3NS44NVEyNDguNzA0IDM3Ni40NDYgMjQ4LjA3OSAzNzcuMDEyUTI0Ny40NTUgMzc3LjU3NyAyNDYuODAzIDM3OC4xMTJRMjQ2LjE1MiAzNzguNjQ2IDI0NS40NzUgMzc5LjE0OFEyNDQuNzk4IDM3OS42NSAyNDQuMDk3IDM4MC4xMThRMjQzLjM5NiAzODAuNTg2IDI0Mi42NzMgMzgxLjAxOVEyNDEuOTUxIDM4MS40NTIgMjQxLjIwNyAzODEuODQ5UTI0MC40NjQgMzgyLjI0NiAyMzkuNzAyIDM4Mi42MDZRMjM4Ljk0IDM4Mi45NjcgMjM4LjE2MiAzODMuMjg5UTIzNy4zODMgMzgzLjYxMSAyMzYuNTkgMzgzLjg5NVEyMzUuNzk2IDM4NC4xNzkgMjM0Ljk5IDM4NC40MjNRMjM0LjE4MyAzODQuNjY4IDIzMy4zNjYgMzg0Ljg3M1EyMzIuNTQ5IDM4NS4wNzcgMjMxLjcyMiAzODUuMjQyUTIzMC44OTYgMzg1LjQwNiAyMzAuMDYyIDM4NS41M1EyMjkuMjI4IDM4NS42NTMgMjI4LjM5IDM4NS43MzZRMjI3LjU1MSAzODUuODE4IDIyNi43MDkgMzg1Ljg2UTIyNS44NjggMzg1LjkwMSAyMjUuMDI1IDM4NS45MDFRMjI0LjE4MiAzODUuOTAxIDIyMy4zNDEgMzg1Ljg2UTIyMi40OTkgMzg1LjgxOCAyMjEuNjYgMzg1LjczNlEyMjAuODIyIDM4NS42NTMgMjE5Ljk4OCAzODUuNTNRMjE5LjE1NSAzODUuNDA2IDIxOC4zMjggMzg1LjI0MlEyMTcuNTAyIDM4NS4wNzcgMjE2LjY4NCAzODQuODczUTIxNS44NjcgMzg0LjY2OCAyMTUuMDYgMzg0LjQyM1EyMTQuMjU0IDM4NC4xNzkgMjEzLjQ2IDM4My44OTVRMjEyLjY2NyAzODMuNjExIDIxMS44ODggMzgzLjI4OVEyMTEuMTEgMzgyLjk2NyAyMTAuMzQ4IDM4Mi42MDZRMjA5LjU4NiAzODIuMjQ2IDIwOC44NDMgMzgxLjg0OVEyMDguMSAzODEuNDUyIDIwNy4zNzcgMzgxLjAxOVEyMDYuNjU0IDM4MC41ODYgMjA1Ljk1MyAzODAuMTE4UTIwNS4yNTIgMzc5LjY1IDIwNC41NzUgMzc5LjE0OFEyMDMuODk4IDM3OC42NDYgMjAzLjI0NyAzNzguMTEyUTIwMi41OTUgMzc3LjU3NyAyMDEuOTcxIDM3Ny4wMTJRMjAxLjM0NiAzNzYuNDQ2IDIwMC43NSAzNzUuODVDMTgzLjE4IDM1OC4yNSAxODkuNjggMzI4Ljk0IDIxMiAzMTkuODVMMjEyIDE5Ni44NUMxOTEuMiAxODguMzQgMTg3LjQgMTY2LjExIDE5My4zNiAxNTEuODVMMTQyLjU3IDEwMUw4LjQ1IDIzNS4xNFE3Ljk0OTE1IDIzNS42NDEgNy40NzM0OCAyMzYuMTY2UTYuOTk3ODEgMjM2LjY5MSA2LjU0ODQ3IDIzNy4yMzhRNi4wOTkxMyAyMzcuNzg2IDUuNjc3MTkgMjM4LjM1NVE1LjI1NTI2IDIzOC45MjQgNC44NjE3NSAyMzkuNTEzUTQuNDY4MjQgMjQwLjEwMiA0LjEwNDEgMjQwLjcxUTMuNzM5OTcgMjQxLjMxNyAzLjQwNjA4IDI0MS45NDJRMy4wNzIxOSAyNDIuNTY3IDIuNzY5MzUgMjQzLjIwN1EyLjQ2NjUyIDI0My44NDggMi4xOTU0NyAyNDQuNTAyUTEuOTI0NDIgMjQ1LjE1NyAxLjY4NTggMjQ1LjgyNFExLjQ0NzE4IDI0Ni40OTEgMS4yNDE1OCAyNDcuMTY4UTEuMDM1OTcgMjQ3Ljg0NiAwLjg2Mzg3MSAyNDguNTM0UTAuNjkxNzcgMjQ5LjIyMSAwLjU1MzU5IDI0OS45MTVRMC40MTU0MSAyNTAuNjEgMC4zMTE0ODIgMjUxLjMxMVEwLjIwNzU1NSAyNTIuMDEyIDAuMTM4MTMgMjUyLjcxN1EwLjA2ODcwNTkgMjUzLjQyMiAwLjAzMzk1MTkgMjU0LjEyOVEtMC4wMDA4MDIxODcgMjU0LjgzNyAtMC4wMDA4MDIxODcgMjU1LjU0NVEtMC4wMDA4MDIxODcgMjU2LjI1MyAwLjAzMzk1MTkgMjU2Ljk2MVEwLjA2ODcwNTkgMjU3LjY2OCAwLjEzODEzIDI1OC4zNzNRMC4yMDc1NTUgMjU5LjA3OCAwLjMxMTQ4MiAyNTkuNzc5UTAuNDE1NDEgMjYwLjQ4IDAuNTUzNTkgMjYxLjE3NVEwLjY5MTc3IDI2MS44NjkgMC44NjM4NzEgMjYyLjU1N1ExLjAzNTk3IDI2My4yNDQgMS4yNDE1OCAyNjMuOTIyUTEuNDQ3MTggMjY0LjU5OSAxLjY4NTggMjY1LjI2NlExLjkyNDQyIDI2NS45MzMgMi4xOTU0NyAyNjYuNTg4UTIuNDY2NTIgMjY3LjI0MiAyLjc2OTM1IDI2Ny44ODNRMy4wNzIxOSAyNjguNTIzIDMuNDA2MDggMjY5LjE0OFEzLjczOTk2IDI2OS43NzMgNC4xMDQxIDI3MC4zOFE0LjQ2ODI0IDI3MC45ODggNC44NjE3NSAyNzEuNTc3UTUuMjU1MjYgMjcyLjE2NiA1LjY3NzE5IDI3Mi43MzVRNi4wOTkxMyAyNzMuMzA0IDYuNTQ4NDcgMjczLjg1MlE2Ljk5NzgxIDI3NC4zOTkgNy40NzM0OCAyNzQuOTI0UTcuOTQ5MTUgMjc1LjQ0OSA4LjQ1IDI3NS45NUwyMDQuMDYgNDcxLjU1UTIwNC41NjEgNDcyLjA1MSAyMDUuMDg2IDQ3Mi41MjZRMjA1LjYxMSA0NzMuMDAxIDIwNi4xNTggNDczLjQ1UTIwNi43MDYgNDczLjkgMjA3LjI3NSA0NzQuMzIxUTIwNy44NDQgNDc0Ljc0MyAyMDguNDMyIDQ3NS4xMzZRMjA5LjAyMSA0NzUuNTMgMjA5LjYyOSA0NzUuODkzUTIxMC4yMzYgNDc2LjI1NyAyMTAuODYxIDQ3Ni41OTFRMjExLjQ4NiA0NzYuOTI1IDIxMi4xMjYgNDc3LjIyN1EyMTIuNzY2IDQ3Ny41MyAyMTMuNDIgNDc3LjgwMVEyMTQuMDc1IDQ3OC4wNzIgMjE0Ljc0MSA0NzguMzFRMjE1LjQwOCA0NzguNTQ5IDIxNi4wODYgNDc4Ljc1NFEyMTYuNzY0IDQ3OC45NiAyMTcuNDUxIDQ3OS4xMzJRMjE4LjEzOCA0NzkuMzA0IDIxOC44MzIgNDc5LjQ0MlEyMTkuNTI3IDQ3OS41OCAyMjAuMjI3IDQ3OS42ODRRMjIwLjkyOCA0NzkuNzg4IDIyMS42MzIgNDc5Ljg1N1EyMjIuMzM3IDQ3OS45MjYgMjIzLjA0NSA0NzkuOTYxUTIyMy43NTIgNDc5Ljk5NiAyMjQuNDYgNDc5Ljk5NlEyMjUuMTY4IDQ3OS45OTYgMjI1Ljg3NSA0NzkuOTYxUTIyNi41ODMgNDc5LjkyNiAyMjcuMjg4IDQ3OS44NTdRMjI3Ljk5MiA0NzkuNzg4IDIyOC42OTMgNDc5LjY4NFEyMjkuMzkzIDQ3OS41OCAyMzAuMDg4IDQ3OS40NDJRMjMwLjc4MiA0NzkuMzA0IDIzMS40NjkgNDc5LjEzMlEyMzIuMTU2IDQ3OC45NiAyMzIuODM0IDQ3OC43NTRRMjMzLjUxMiA0NzguNTQ5IDIzNC4xNzkgNDc4LjMxUTIzNC44NDUgNDc4LjA3MiAyMzUuNSA0NzcuODAxUTIzNi4xNTQgNDc3LjUzIDIzNi43OTQgNDc3LjIyN1EyMzcuNDM0IDQ3Ni45MjUgMjM4LjA1OSA0NzYuNTkxUTIzOC42ODQgNDc2LjI1NyAyMzkuMjkxIDQ3NS44OTNRMjM5Ljg5OSA0NzUuNTMgMjQwLjQ4NyA0NzUuMTM2UTI0MS4wNzYgNDc0Ljc0MyAyNDEuNjQ1IDQ3NC4zMjFRMjQyLjIxNCA0NzMuOSAyNDIuNzYyIDQ3My40NVEyNDMuMzA5IDQ3My4wMDEgMjQzLjgzNCA0NzIuNTI2UTI0NC4zNTkgNDcyLjA1MSAyNDQuODYgNDcxLjU1TDQzOS41NSAyNzYuODZRNDQwLjA1MSAyNzYuMzU5IDQ0MC41MjYgMjc1LjgzNFE0NDEuMDAyIDI3NS4zMDkgNDQxLjQ1MSAyNzQuNzYyUTQ0MS45MDEgMjc0LjIxNCA0NDIuMzIzIDI3My42NDVRNDQyLjc0NSAyNzMuMDc2IDQ0My4xMzggMjcyLjQ4N1E0NDMuNTMyIDI3MS44OTggNDQzLjg5NiAyNzEuMjlRNDQ0LjI2IDI3MC42ODMgNDQ0LjU5NCAyNzAuMDU4UTQ0NC45MjggMjY5LjQzMyA0NDUuMjMxIDI2OC43OTNRNDQ1LjUzNCAyNjguMTUyIDQ0NS44MDUgMjY3LjQ5OFE0NDYuMDc2IDI2Ni44NDMgNDQ2LjMxNCAyNjYuMTc2UTQ0Ni41NTMgMjY1LjUwOSA0NDYuNzU4IDI2NC44MzJRNDQ2Ljk2NCAyNjQuMTU0IDQ0Ny4xMzYgMjYzLjQ2N1E0NDcuMzA4IDI2Mi43NzkgNDQ3LjQ0NiAyNjIuMDg1UTQ0Ny41ODUgMjYxLjM5IDQ0Ny42ODkgMjYwLjY4OVE0NDcuNzkyIDI1OS45ODggNDQ3Ljg2MiAyNTkuMjgzUTQ0Ny45MzEgMjU4LjU3OCA0NDcuOTY2IDI1Ny44NzFRNDQ4LjAwMSAyNTcuMTYzIDQ0OC4wMDEgMjU2LjQ1NVE0NDguMDAxIDI1NS43NDcgNDQ3Ljk2NiAyNTUuMDM5UTQ0Ny45MzEgMjU0LjMzMiA0NDcuODYyIDI1My42MjdRNDQ3Ljc5MiAyNTIuOTIyIDQ0Ny42ODkgMjUyLjIyMVE0NDcuNTg1IDI1MS41MiA0NDcuNDQ2IDI1MC44MjVRNDQ3LjMwOCAyNTAuMTMxIDQ0Ny4xMzYgMjQ5LjQ0M1E0NDYuOTY0IDI0OC43NTYgNDQ2Ljc1OCAyNDguMDc4UTQ0Ni41NTMgMjQ3LjQwMSA0NDYuMzE0IDI0Ni43MzRRNDQ2LjA3NiAyNDYuMDY3IDQ0NS44MDUgMjQ1LjQxMlE0NDUuNTM0IDI0NC43NTggNDQ1LjIzMSAyNDQuMTE3UTQ0NC45MjggMjQzLjQ3NyA0NDQuNTk0IDI0Mi44NTJRNDQ0LjI2IDI0Mi4yMjcgNDQzLjg5NiAyNDEuNjJRNDQzLjUzMiAyNDEuMDEyIDQ0My4xMzggMjQwLjQyM1E0NDIuNzQ1IDIzOS44MzQgNDQyLjMyMyAyMzkuMjY1UTQ0MS45MDEgMjM4LjY5NiA0NDEuNDUxIDIzOC4xNDhRNDQxLjAwMiAyMzcuNjAxIDQ0MC41MjYgMjM3LjA3NlE0NDAuMDUxIDIzNi41NTEgNDM5LjU1IDIzNi4wNUw0MzkuNTUgMjM2LjA1WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4wMzM0ODIxIDAgMCAwLjAzMzE5MDMgMTYgMTMuMDAzMykiIGZpbGw9IiMyM0EzREQiLz4mI3hhOwkJCTx0ZXh0IHk9IjI2LjQzNzUiIHg9IjMwLjk4NDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjI2LjQzNzUiIHg9IjM4LjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJCWFyZ29jZCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNDIiIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI0MiIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilJzilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF8zIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjMxIiB4PSI0MSIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfMykiIGlkPSJjbF80Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjMxIiB4PSI0MSIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF80KSI+JiN4YTsJCQkJPHBhdGggZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMzEpIiBmaWxsPSIjMjY5Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfNCkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zMCAxMEwyMy40MzggMTBDMTggMTAgMTguNTYyIDE1IDE1IDE1TDYgMTVDMy43OTEgMTUgMiAxNi43OTEgMiAxOUwyIDI5QzIgMjkuNTUzIDEuNTUyIDMwIDEgMzBDMC40NDggMzAgMCAyOS41NTMgMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDMwIDMzQzMyLjIwOSAzMyAzNCAzMS4yMDkgMzQgMjlMMzQgMTRDMzQgMTEuNzkxIDMyLjIwOSAxMCAzMCAxMFoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA0MSAzMSkiIGZpbGw9IiM1NUFDRUUiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjQyIiB4PSI1NC4yNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjQyIiB4PSI2Mi4wNzgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJCWFwcGxpY2F0aW9ucyYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNTciIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI1NyIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI1NyIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfNSI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI0NiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzUpIiBpZD0iY2xfNiI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI0NiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfNikiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDQ2KSIgZmlsbD0iIzY2NzU3RiIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iNTciIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqBib290c3RyYXAueWFtbCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iNzIiIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI3MiIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI3MiIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfNyI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI2MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzcpIiBpZD0iY2xfOCI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSI2MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfOCkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDYxKSIgZmlsbD0iIzY2NzU3RiIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iNzIiIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqBjbHVzdGVyLXJlc291cmNlcy55YW1sJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSI4NyIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9Ijg3IiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilJzilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF85Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9Ijc2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfOSkiIGlkPSJjbF9hIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9Ijc2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF9hKSI+JiN4YTsJCQkJPHBhdGggZD0iTTM0IDE1TDMwLjYzOCAxNUMzMC4zMTQgMTMuNjMxIDI5Ljc3NCAxMi4zNDkgMjkuMDU2IDExLjE4NkwzMS40MzUgOC44MDdDMzIuMjE2IDguMDI2IDMyLjIxNiA2Ljc1OSAzMS40MzUgNS45NzhMMzAuMDIxIDQuNTY0QzI5LjI0IDMuNzgzIDI3Ljk3NCAzLjc4MyAyNy4xOTMgNC41NjRMMjQuODE0IDYuOTQzQzIzLjY1IDYuMjI1IDIyLjM2OSA1LjY4NiAyMSA1LjM2MkwyMSAyQzIxIDAuODk2IDIwLjEwNCAwIDE5IDBMMTcgMEMxNS44OTYgMCAxNSAwLjg5NiAxNSAyTDE1IDUuMzYyQzEzLjYzMSA1LjY4NiAxMi4zNDkgNi4yMjYgMTEuMTg2IDYuOTQ0TDguODA4IDQuNTY1QzguMDI3IDMuNzg0IDYuNzYgMy43ODQgNS45OCA0LjU2NUw0LjU2NSA1Ljk3OUMzLjc4NCA2Ljc2IDMuNzg0IDguMDI3IDQuNTY0IDguODA4TDYuOTQzIDExLjE4N0M2LjIyNSAxMi4zNSA1LjY4NiAxMy42MzIgNS4zNjIgMTVMMiAxNUMwLjg5NiAxNSAwIDE1Ljg5NiAwIDE3TDAgMTlDMCAyMC4xMDQgMC44OTYgMjEgMiAyMUw1LjM2MiAyMUM1LjY4NiAyMi4zNjggNi4yMjYgMjMuNjUgNi45NDQgMjQuODEzTDQuNTY1IDI3LjE5MkMzLjc4NSAyNy45NzIgMy43ODUgMjkuMjQgNC41NjYgMzAuMDIxTDUuOTggMzEuNDM1QzYuNzYgMzIuMjE1IDguMDI3IDMyLjIxNSA4LjgwOCAzMS40MzVMMTEuMTg3IDI5LjA1NkMxMi4zNSAyOS43NzUgMTMuNjMyIDMwLjMxNCAxNS4wMDEgMzAuNjM4TDE1LjAwMSAzNEMxNS4wMDEgMzUuMTA0IDE1Ljg5NyAzNiAxNy4wMDEgMzZMMTkuMDAxIDM2QzIwLjEwNSAzNiAyMS4wMDEgMzUuMTA0IDIxLjAwMSAzNEwyMS4wMDEgMzAuNjM4QzIyLjM2OSAzMC4zMTQgMjMuNjUxIDI5Ljc3NCAyNC44MTQgMjkuMDU2TDI3LjE5MyAzMS40MzVDMjcuOTc0IDMyLjIxNiAyOS4yNCAzMi4yMTYgMzAuMDIxIDMxLjQzNUwzMS40MzUgMzAuMDIxQzMyLjIxNiAyOS4yNCAzMi4yMTYgMjcuOTczIDMxLjQzNSAyNy4xOTJMMjkuMDU2IDI0LjgxM0MyOS43NzUgMjMuNjUgMzAuMzE0IDIyLjM2OCAzMC42MzggMjAuOTk5TDM0IDIwLjk5OUMzNS4xMDQgMjAuOTk5IDM2IDIwLjEwMyAzNiAxOC45OTlMMzYgMTYuOTk5QzM2IDE1Ljg5NiAzNS4xMDQgMTUgMzQgMTVaTTE4IDI2QzEzLjU4MiAyNiAxMCAyMi40MTggMTAgMThDMTAgMTMuNTgyIDEzLjU4MiAxMCAxOCAxMEMyMi40MTggMTAgMjYgMTMuNTgyIDI2IDE4QzI2IDIyLjQxOCAyMi40MTggMjYgMTggMjZaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNjQgNzYpIiBmaWxsPSIjNjY3NTdGIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSI4NyIgeD0iNzcuNzM0Mzc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoGV4YW1wbGUtdGVuYW50LnlhbWwmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjEwMiIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjEwMiIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMDIiIHg9IjM5LjMxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsX2IiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iOTEiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF9iKSIgaWQ9ImNsX2MiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iOTEiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsX2MpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzQgMTVMMzAuNjM4IDE1QzMwLjMxNCAxMy42MzEgMjkuNzc0IDEyLjM0OSAyOS4wNTYgMTEuMTg2TDMxLjQzNSA4LjgwN0MzMi4yMTYgOC4wMjYgMzIuMjE2IDYuNzU5IDMxLjQzNSA1Ljk3OEwzMC4wMjEgNC41NjRDMjkuMjQgMy43ODMgMjcuOTc0IDMuNzgzIDI3LjE5MyA0LjU2NEwyNC44MTQgNi45NDNDMjMuNjUgNi4yMjUgMjIuMzY5IDUuNjg2IDIxIDUuMzYyTDIxIDJDMjEgMC44OTYgMjAuMTA0IDAgMTkgMEwxNyAwQzE1Ljg5NiAwIDE1IDAuODk2IDE1IDJMMTUgNS4zNjJDMTMuNjMxIDUuNjg2IDEyLjM0OSA2LjIyNiAxMS4xODYgNi45NDRMOC44MDggNC41NjVDOC4wMjcgMy43ODQgNi43NiAzLjc4NCA1Ljk4IDQuNTY1TDQuNTY1IDUuOTc5QzMuNzg0IDYuNzYgMy43ODQgOC4wMjcgNC41NjQgOC44MDhMNi45NDMgMTEuMTg3QzYuMjI1IDEyLjM1IDUuNjg2IDEzLjYzMiA1LjM2MiAxNUwyIDE1QzAuODk2IDE1IDAgMTUuODk2IDAgMTdMMCAxOUMwIDIwLjEwNCAwLjg5NiAyMSAyIDIxTDUuMzYyIDIxQzUuNjg2IDIyLjM2OCA2LjIyNiAyMy42NSA2Ljk0NCAyNC44MTNMNC41NjUgMjcuMTkyQzMuNzg1IDI3Ljk3MiAzLjc4NSAyOS4yNCA0LjU2NiAzMC4wMjFMNS45OCAzMS40MzVDNi43NiAzMi4yMTUgOC4wMjcgMzIuMjE1IDguODA4IDMxLjQzNUwxMS4xODcgMjkuMDU2QzEyLjM1IDI5Ljc3NSAxMy42MzIgMzAuMzE0IDE1LjAwMSAzMC42MzhMMTUuMDAxIDM0QzE1LjAwMSAzNS4xMDQgMTUuODk3IDM2IDE3LjAwMSAzNkwxOS4wMDEgMzZDMjAuMTA1IDM2IDIxLjAwMSAzNS4xMDQgMjEuMDAxIDM0TDIxLjAwMSAzMC42MzhDMjIuMzY5IDMwLjMxNCAyMy42NTEgMjkuNzc0IDI0LjgxNCAyOS4wNTZMMjcuMTkzIDMxLjQzNUMyNy45NzQgMzIuMjE2IDI5LjI0IDMyLjIxNiAzMC4wMjEgMzEuNDM1TDMxLjQzNSAzMC4wMjFDMzIuMjE2IDI5LjI0IDMyLjIxNiAyNy45NzMgMzEuNDM1IDI3LjE5MkwyOS4wNTYgMjQuODEzQzI5Ljc3NSAyMy42NSAzMC4zMTQgMjIuMzY4IDMwLjYzOCAyMC45OTlMMzQgMjAuOTk5QzM1LjEwNCAyMC45OTkgMzYgMjAuMTAzIDM2IDE4Ljk5OUwzNiAxNi45OTlDMzYgMTUuODk2IDM1LjEwNCAxNSAzNCAxNVpNMTggMjZDMTMuNTgyIDI2IDEwIDIyLjQxOCAxMCAxOEMxMCAxMy41ODIgMTMuNTgyIDEwIDE4IDEwQzIyLjQxOCAxMCAyNiAxMy41ODIgMjYgMThDMjYgMjIuNDE4IDIyLjQxOCAyNiAxOCAyNloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCA5MSkiIGZpbGw9IiM2Njc1N0YiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjEwMiIgeD0iNzcuNzM0Mzc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoHByb2plY3RzLnlhbWwmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjExNyIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjExNyIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMTciIHg9IjM5LjMxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUnOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsX2QiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMTA2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfZCkiIGlkPSJjbF9lIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEwNiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfZSkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDEwNikiIGZpbGw9IiM2Njc1N0YiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjExNyIgeD0iNzcuNzM0Mzc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoGFyZ29jZC55YW1sJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMzIiIHg9IjgiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxMzIiIHg9IjE1LjgyODEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfZiI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIxMjEiIHg9IjQxIi8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF9mKSIgaWQ9ImNsXzEwIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEyMSIgeD0iNDEiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTApIj4mI3hhOwkJCQk8cGF0aCBkPSJNMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDI4IDMzQzMwLjIwOSAzMyAzMiAzMS4yMDkgMzIgMjlMMzIgMTJDMzIgOS43OTEgMzAuMjA5IDggMjggOEwxOSA4QzE1LjQzOCA4IDE2IDMgMTAuNTYyIDNMNCAzQzEuNzkxIDMgMCA0Ljc5MSAwIDdMMCAyOVoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA0MSAxMjEpIiBmaWxsPSIjMjY5Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTApIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzAgMTBMMjMuNDM4IDEwQzE4IDEwIDE4LjU2MiAxNSAxNSAxNUw2IDE1QzMuNzkxIDE1IDIgMTYuNzkxIDIgMTlMMiAyOUMyIDI5LjU1MyAxLjU1MiAzMCAxIDMwQzAuNDQ4IDMwIDAgMjkuNTUzIDAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wzMCAzM0MzMi4yMDkgMzMgMzQgMzEuMjA5IDM0IDI5TDM0IDE0QzM0IDExLjc5MSAzMi4yMDkgMTAgMzAgMTBaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMTIxKSIgZmlsbD0iIzU1QUNFRSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iMTMyIiB4PSI1NC4yNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjEzMiIgeD0iNjIuMDc4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMyM0EzREQiPiYjeGE7CQkJCQlhcmdvY2QmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE0NyIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE0NyIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxNDciIHg9IjM5LjMxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUnOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzExIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEzNiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzExKSIgaWQ9ImNsXzEyIj4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjEzNiIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTIpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDI4IDMzQzMwLjIwOSAzMyAzMiAzMS4yMDkgMzIgMjlMMzIgMTJDMzIgOS43OTEgMzAuMjA5IDggMjggOEwxOSA4QzE1LjQzOCA4IDE2IDMgMTAuNTYyIDNMNCAzQzEuNzkxIDMgMCA0Ljc5MSAwIDdMMCAyOVoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCAxMzYpIiBmaWxsPSIjMjY5Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTIpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzAgMTBMMjMuNDM4IDEwQzE4IDEwIDE4LjU2MiAxNSAxNSAxNUw2IDE1QzMuNzkxIDE1IDIgMTYuNzkxIDIgMTlMMiAyOUMyIDI5LjU1MyAxLjU1MiAzMCAxIDMwQzAuNDQ4IDMwIDAgMjkuNTUzIDAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wzMCAzM0MzMi4yMDkgMzMgMzQgMzEuMjA5IDM0IDI5TDM0IDE0QzM0IDExLjc5MSAzMi4yMDkgMTAgMzAgMTBaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNjQgMTM2KSIgZmlsbD0iIzU1QUNFRSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iMTQ3IiB4PSI3Ny43MzQzNzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxNDciIHg9Ijg1LjU2MjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC13ZWlnaHQ9IjYwMCIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzIzQTNERCI+JiN4YTsJCQkJCXRlbXBsYXRlcyYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTYyIiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTYyIiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE2MiIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxwYXRoIGQ9Ik00MDAgMjU2TDE1MiAyNTZMMTUyIDE1Mi45QzE1MiAxMTMuMyAxODMuNyA4MC40IDIyMy4zIDgwQzI2My4zIDc5LjYgMjk2IDExMi4xIDI5NiAxNTJMMjk2IDE2OEMyOTYgMTgxLjMgMzA2LjcgMTkyIDMyMCAxOTJMMzUyIDE5MkMzNjUuMyAxOTIgMzc2IDE4MS4zIDM3NiAxNjhMMzc2IDE1MkMzNzYgNjggMzA3LjUgLTAuMyAyMjMuNSAwQzEzOS41IDAuMyA3MiA2OS41IDcyIDE1My41TDcyIDI1Nkw0OCAyNTZDMjEuNSAyNTYgMCAyNzcuNSAwIDMwNEwwIDQ2NEMwIDQ5MC41IDIxLjUgNTEyIDQ4IDUxMkw0MDAgNTEyQzQyNi41IDUxMiA0NDggNDkwLjUgNDQ4IDQ2NEw0NDggMzA0QzQ0OCAyNzcuNSA0MjYuNSAyNTYgNDAwIDI1NloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMDI0NTUzNiAwIDAgMC4wMjUzOTA2IDYzIDE1MSkiIGZpbGw9InNpbHZlciIvPiYjeGE7CQkJPHRleHQgeT0iMTYyIiB4PSI3NC4xNzE4NzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgQ2hhcnQubG9jayYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTc3IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMTc3IiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUgsKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE3NyIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfMTMiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMTY2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfMTMpIiBpZD0iY2xfMTQiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMTY2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF8xNCkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDE2NikiIGZpbGw9IiM2Njc1N0YiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjE3NyIgeD0iNzcuNzM0Mzc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoENoYXJ0LnlhbWwmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE5MiIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjE5MiIgeD0iMTUuODI4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilILCoMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8dGV4dCB5PSIxOTIiIHg9IjM5LjMxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzE1Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE4MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzE1KSIgaWQ9ImNsXzE2Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE4MSIgeD0iNjQiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTYpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzQgMTVMMzAuNjM4IDE1QzMwLjMxNCAxMy42MzEgMjkuNzc0IDEyLjM0OSAyOS4wNTYgMTEuMTg2TDMxLjQzNSA4LjgwN0MzMi4yMTYgOC4wMjYgMzIuMjE2IDYuNzU5IDMxLjQzNSA1Ljk3OEwzMC4wMjEgNC41NjRDMjkuMjQgMy43ODMgMjcuOTc0IDMuNzgzIDI3LjE5MyA0LjU2NEwyNC44MTQgNi45NDNDMjMuNjUgNi4yMjUgMjIuMzY5IDUuNjg2IDIxIDUuMzYyTDIxIDJDMjEgMC44OTYgMjAuMTA0IDAgMTkgMEwxNyAwQzE1Ljg5NiAwIDE1IDAuODk2IDE1IDJMMTUgNS4zNjJDMTMuNjMxIDUuNjg2IDEyLjM0OSA2LjIyNiAxMS4xODYgNi45NDRMOC44MDggNC41NjVDOC4wMjcgMy43ODQgNi43NiAzLjc4NCA1Ljk4IDQuNTY1TDQuNTY1IDUuOTc5QzMuNzg0IDYuNzYgMy43ODQgOC4wMjcgNC41NjQgOC44MDhMNi45NDMgMTEuMTg3QzYuMjI1IDEyLjM1IDUuNjg2IDEzLjYzMiA1LjM2MiAxNUwyIDE1QzAuODk2IDE1IDAgMTUuODk2IDAgMTdMMCAxOUMwIDIwLjEwNCAwLjg5NiAyMSAyIDIxTDUuMzYyIDIxQzUuNjg2IDIyLjM2OCA2LjIyNiAyMy42NSA2Ljk0NCAyNC44MTNMNC41NjUgMjcuMTkyQzMuNzg1IDI3Ljk3MiAzLjc4NSAyOS4yNCA0LjU2NiAzMC4wMjFMNS45OCAzMS40MzVDNi43NiAzMi4yMTUgOC4wMjcgMzIuMjE1IDguODA4IDMxLjQzNUwxMS4xODcgMjkuMDU2QzEyLjM1IDI5Ljc3NSAxMy42MzIgMzAuMzE0IDE1LjAwMSAzMC42MzhMMTUuMDAxIDM0QzE1LjAwMSAzNS4xMDQgMTUuODk3IDM2IDE3LjAwMSAzNkwxOS4wMDEgMzZDMjAuMTA1IDM2IDIxLjAwMSAzNS4xMDQgMjEuMDAxIDM0TDIxLjAwMSAzMC42MzhDMjIuMzY5IDMwLjMxNCAyMy42NTEgMjkuNzc0IDI0LjgxNCAyOS4wNTZMMjcuMTkzIDMxLjQzNUMyNy45NzQgMzIuMjE2IDI5LjI0IDMyLjIxNiAzMC4wMjEgMzEuNDM1TDMxLjQzNSAzMC4wMjFDMzIuMjE2IDI5LjI0IDMyLjIxNiAyNy45NzMgMzEuNDM1IDI3LjE5MkwyOS4wNTYgMjQuODEzQzI5Ljc3NSAyMy42NSAzMC4zMTQgMjIuMzY4IDMwLjYzOCAyMC45OTlMMzQgMjAuOTk5QzM1LjEwNCAyMC45OTkgMzYgMjAuMTAzIDM2IDE4Ljk5OUwzNiAxNi45OTlDMzYgMTUuODk2IDM1LjEwNCAxNSAzNCAxNVpNMTggMjZDMTMuNTgyIDI2IDEwIDIyLjQxOCAxMCAxOEMxMCAxMy41ODIgMTMuNTgyIDEwIDE4IDEwQzIyLjQxOCAxMCAyNiAxMy41ODIgMjYgMThDMjYgMjIuNDE4IDIyLjQxOCAyNiAxOCAyNloiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA2NCAxODEpIiBmaWxsPSIjNjY3NTdGIi8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8dGV4dCB5PSIxOTIiIHg9Ijc3LjczNDM3NSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqB2YWx1ZXMueWFtbCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMjA3IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMjA3IiB4PSIxNS44MjgxMjUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCeKUlOKUgMKgJiN4YTsJCQk8L3RleHQ+JiN4YTsJCQk8Y2xpcFBhdGggaWQ9ImNsXzE3Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE5NiIgeD0iNDEiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8Y2xpcFBhdGggY2xpcC1wYXRoPSJ1cmwoI2NsXzE3KSIgaWQ9ImNsXzE4Ij4mI3hhOwkJCQk8cmVjdCBoZWlnaHQ9IjEzIiB3aWR0aD0iMTMiIHk9IjE5NiIgeD0iNDEiLz4mI3hhOwkJCTwvY2xpcFBhdGg+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTgpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDI4IDMzQzMwLjIwOSAzMyAzMiAzMS4yMDkgMzIgMjlMMzIgMTJDMzIgOS43OTEgMzAuMjA5IDggMjggOEwxOSA4QzE1LjQzOCA4IDE2IDMgMTAuNTYyIDNMNCAzQzEuNzkxIDMgMCA0Ljc5MSAwIDdMMCAyOVoiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA0MSAxOTYpIiBmaWxsPSIjMjY5Ii8+JiN4YTsJCQk8L2c+JiN4YTsJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfMTgpIj4mI3hhOwkJCQk8cGF0aCBkPSJNMzAgMTBMMjMuNDM4IDEwQzE4IDEwIDE4LjU2MiAxNSAxNSAxNUw2IDE1QzMuNzkxIDE1IDIgMTYuNzkxIDIgMTlMMiAyOUMyIDI5LjU1MyAxLjU1MiAzMCAxIDMwQzAuNDQ4IDMwIDAgMjkuNTUzIDAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wzMCAzM0MzMi4yMDkgMzMgMzQgMzEuMjA5IDM0IDI5TDM0IDE0QzM0IDExLjc5MSAzMi4yMDkgMTAgMzAgMTBaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMTk2KSIgZmlsbD0iIzU1QUNFRSIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iMjA3IiB4PSI1NC4yNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjIwNyIgeD0iNjIuMDc4MTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiMyM0EzREQiPiYjeGE7CQkJCQlwcm9qZWN0cyYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMjIyIiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoMKgwqDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMjIyIiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilJzilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF8xOSI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIyMTEiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF8xOSkiIGlkPSJjbF8xYSI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIyMTEiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzFhKSI+JiN4YTsJCQkJPHBhdGggZD0iTTM0IDE1TDMwLjYzOCAxNUMzMC4zMTQgMTMuNjMxIDI5Ljc3NCAxMi4zNDkgMjkuMDU2IDExLjE4NkwzMS40MzUgOC44MDdDMzIuMjE2IDguMDI2IDMyLjIxNiA2Ljc1OSAzMS40MzUgNS45NzhMMzAuMDIxIDQuNTY0QzI5LjI0IDMuNzgzIDI3Ljk3NCAzLjc4MyAyNy4xOTMgNC41NjRMMjQuODE0IDYuOTQzQzIzLjY1IDYuMjI1IDIyLjM2OSA1LjY4NiAyMSA1LjM2MkwyMSAyQzIxIDAuODk2IDIwLjEwNCAwIDE5IDBMMTcgMEMxNS44OTYgMCAxNSAwLjg5NiAxNSAyTDE1IDUuMzYyQzEzLjYzMSA1LjY4NiAxMi4zNDkgNi4yMjYgMTEuMTg2IDYuOTQ0TDguODA4IDQuNTY1QzguMDI3IDMuNzg0IDYuNzYgMy43ODQgNS45OCA0LjU2NUw0LjU2NSA1Ljk3OUMzLjc4NCA2Ljc2IDMuNzg0IDguMDI3IDQuNTY0IDguODA4TDYuOTQzIDExLjE4N0M2LjIyNSAxMi4zNSA1LjY4NiAxMy42MzIgNS4zNjIgMTVMMiAxNUMwLjg5NiAxNSAwIDE1Ljg5NiAwIDE3TDAgMTlDMCAyMC4xMDQgMC44OTYgMjEgMiAyMUw1LjM2MiAyMUM1LjY4NiAyMi4zNjggNi4yMjYgMjMuNjUgNi45NDQgMjQuODEzTDQuNTY1IDI3LjE5MkMzLjc4NSAyNy45NzIgMy43ODUgMjkuMjQgNC41NjYgMzAuMDIxTDUuOTggMzEuNDM1QzYuNzYgMzIuMjE1IDguMDI3IDMyLjIxNSA4LjgwOCAzMS40MzVMMTEuMTg3IDI5LjA1NkMxMi4zNSAyOS43NzUgMTMuNjMyIDMwLjMxNCAxNS4wMDEgMzAuNjM4TDE1LjAwMSAzNEMxNS4wMDEgMzUuMTA0IDE1Ljg5NyAzNiAxNy4wMDEgMzZMMTkuMDAxIDM2QzIwLjEwNSAzNiAyMS4wMDEgMzUuMTA0IDIxLjAwMSAzNEwyMS4wMDEgMzAuNjM4QzIyLjM2OSAzMC4zMTQgMjMuNjUxIDI5Ljc3NCAyNC44MTQgMjkuMDU2TDI3LjE5MyAzMS40MzVDMjcuOTc0IDMyLjIxNiAyOS4yNCAzMi4yMTYgMzAuMDIxIDMxLjQzNUwzMS40MzUgMzAuMDIxQzMyLjIxNiAyOS4yNCAzMi4yMTYgMjcuOTczIDMxLjQzNSAyNy4xOTJMMjkuMDU2IDI0LjgxM0MyOS43NzUgMjMuNjUgMzAuMzE0IDIyLjM2OCAzMC42MzggMjAuOTk5TDM0IDIwLjk5OUMzNS4xMDQgMjAuOTk5IDM2IDIwLjEwMyAzNiAxOC45OTlMMzYgMTYuOTk5QzM2IDE1Ljg5NiAzNS4xMDQgMTUgMzQgMTVaTTE4IDI2QzEzLjU4MiAyNiAxMCAyMi40MTggMTAgMThDMTAgMTMuNTgyIDEzLjU4MiAxMCAxOCAxMEMyMi40MTggMTAgMjYgMTMuNTgyIDI2IDE4QzI2IDIyLjQxOCAyMi40MTggMjYgMTggMjZaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNjQgMjExKSIgZmlsbD0iIzY2NzU3RiIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iMjIyIiB4PSI3Ny43MzQzNzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgYXJnb2NkLnlhbWwmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjIzNyIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqDCoMKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjIzNyIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfMWIiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMjI2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfMWIpIiBpZD0iY2xfMWMiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMjI2IiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF8xYykiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDIyNikiIGZpbGw9IiM2Njc1N0YiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjIzNyIgeD0iNzcuNzM0Mzc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoGNsdXN0ZXItcmVzb3VyY2VzLnlhbWwmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjI1MiIgeD0iOCIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJwqDCoMKgwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTx0ZXh0IHk9IjI1MiIgeD0iMzkuMzEyNSIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiBmb250LXNpemU9IjEzIiBmaWxsPSIjNzc3Ij4mI3hhOwkJCQkJ4pSc4pSAwqAmI3hhOwkJCTwvdGV4dD4mI3hhOwkJCTxjbGlwUGF0aCBpZD0iY2xfMWQiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMjQxIiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxjbGlwUGF0aCBjbGlwLXBhdGg9InVybCgjY2xfMWQpIiBpZD0iY2xfMWUiPiYjeGE7CQkJCTxyZWN0IGhlaWdodD0iMTMiIHdpZHRoPSIxMyIgeT0iMjQxIiB4PSI2NCIvPiYjeGE7CQkJPC9jbGlwUGF0aD4mI3hhOwkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF8xZSkiPiYjeGE7CQkJCTxwYXRoIGQ9Ik0zNCAxNUwzMC42MzggMTVDMzAuMzE0IDEzLjYzMSAyOS43NzQgMTIuMzQ5IDI5LjA1NiAxMS4xODZMMzEuNDM1IDguODA3QzMyLjIxNiA4LjAyNiAzMi4yMTYgNi43NTkgMzEuNDM1IDUuOTc4TDMwLjAyMSA0LjU2NEMyOS4yNCAzLjc4MyAyNy45NzQgMy43ODMgMjcuMTkzIDQuNTY0TDI0LjgxNCA2Ljk0M0MyMy42NSA2LjIyNSAyMi4zNjkgNS42ODYgMjEgNS4zNjJMMjEgMkMyMSAwLjg5NiAyMC4xMDQgMCAxOSAwTDE3IDBDMTUuODk2IDAgMTUgMC44OTYgMTUgMkwxNSA1LjM2MkMxMy42MzEgNS42ODYgMTIuMzQ5IDYuMjI2IDExLjE4NiA2Ljk0NEw4LjgwOCA0LjU2NUM4LjAyNyAzLjc4NCA2Ljc2IDMuNzg0IDUuOTggNC41NjVMNC41NjUgNS45NzlDMy43ODQgNi43NiAzLjc4NCA4LjAyNyA0LjU2NCA4LjgwOEw2Ljk0MyAxMS4xODdDNi4yMjUgMTIuMzUgNS42ODYgMTMuNjMyIDUuMzYyIDE1TDIgMTVDMC44OTYgMTUgMCAxNS44OTYgMCAxN0wwIDE5QzAgMjAuMTA0IDAuODk2IDIxIDIgMjFMNS4zNjIgMjFDNS42ODYgMjIuMzY4IDYuMjI2IDIzLjY1IDYuOTQ0IDI0LjgxM0w0LjU2NSAyNy4xOTJDMy43ODUgMjcuOTcyIDMuNzg1IDI5LjI0IDQuNTY2IDMwLjAyMUw1Ljk4IDMxLjQzNUM2Ljc2IDMyLjIxNSA4LjAyNyAzMi4yMTUgOC44MDggMzEuNDM1TDExLjE4NyAyOS4wNTZDMTIuMzUgMjkuNzc1IDEzLjYzMiAzMC4zMTQgMTUuMDAxIDMwLjYzOEwxNS4wMDEgMzRDMTUuMDAxIDM1LjEwNCAxNS44OTcgMzYgMTcuMDAxIDM2TDE5LjAwMSAzNkMyMC4xMDUgMzYgMjEuMDAxIDM1LjEwNCAyMS4wMDEgMzRMMjEuMDAxIDMwLjYzOEMyMi4zNjkgMzAuMzE0IDIzLjY1MSAyOS43NzQgMjQuODE0IDI5LjA1NkwyNy4xOTMgMzEuNDM1QzI3Ljk3NCAzMi4yMTYgMjkuMjQgMzIuMjE2IDMwLjAyMSAzMS40MzVMMzEuNDM1IDMwLjAyMUMzMi4yMTYgMjkuMjQgMzIuMjE2IDI3Ljk3MyAzMS40MzUgMjcuMTkyTDI5LjA1NiAyNC44MTNDMjkuNzc1IDIzLjY1IDMwLjMxNCAyMi4zNjggMzAuNjM4IDIwLjk5OUwzNCAyMC45OTlDMzUuMTA0IDIwLjk5OSAzNiAyMC4xMDMgMzYgMTguOTk5TDM2IDE2Ljk5OUMzNiAxNS44OTYgMzUuMTA0IDE1IDM0IDE1Wk0xOCAyNkMxMy41ODIgMjYgMTAgMjIuNDE4IDEwIDE4QzEwIDEzLjU4MiAxMy41ODIgMTAgMTggMTBDMjIuNDE4IDEwIDI2IDEzLjU4MiAyNiAxOEMyNiAyMi40MTggMjIuNDE4IDI2IDE4IDI2WiIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDY0IDI0MSkiIGZpbGw9IiM2Njc1N0YiLz4mI3hhOwkJCTwvZz4mI3hhOwkJCTx0ZXh0IHk9IjI1MiIgeD0iNzcuNzM0Mzc1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoGRlZmF1bHQueWFtbCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMjY3IiB4PSI4IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnCoMKgwqDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPHRleHQgeT0iMjY3IiB4PSIzOS4zMTI1IiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIGZvbnQtc2l6ZT0iMTMiIGZpbGw9IiM3NzciPiYjeGE7CQkJCQnilJTilIDCoCYjeGE7CQkJPC90ZXh0PiYjeGE7CQkJPGNsaXBQYXRoIGlkPSJjbF8xZiI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIyNTYiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGNsaXBQYXRoIGNsaXAtcGF0aD0idXJsKCNjbF8xZikiIGlkPSJjbF8yMCI+JiN4YTsJCQkJPHJlY3QgaGVpZ2h0PSIxMyIgd2lkdGg9IjEzIiB5PSIyNTYiIHg9IjY0Ii8+JiN4YTsJCQk8L2NsaXBQYXRoPiYjeGE7CQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzIwKSI+JiN4YTsJCQkJPHBhdGggZD0iTTM0IDE1TDMwLjYzOCAxNUMzMC4zMTQgMTMuNjMxIDI5Ljc3NCAxMi4zNDkgMjkuMDU2IDExLjE4NkwzMS40MzUgOC44MDdDMzIuMjE2IDguMDI2IDMyLjIxNiA2Ljc1OSAzMS40MzUgNS45NzhMMzAuMDIxIDQuNTY0QzI5LjI0IDMuNzgzIDI3Ljk3NCAzLjc4MyAyNy4xOTMgNC41NjRMMjQuODE0IDYuOTQzQzIzLjY1IDYuMjI1IDIyLjM2OSA1LjY4NiAyMSA1LjM2MkwyMSAyQzIxIDAuODk2IDIwLjEwNCAwIDE5IDBMMTcgMEMxNS44OTYgMCAxNSAwLjg5NiAxNSAyTDE1IDUuMzYyQzEzLjYzMSA1LjY4NiAxMi4zNDkgNi4yMjYgMTEuMTg2IDYuOTQ0TDguODA4IDQuNTY1QzguMDI3IDMuNzg0IDYuNzYgMy43ODQgNS45OCA0LjU2NUw0LjU2NSA1Ljk3OUMzLjc4NCA2Ljc2IDMuNzg0IDguMDI3IDQuNTY0IDguODA4TDYuOTQzIDExLjE4N0M2LjIyNSAxMi4zNSA1LjY4NiAxMy42MzIgNS4zNjIgMTVMMiAxNUMwLjg5NiAxNSAwIDE1Ljg5NiAwIDE3TDAgMTlDMCAyMC4xMDQgMC44OTYgMjEgMiAyMUw1LjM2MiAyMUM1LjY4NiAyMi4zNjggNi4yMjYgMjMuNjUgNi45NDQgMjQuODEzTDQuNTY1IDI3LjE5MkMzLjc4NSAyNy45NzIgMy43ODUgMjkuMjQgNC41NjYgMzAuMDIxTDUuOTggMzEuNDM1QzYuNzYgMzIuMjE1IDguMDI3IDMyLjIxNSA4LjgwOCAzMS40MzVMMTEuMTg3IDI5LjA1NkMxMi4zNSAyOS43NzUgMTMuNjMyIDMwLjMxNCAxNS4wMDEgMzAuNjM4TDE1LjAwMSAzNEMxNS4wMDEgMzUuMTA0IDE1Ljg5NyAzNiAxNy4wMDEgMzZMMTkuMDAxIDM2QzIwLjEwNSAzNiAyMS4wMDEgMzUuMTA0IDIxLjAwMSAzNEwyMS4wMDEgMzAuNjM4QzIyLjM2OSAzMC4zMTQgMjMuNjUxIDI5Ljc3NCAyNC44MTQgMjkuMDU2TDI3LjE5MyAzMS40MzVDMjcuOTc0IDMyLjIxNiAyOS4yNCAzMi4yMTYgMzAuMDIxIDMxLjQzNUwzMS40MzUgMzAuMDIxQzMyLjIxNiAyOS4yNCAzMi4yMTYgMjcuOTczIDMxLjQzNSAyNy4xOTJMMjkuMDU2IDI0LjgxM0MyOS43NzUgMjMuNjUgMzAuMzE0IDIyLjM2OCAzMC42MzggMjAuOTk5TDM0IDIwLjk5OUMzNS4xMDQgMjAuOTk5IDM2IDIwLjEwMyAzNiAxOC45OTlMMzYgMTYuOTk5QzM2IDE1Ljg5NiAzNS4xMDQgMTUgMzQgMTVaTTE4IDI2QzEzLjU4MiAyNiAxMCAyMi40MTggMTAgMThDMTAgMTMuNTgyIDEzLjU4MiAxMCAxOCAxMEMyMi40MTggMTAgMjYgMTMuNTgyIDI2IDE4QzI2IDIyLjQxOCAyMi40MTggMjYgMTggMjZaIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNjQgMjU2KSIgZmlsbD0iIzY2NzU3RiIvPiYjeGE7CQkJPC9nPiYjeGE7CQkJPHRleHQgeT0iMjY3IiB4PSI3Ny43MzQzNzUiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgZm9udC1zaXplPSIxMyIgZmlsbD0iIzc3NyI+JiN4YTsJCQkJCcKgZXhhbXBsZS10ZW5hbnQueWFtbCYjeGE7CQkJPC90ZXh0PiYjeGE7CQk8L2c+JiN4YTsJPC9kZWZzPiYjeGE7CTx1c2UgaHJlZj0iI2dyb3VwXzAiLz4mI3hhOzwvc3ZnPg=="
     id="image13" /></a>
  <g
     id="g2210"
     class="fragment"
     data-fragment-index="10">
    <path
       d="M 208,140.5 208.03,126 H 174.24"
       fill="none"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path15" />
    <circle
       cx="208"
       cy="143.5"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       pointer-events="all"
       id="ellipse17"
       r="3" />
    <path
       d="m 168.24,126 8,-4 -2,4 2,4 z"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path19" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g25">
      <switch
         id="switch23">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 116px; margin-left: 200px;">
            <xhtml:div
               data-drawio-colors="color: #D79B00; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(215, 155, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                1
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="200"
           y="119"
           fill="#d79b00"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text21">1</text>
      </switch>
    </g>
  </g>
  <g transform="translate(10, 0)"
     id="g2454"
     class="fragment"
     data-fragment-index="60">
    <path
       d="m 231.84,172.46 58.86,19.99"
       fill="none"
       stroke="#000000"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path27" />
    <circle
       cx="229"
       cy="171.5"
       fill="#000000"
       stroke="#000000"
       stroke-width="2"
       pointer-events="all"
       id="ellipse29"
       r="3" />
    <path
       d="m 296.38,194.38 -8.86,1.21 3.18,-3.14 -0.61,-4.43 z"
       fill="#000000"
       stroke="#000000"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path31" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g37">
      <switch
         id="switch35">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 172px; margin-left: 253px;">
            <xhtml:div
               data-drawio-colors="color: #000000; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                6
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="253"
           y="175"
           fill="#000000"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text33">6</text>
      </switch>
    </g>
  </g>
  <g
     id="g3692"
     class="fragment"
     data-fragment-index="40">
    <path
       d="m 34.26,294 -8,4 2,-4 -2,-4 z"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path43" />
    <path
       d="m 58,189 -41,0.03 V 294 h 11.26"
       fill="none"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path39" />
    <circle
       cx="61"
       cy="189"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       pointer-events="all"
       id="ellipse41"
       r="3" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g49">
      <switch
         id="switch47">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 181px; margin-left: 38px;">
            <xhtml:div
               data-drawio-colors="color: #D79B00; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(215, 155, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                4
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="38"
           y="185"
           fill="#d79b00"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text45">4</text>
      </switch>
    </g>
  </g>
  <g
     id="g2317"
     class="fragment"
     data-fragment-index="20">
    <path
       d="m 183,199.5 13.03,-0.01 v 17.54 L 125.24,217"
       fill="none"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path51" />
    <circle
       cx="180"
       cy="199.5"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       pointer-events="all"
       id="ellipse53"
       r="3" />
    <path
       d="m 119.24,217 8,-4 -2,4 1.99,4 z"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path55" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g61">
      <switch
         id="switch59">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 207px; margin-left: 204px;">
            <xhtml:div
               data-drawio-colors="color: #d79b00; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(176, 149, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                2
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="204"
           y="210"
           fill="#d79b00"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text57">2</text>
      </switch>
    </g>
  </g>
  <g
     id="g3746"
     class="fragment"
     data-fragment-index="80">
    <path
       d="m 448.26,164 8,-4 -2,4 2,4 z"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path67" />
    <path
       d="m 515,209.5 35.03,-0.01 V 164 h -95.77"
       fill="none"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path63" />
    <circle
       cx="512"
       cy="209.5"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       pointer-events="all"
       id="ellipse65"
       r="3" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g73">
      <switch
         id="switch71">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 200px; margin-left: 544px;">
            <xhtml:div
               data-drawio-colors="color: #d79b00; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(176, 149, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                8
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="544"
           y="203"
           fill="#d79b00"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text69">8</text>
      </switch>
    </g>
  </g>
  <g
     id="g3723"
     class="fragment"
     data-fragment-index="90">
    <path
       d="m 472.24,152 8,-4 -2,4 2,4 z"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path79" />
    <path
       d="m 539,224.5 24,0.01 V 152 h -84.76"
       fill="none"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path75" />
    <circle
       cx="536"
       cy="224.5"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       pointer-events="all"
       id="ellipse77"
       r="3" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g85">
      <switch
         id="switch83">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 218px; margin-left: 558px;">
            <xhtml:div
               data-drawio-colors="color: #d79b00; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(176, 149, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                9
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="558"
           y="221"
           fill="#d79b00"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text81">9</text>
      </switch>
    </g>
  </g>
  <g
     id="g2462"
     class="fragment"
     data-fragment-index="70">
    <path
       d="m 437,239.5 129.03,-0.01 V 254 h -36 l -150.79,0.47"
       fill="none"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path87" />
    <circle
       cx="434"
       cy="239.5"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       pointer-events="all"
       id="ellipse89"
       r="3" />
    <path
       d="m 373.24,254.49 7.98,-4.02 -1.98,4 2.01,4 z"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path91" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g97">
      <switch
         id="switch95">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 247px; margin-left: 453px;">
            <xhtml:div
               data-drawio-colors="color: #d79b00; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(176, 149, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                7
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="453"
           y="250"
           fill="#d79b00"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text93">7</text>
      </switch>
    </g>
  </g>
  <rect
     x="519"
     y="1"
     width="50"
     height="45"
     fill="none"
     stroke="none"
     pointer-events="all"
     id="rect99" />
  <path class="fragment" data-fragment-index="6"
     d="m 521.33,36.55 c -0.67,-0.06 -1.28,-0.38 -1.71,-0.89 -0.42,-0.5 -0.62,-1.15 -0.55,-1.8 V 3.51 c 0.1,-1.26 1.08,-2.27 2.36,-2.45 h 44.71 C 567.61,1 568.87,2.08 569,3.51 l -0.05,30.84 c -0.29,1.3 -1.45,2.24 -2.81,2.3 h -15.68 l -0.7,2.79 c -0.16,0.64 -0.05,1.32 0.31,1.89 0.36,0.56 0.94,0.96 1.6,1.1 1.52,0.5 3.12,0.72 4.72,0.63 h 2.92 V 46 h -32.6 v -2.94 h 3.46 c 1.82,0.01 3.62,-0.28 5.33,-0.88 1.34,-0.31 2.17,-1.63 1.85,-2.94 l -0.45,-2.59 z m 1.46,-3.52 h 42.34 V 4.83 h -42.34 z"
     fill="url(#mx-gradient-f5f5f5-1-b3b3b3-1-s-0)"
     stroke="#666666"
     stroke-width="3"
     stroke-miterlimit="10"
     pointer-events="all"
     id="path101"
     style="fill:url(#linearGradient1238)" />
  <path class="fragment" data-fragment-index="6"
     d="m 498,61 c 0,-24 0,-36 20,-36 -13.33,0 -13.33,-24 0,-24 13.33,0 13.33,24 0,24 20,0 20,12 20,36 z"
     fill="url(#mx-gradient-f5f5f5-1-b3b3b3-1-s-0)"
     stroke="#666666"
     stroke-width="3"
     stroke-miterlimit="10"
     pointer-events="all"
     id="path103"
     style="fill:url(#linearGradient1240)" />
  <rect class="fragment" data-fragment-index="6"
     x="503"
     y="64"
     width="29"
     height="10"
     fill="none"
     stroke="none"
     pointer-events="all"
     id="rect105" />
  <g class="fragment" data-fragment-index="6"
     transform="translate(-0.5,-0.5)"
     id="g111">
    <switch
       id="switch109">
      <foreignObject
         pointer-events="none"
         width="100%"
         height="100%"
         requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
         style="overflow: visible; text-align: left;">
        <xhtml:div
           style="display: flex; align-items: unsafe center; justify-content: unsafe center; height: 1px; padding-top: 69px; margin-left: 504px;">
          <xhtml:div
             data-drawio-colors="color: #B3B3B3; "
             style="box-sizing: border-box; font-size: 0px; text-align: center;">
            <xhtml:div
               style="display: inline-block; font-size: 12px; font-family: Helvetica; color: rgb(179, 179, 179); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: normal; overflow-wrap: normal;">
                                Software engineer
                            </xhtml:div>
          </xhtml:div>
        </xhtml:div>
      </foreignObject>
    </switch>
  </g>
  <rect
     x="12.5"
     y="373"
     width="325.5"
     height="19"
     fill="none"
     stroke="none"
     pointer-events="all"
     id="rect117" />
  <g
     id="g2424"
     data-fragment-index="30"
     class="fragment">
    <image
       x="327.5"
       y="355.5"
       width="14"
       height="14"
       xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzNiAzNiI+PHBhdGggZD0iTTE4IDBDOC4wNTkgMCAwIDguMDU5IDAgMThzOC4wNTkgMTggMTggMTggMTgtOC4wNTkgMTgtMThTMjcuOTQxIDAgMTggMHpNMi4wNSAxOWgzLjk4M2MuMDkyIDIuNTA2LjUyMiA0Ljg3MSAxLjIyOSA3SDQuMTU4Yy0xLjIwNy0yLjA4My0xLjk1LTQuNDU5LTIuMTA4LTd6TTE5IDhWMi4wODFjMi43NDcuNDM2IDUuMTYyIDIuNjU1IDYuNzk5IDUuOTE5SDE5em03LjY1MSAyYy43NTQgMi4wODMgMS4yMTkgNC40NiAxLjMxNyA3SDE5di03aDcuNjUxek0xNyAyLjA4MVY4aC02Ljc5OUMxMS44MzcgNC43MzYgMTQuMjUzIDIuNTE3IDE3IDIuMDgxek0xNyAxMHY3SDguMDMyYy4wOTgtMi41NC41NjMtNC45MTcgMS4zMTctN0gxN3pNNi4wMzQgMTdIMi4wNWMuMTU4LTIuNTQuOTAxLTQuOTE3IDIuMTA3LTdoMy4xMDRjLS43MDUgMi4xMjktMS4xMzUgNC40OTUtMS4yMjcgN3ptMS45OTggMkgxN3Y3SDkuMzQ5Yy0uNzU0LTIuMDgzLTEuMjE5LTQuNDU5LTEuMzE3LTd6TTE3IDI4djUuOTE5Yy0yLjc0Ny0uNDM3LTUuMTYzLTIuNjU1LTYuNzk5LTUuOTE5SDE3em0yIDUuOTE5VjI4aDYuOGMtMS42MzcgMy4yNjQtNC4wNTMgNS40ODItNi44IDUuOTE5ek0xOSAyNnYtN2g4Ljk2OWMtLjA5OSAyLjU0MS0uNTYzIDQuOTE3LTEuMzE3IDdIMTl6bTEwLjk2Ny03aDMuOTgyYy0uMTU3IDIuNTQxLS45IDQuOTE3LTIuMTA3IDdoLTMuMTA0Yy43MDYtMi4xMjkgMS4xMzYtNC40OTQgMS4yMjktN3ptMC0yYy0uMDkzLTIuNTA1LS41MjMtNC44NzEtMS4yMjktN2gzLjEwNGMxLjIwNyAyLjA4MyAxLjk1IDQuNDYgMi4xMDcgN2gtMy45ODJ6bS41MTItOWgtMi41MDNjLS43MTctMS42MDQtMS42MDYtMy4wMTUtMi42MTktNC4xOTlDMjcuMzQ2IDQuODMzIDI5LjA4OSA2LjI2NyAzMC40NzkgOHpNMTAuNjQzIDMuODAxQzkuNjI5IDQuOTg1IDguNzQgNi4zOTYgOC4wMjMgOEg1LjUyMWMxLjM5LTEuNzMzIDMuMTMzLTMuMTY2IDUuMTIyLTQuMTk5ek01LjUyMSAyOGgyLjUwM2MuNzE2IDEuNjA0IDEuNjA1IDMuMDE1IDIuNjE5IDQuMTk4QzguNjU0IDMxLjE2NiA2LjkxMSAyOS43MzMgNS41MjEgMjh6bTE5LjgzNiA0LjE5OGMxLjAxNC0xLjE4NCAxLjkwMi0yLjU5NCAyLjYxOS00LjE5OGgyLjUwM2MtMS4zOSAxLjczMy0zLjEzMyAzLjE2Ni01LjEyMiA0LjE5OHoiIGZpbGw9IiMzQjg4QzMiLz48L3N2Zz4="
       preserveAspectRatio="none"
       id="image113" />
    <rect
       x="12"
       y="374"
       width="332"
       height="24"
       rx="3.5999999"
       ry="3.5999999"
       fill="#1ba1e2"
       stroke="#006eaf"
       stroke-width="2"
       pointer-events="all"
       id="rect115" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g123">
      <switch
         id="switch121">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe flex-start; justify-content: unsafe flex-start; width: 324px; height: 1px; padding-top: 380px; margin-left: 15px;">
            <xhtml:div
               data-drawio-colors="color: #FFFFFF; "
               style="box-sizing: border-box; font-size: 0px; text-align: left;">
              <xhtml:div
                 style="display: inline-block; font-size: 9px; font-family: Helvetica; color: rgb(255, 255, 255); line-height: 1.2; pointer-events: all; white-space: normal; overflow-wrap: normal;">
                <xhtml:b>https://github.com/argoproj/argo-helm/releases/download/argo-cd-5.23.5...</xhtml:b>
              </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="15"
           y="389"
           fill="#ffffff"
           font-family="Helvetica"
           font-size="9px"
           id="text119">https://github.com/argoproj/argo-helm/releases/download/argo-cd-5.23.5...</text>
      </switch>
    </g>
    <path
       d="m 180,261 h 87 l 0.34,101.48"
       fill="none"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path125" />
    <circle
       cx="177"
       cy="261"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       pointer-events="all"
       id="ellipse127"
       r="3" />
    <path
       d="m 267.36,368.48 -4.03,-7.98 4.01,1.98 3.99,-2.01 z"
       fill="#d79b00"
       stroke="#d79b00"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path129" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g135">
      <switch
         id="switch133">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 252px; margin-left: 188px;">
            <xhtml:div
               data-drawio-colors="color: #D79B00; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(215, 155, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                3
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="188"
           y="255"
           fill="#d79b00"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text131">3</text>
      </switch>
    </g>
  </g><a href="http://scmm.localhost/scm/repo/argocd/cluster-resources/code/sources/main/">
  <image
     x="21.5"
     y="412.5"
     width="200"
     height="80"
     xlink:href="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiID8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgd2lkdGg9IjIwMCIgaGVpZ2h0PSI4MCI+Cgk8ZGVmcz4KCQk8ZyBpZD0iZ3JvdXBfMCI+CgkJCTx0ZXh0IGZvbnQtc2l6ZT0iMTMiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgeD0iOCIgeT0iMjYuNDM3NSI+CgkJCQkJwqAKCQkJPC90ZXh0PgoJCQk8cGF0aCBmaWxsPSIjMjNBM0REIiB0cmFuc2Zvcm09Im1hdHJpeCgwLjAzMzQ4MjEgMCAwIDAuMDMzMTkwMyAxNiAxMy4wMDMzKSIgZD0iTTQzOS41NSAyMzYuMDVMMjQ0IDQwLjQ1UTI0My40OTkgMzkuOTQ5NCAyNDIuOTc0IDM5LjQ3MzlRMjQyLjQ0OSAzOC45OTg1IDI0MS45MDEgMzguNTQ5M1EyNDEuMzUzIDM4LjEwMDIgMjQwLjc4NCAzNy42Nzg1UTI0MC4yMTUgMzcuMjU2NyAyMzkuNjI2IDM2Ljg2MzRRMjM5LjAzNyAzNi40NzAxIDIzOC40MyAzNi4xMDYxUTIzNy44MjIgMzUuNzQyMiAyMzcuMTk3IDM1LjQwODVRMjM2LjU3MiAzNS4wNzQ3IDIzNS45MzIgMzQuNzcyMVEyMzUuMjkyIDM0LjQ2OTQgMjM0LjYzNyAzNC4xOTg1UTIzMy45ODMgMzMuOTI3NiAyMzMuMzE2IDMzLjY4OTFRMjMyLjY0OSAzMy40NTA2IDIzMS45NzEgMzMuMjQ1MVEyMzEuMjkzIDMzLjAzOTYgMjMwLjYwNiAzMi44Njc2UTIyOS45MTkgMzIuNjk1NSAyMjkuMjI0IDMyLjU1NzRRMjI4LjUyOSAzMi40MTkzIDIyNy44MjkgMzIuMzE1NVEyMjcuMTI4IDMyLjIxMTYgMjI2LjQyMyAzMi4xNDIyUTIyNS43MTggMzIuMDcyOCAyMjUuMDExIDMyLjAzODFRMjI0LjMwMyAzMi4wMDMzIDIyMy41OTUgMzIuMDAzM1EyMjIuODg3IDMyLjAwMzMgMjIyLjE3OSAzMi4wMzgxUTIyMS40NzIgMzIuMDcyOCAyMjAuNzY3IDMyLjE0MjJRMjIwLjA2MiAzMi4yMTE2IDIxOS4zNjEgMzIuMzE1NVEyMTguNjYxIDMyLjQxOTMgMjE3Ljk2NiAzMi41NTc0UTIxNy4yNzEgMzIuNjk1NSAyMTYuNTg0IDMyLjg2NzZRMjE1Ljg5NyAzMy4wMzk2IDIxNS4yMTkgMzMuMjQ1MVEyMTQuNTQxIDMzLjQ1MDYgMjEzLjg3NCAzMy42ODkxUTIxMy4yMDcgMzMuOTI3NSAyMTIuNTUzIDM0LjE5ODVRMjExLjg5OCAzNC40Njk0IDIxMS4yNTggMzQuNzcyUTIxMC42MTggMzUuMDc0NyAyMDkuOTkzIDM1LjQwODVRMjA5LjM2OCAzNS43NDIyIDIwOC43NjEgMzYuMTA2MVEyMDguMTUzIDM2LjQ3MDEgMjA3LjU2NCAzNi44NjM0UTIwNi45NzUgMzcuMjU2NyAyMDYuNDA2IDM3LjY3ODVRMjA1LjgzNyAzOC4xMDAyIDIwNS4yODkgMzguNTQ5M1EyMDQuNzQxIDM4Ljk5ODUgMjA0LjIxNiAzOS40NzM5UTIwMy42OTEgMzkuOTQ5NCAyMDMuMTkgNDAuNDVMMTYyLjUzIDgxLjA4TDIxNC4wNSAxMzIuNkMyNDEuMTEgMTIzLjQ2IDI2Ni43MyAxNDkuMzcgMjU3LjQ0IDE3Ni4yOEwzMDcuMSAyMjUuOTRDMzQxLjMzIDIxNC4xNCAzNjguMjggMjU2Ljk0IDM0Mi41NyAyODIuNjNDMzE2LjA4IDMwOS4xMiAyNzIuMzYgMjc5Ljc2IDI4Ni41NyAyNDUuMjlMMjQwLjIyIDE5OUwyNDAuMjIgMzIwLjg1QzI2NS41MiAzMzMuMzkgMjYyLjQ4IDM2Mi43IDI0OS4zIDM3NS44NVEyNDguNzA0IDM3Ni40NDYgMjQ4LjA3OSAzNzcuMDEyUTI0Ny40NTUgMzc3LjU3NyAyNDYuODAzIDM3OC4xMTJRMjQ2LjE1MiAzNzguNjQ2IDI0NS40NzUgMzc5LjE0OFEyNDQuNzk4IDM3OS42NSAyNDQuMDk3IDM4MC4xMThRMjQzLjM5NiAzODAuNTg2IDI0Mi42NzMgMzgxLjAxOVEyNDEuOTUxIDM4MS40NTIgMjQxLjIwNyAzODEuODQ5UTI0MC40NjQgMzgyLjI0NiAyMzkuNzAyIDM4Mi42MDZRMjM4Ljk0IDM4Mi45NjcgMjM4LjE2MiAzODMuMjg5UTIzNy4zODMgMzgzLjYxMSAyMzYuNTkgMzgzLjg5NVEyMzUuNzk2IDM4NC4xNzkgMjM0Ljk5IDM4NC40MjNRMjM0LjE4MyAzODQuNjY4IDIzMy4zNjYgMzg0Ljg3M1EyMzIuNTQ5IDM4NS4wNzcgMjMxLjcyMiAzODUuMjQyUTIzMC44OTYgMzg1LjQwNiAyMzAuMDYyIDM4NS41M1EyMjkuMjI4IDM4NS42NTMgMjI4LjM5IDM4NS43MzZRMjI3LjU1MSAzODUuODE4IDIyNi43MDkgMzg1Ljg2UTIyNS44NjggMzg1LjkwMSAyMjUuMDI1IDM4NS45MDFRMjI0LjE4MiAzODUuOTAxIDIyMy4zNDEgMzg1Ljg2UTIyMi40OTkgMzg1LjgxOCAyMjEuNjYgMzg1LjczNlEyMjAuODIyIDM4NS42NTMgMjE5Ljk4OCAzODUuNTNRMjE5LjE1NSAzODUuNDA2IDIxOC4zMjggMzg1LjI0MlEyMTcuNTAyIDM4NS4wNzcgMjE2LjY4NCAzODQuODczUTIxNS44NjcgMzg0LjY2OCAyMTUuMDYgMzg0LjQyM1EyMTQuMjU0IDM4NC4xNzkgMjEzLjQ2IDM4My44OTVRMjEyLjY2NyAzODMuNjExIDIxMS44ODggMzgzLjI4OVEyMTEuMTEgMzgyLjk2NyAyMTAuMzQ4IDM4Mi42MDZRMjA5LjU4NiAzODIuMjQ2IDIwOC44NDMgMzgxLjg0OVEyMDguMSAzODEuNDUyIDIwNy4zNzcgMzgxLjAxOVEyMDYuNjU0IDM4MC41ODYgMjA1Ljk1MyAzODAuMTE4UTIwNS4yNTIgMzc5LjY1IDIwNC41NzUgMzc5LjE0OFEyMDMuODk4IDM3OC42NDYgMjAzLjI0NyAzNzguMTEyUTIwMi41OTUgMzc3LjU3NyAyMDEuOTcxIDM3Ny4wMTJRMjAxLjM0NiAzNzYuNDQ2IDIwMC43NSAzNzUuODVDMTgzLjE4IDM1OC4yNSAxODkuNjggMzI4Ljk0IDIxMiAzMTkuODVMMjEyIDE5Ni44NUMxOTEuMiAxODguMzQgMTg3LjQgMTY2LjExIDE5My4zNiAxNTEuODVMMTQyLjU3IDEwMUw4LjQ1IDIzNS4xNFE3Ljk0OTE1IDIzNS42NDEgNy40NzM0OCAyMzYuMTY2UTYuOTk3ODEgMjM2LjY5MSA2LjU0ODQ3IDIzNy4yMzhRNi4wOTkxMyAyMzcuNzg2IDUuNjc3MTkgMjM4LjM1NVE1LjI1NTI2IDIzOC45MjQgNC44NjE3NSAyMzkuNTEzUTQuNDY4MjQgMjQwLjEwMiA0LjEwNDEgMjQwLjcxUTMuNzM5OTcgMjQxLjMxNyAzLjQwNjA4IDI0MS45NDJRMy4wNzIxOSAyNDIuNTY3IDIuNzY5MzUgMjQzLjIwN1EyLjQ2NjUyIDI0My44NDggMi4xOTU0NyAyNDQuNTAyUTEuOTI0NDIgMjQ1LjE1NyAxLjY4NTggMjQ1LjgyNFExLjQ0NzE4IDI0Ni40OTEgMS4yNDE1OCAyNDcuMTY4UTEuMDM1OTcgMjQ3Ljg0NiAwLjg2Mzg3MSAyNDguNTM0UTAuNjkxNzcgMjQ5LjIyMSAwLjU1MzU5IDI0OS45MTVRMC40MTU0MSAyNTAuNjEgMC4zMTE0ODIgMjUxLjMxMVEwLjIwNzU1NSAyNTIuMDEyIDAuMTM4MTMgMjUyLjcxN1EwLjA2ODcwNTkgMjUzLjQyMiAwLjAzMzk1MTkgMjU0LjEyOVEtMC4wMDA4MDIxODcgMjU0LjgzNyAtMC4wMDA4MDIxODcgMjU1LjU0NVEtMC4wMDA4MDIxODcgMjU2LjI1MyAwLjAzMzk1MTkgMjU2Ljk2MVEwLjA2ODcwNTkgMjU3LjY2OCAwLjEzODEzIDI1OC4zNzNRMC4yMDc1NTUgMjU5LjA3OCAwLjMxMTQ4MiAyNTkuNzc5UTAuNDE1NDEgMjYwLjQ4IDAuNTUzNTkgMjYxLjE3NVEwLjY5MTc3IDI2MS44NjkgMC44NjM4NzEgMjYyLjU1N1ExLjAzNTk3IDI2My4yNDQgMS4yNDE1OCAyNjMuOTIyUTEuNDQ3MTggMjY0LjU5OSAxLjY4NTggMjY1LjI2NlExLjkyNDQyIDI2NS45MzMgMi4xOTU0NyAyNjYuNTg4UTIuNDY2NTIgMjY3LjI0MiAyLjc2OTM1IDI2Ny44ODNRMy4wNzIxOSAyNjguNTIzIDMuNDA2MDggMjY5LjE0OFEzLjczOTk2IDI2OS43NzMgNC4xMDQxIDI3MC4zOFE0LjQ2ODI0IDI3MC45ODggNC44NjE3NSAyNzEuNTc3UTUuMjU1MjYgMjcyLjE2NiA1LjY3NzE5IDI3Mi43MzVRNi4wOTkxMyAyNzMuMzA0IDYuNTQ4NDcgMjczLjg1MlE2Ljk5NzgxIDI3NC4zOTkgNy40NzM0OCAyNzQuOTI0UTcuOTQ5MTUgMjc1LjQ0OSA4LjQ1IDI3NS45NUwyMDQuMDYgNDcxLjU1UTIwNC41NjEgNDcyLjA1MSAyMDUuMDg2IDQ3Mi41MjZRMjA1LjYxMSA0NzMuMDAxIDIwNi4xNTggNDczLjQ1UTIwNi43MDYgNDczLjkgMjA3LjI3NSA0NzQuMzIxUTIwNy44NDQgNDc0Ljc0MyAyMDguNDMyIDQ3NS4xMzZRMjA5LjAyMSA0NzUuNTMgMjA5LjYyOSA0NzUuODkzUTIxMC4yMzYgNDc2LjI1NyAyMTAuODYxIDQ3Ni41OTFRMjExLjQ4NiA0NzYuOTI1IDIxMi4xMjYgNDc3LjIyN1EyMTIuNzY2IDQ3Ny41MyAyMTMuNDIgNDc3LjgwMVEyMTQuMDc1IDQ3OC4wNzIgMjE0Ljc0MSA0NzguMzFRMjE1LjQwOCA0NzguNTQ5IDIxNi4wODYgNDc4Ljc1NFEyMTYuNzY0IDQ3OC45NiAyMTcuNDUxIDQ3OS4xMzJRMjE4LjEzOCA0NzkuMzA0IDIxOC44MzIgNDc5LjQ0MlEyMTkuNTI3IDQ3OS41OCAyMjAuMjI3IDQ3OS42ODRRMjIwLjkyOCA0NzkuNzg4IDIyMS42MzIgNDc5Ljg1N1EyMjIuMzM3IDQ3OS45MjYgMjIzLjA0NSA0NzkuOTYxUTIyMy43NTIgNDc5Ljk5NiAyMjQuNDYgNDc5Ljk5NlEyMjUuMTY4IDQ3OS45OTYgMjI1Ljg3NSA0NzkuOTYxUTIyNi41ODMgNDc5LjkyNiAyMjcuMjg4IDQ3OS44NTdRMjI3Ljk5MiA0NzkuNzg4IDIyOC42OTMgNDc5LjY4NFEyMjkuMzkzIDQ3OS41OCAyMzAuMDg4IDQ3OS40NDJRMjMwLjc4MiA0NzkuMzA0IDIzMS40NjkgNDc5LjEzMlEyMzIuMTU2IDQ3OC45NiAyMzIuODM0IDQ3OC43NTRRMjMzLjUxMiA0NzguNTQ5IDIzNC4xNzkgNDc4LjMxUTIzNC44NDUgNDc4LjA3MiAyMzUuNSA0NzcuODAxUTIzNi4xNTQgNDc3LjUzIDIzNi43OTQgNDc3LjIyN1EyMzcuNDM0IDQ3Ni45MjUgMjM4LjA1OSA0NzYuNTkxUTIzOC42ODQgNDc2LjI1NyAyMzkuMjkxIDQ3NS44OTNRMjM5Ljg5OSA0NzUuNTMgMjQwLjQ4NyA0NzUuMTM2UTI0MS4wNzYgNDc0Ljc0MyAyNDEuNjQ1IDQ3NC4zMjFRMjQyLjIxNCA0NzMuOSAyNDIuNzYyIDQ3My40NVEyNDMuMzA5IDQ3My4wMDEgMjQzLjgzNCA0NzIuNTI2UTI0NC4zNTkgNDcyLjA1MSAyNDQuODYgNDcxLjU1TDQzOS41NSAyNzYuODZRNDQwLjA1MSAyNzYuMzU5IDQ0MC41MjYgMjc1LjgzNFE0NDEuMDAyIDI3NS4zMDkgNDQxLjQ1MSAyNzQuNzYyUTQ0MS45MDEgMjc0LjIxNCA0NDIuMzIzIDI3My42NDVRNDQyLjc0NSAyNzMuMDc2IDQ0My4xMzggMjcyLjQ4N1E0NDMuNTMyIDI3MS44OTggNDQzLjg5NiAyNzEuMjlRNDQ0LjI2IDI3MC42ODMgNDQ0LjU5NCAyNzAuMDU4UTQ0NC45MjggMjY5LjQzMyA0NDUuMjMxIDI2OC43OTNRNDQ1LjUzNCAyNjguMTUyIDQ0NS44MDUgMjY3LjQ5OFE0NDYuMDc2IDI2Ni44NDMgNDQ2LjMxNCAyNjYuMTc2UTQ0Ni41NTMgMjY1LjUwOSA0NDYuNzU4IDI2NC44MzJRNDQ2Ljk2NCAyNjQuMTU0IDQ0Ny4xMzYgMjYzLjQ2N1E0NDcuMzA4IDI2Mi43NzkgNDQ3LjQ0NiAyNjIuMDg1UTQ0Ny41ODUgMjYxLjM5IDQ0Ny42ODkgMjYwLjY4OVE0NDcuNzkyIDI1OS45ODggNDQ3Ljg2MiAyNTkuMjgzUTQ0Ny45MzEgMjU4LjU3OCA0NDcuOTY2IDI1Ny44NzFRNDQ4LjAwMSAyNTcuMTYzIDQ0OC4wMDEgMjU2LjQ1NVE0NDguMDAxIDI1NS43NDcgNDQ3Ljk2NiAyNTUuMDM5UTQ0Ny45MzEgMjU0LjMzMiA0NDcuODYyIDI1My42MjdRNDQ3Ljc5MiAyNTIuOTIyIDQ0Ny42ODkgMjUyLjIyMVE0NDcuNTg1IDI1MS41MiA0NDcuNDQ2IDI1MC44MjVRNDQ3LjMwOCAyNTAuMTMxIDQ0Ny4xMzYgMjQ5LjQ0M1E0NDYuOTY0IDI0OC43NTYgNDQ2Ljc1OCAyNDguMDc4UTQ0Ni41NTMgMjQ3LjQwMSA0NDYuMzE0IDI0Ni43MzRRNDQ2LjA3NiAyNDYuMDY3IDQ0NS44MDUgMjQ1LjQxMlE0NDUuNTM0IDI0NC43NTggNDQ1LjIzMSAyNDQuMTE3UTQ0NC45MjggMjQzLjQ3NyA0NDQuNTk0IDI0Mi44NTJRNDQ0LjI2IDI0Mi4yMjcgNDQzLjg5NiAyNDEuNjJRNDQzLjUzMiAyNDEuMDEyIDQ0My4xMzggMjQwLjQyM1E0NDIuNzQ1IDIzOS44MzQgNDQyLjMyMyAyMzkuMjY1UTQ0MS45MDEgMjM4LjY5NiA0NDEuNDUxIDIzOC4xNDhRNDQxLjAwMiAyMzcuNjAxIDQ0MC41MjYgMjM3LjA3NlE0NDAuMDUxIDIzNi41NTEgNDM5LjU1IDIzNi4wNUw0MzkuNTUgMjM2LjA1WiIvPgoJCQk8dGV4dCBmb250LXNpemU9IjEzIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIHg9IjMwLjk4NDM3NSIgeT0iMjYuNDM3NSI+CgkJCQkJwqAKCQkJPC90ZXh0PgoJCQk8dGV4dCBmaWxsPSIjMjNBM0REIiBmb250LXNpemU9IjEzIiBmb250LXdlaWdodD0iNjAwIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIHg9IjM4LjgxMjUiIHk9IjI2LjQzNzUiPgoJCQkJCWNsdXN0ZXItcmVzb3VyY2VzCgkJCTwvdGV4dD4KCQkJPHRleHQgZm9udC1zaXplPSIxMyIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiB4PSI4IiB5PSI0MiI+CgkJCQkJwqAKCQkJPC90ZXh0PgoJCQk8dGV4dCBmaWxsPSIjNzc3IiBmb250LXNpemU9IjEzIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIHg9IjE1LjgyODEyNSIgeT0iNDIiPgoJCQkJCeKUnOKUgMKgCgkJCTwvdGV4dD4KCQkJPGNsaXBQYXRoIGlkPSJjbF8zIj4KCQkJCTxyZWN0IHg9IjQxIiB5PSIzMSIgd2lkdGg9IjEzIiBoZWlnaHQ9IjEzIi8+CgkJCTwvY2xpcFBhdGg+CgkJCTxjbGlwUGF0aCBpZD0iY2xfNCIgY2xpcC1wYXRoPSJ1cmwoI2NsXzMpIj4KCQkJCTxyZWN0IHg9IjQxIiB5PSIzMSIgd2lkdGg9IjEzIiBoZWlnaHQ9IjEzIi8+CgkJCTwvY2xpcFBhdGg+CgkJCTxnIGNsaXAtcGF0aD0idXJsKCNjbF80KSI+CgkJCQk8cGF0aCBmaWxsPSIjMjY5IiB0cmFuc2Zvcm09Im1hdHJpeCgwLjM2MTExMSAwIDAgMC4zNjExMTEgNDEgMzEpIiBkPSJNMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDI4IDMzQzMwLjIwOSAzMyAzMiAzMS4yMDkgMzIgMjlMMzIgMTJDMzIgOS43OTEgMzAuMjA5IDggMjggOEwxOSA4QzE1LjQzOCA4IDE2IDMgMTAuNTYyIDNMNCAzQzEuNzkxIDMgMCA0Ljc5MSAwIDdMMCAyOVoiLz4KCQkJPC9nPgoJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfNCkiPgoJCQkJPHBhdGggZmlsbD0iIzU1QUNFRSIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDQxIDMxKSIgZD0iTTMwIDEwTDIzLjQzOCAxMEMxOCAxMCAxOC41NjIgMTUgMTUgMTVMNiAxNUMzLjc5MSAxNSAyIDE2Ljc5MSAyIDE5TDIgMjlDMiAyOS41NTMgMS41NTIgMzAgMSAzMEMwLjQ0OCAzMCAwIDI5LjU1MyAwIDI5QzAgMzEuMjA5IDEuNzkxIDMzIDQgMzNMMzAgMzNDMzIuMjA5IDMzIDM0IDMxLjIwOSAzNCAyOUwzNCAxNEMzNCAxMS43OTEgMzIuMjA5IDEwIDMwIDEwWiIvPgoJCQk8L2c+CgkJCTx0ZXh0IGZvbnQtc2l6ZT0iMTMiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgeD0iNTQuMjUiIHk9IjQyIj4KCQkJCQnCoAoJCQk8L3RleHQ+CgkJCTx0ZXh0IGZpbGw9IiMyM0EzREQiIGZvbnQtc2l6ZT0iMTMiIGZvbnQtd2VpZ2h0PSI2MDAiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgeD0iNjIuMDc4MTI1IiB5PSI0MiI+CgkJCQkJYXBwcwoJCQk8L3RleHQ+CgkJCTx0ZXh0IGZvbnQtc2l6ZT0iMTMiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgeD0iOCIgeT0iNTciPgoJCQkJCcKgCgkJCTwvdGV4dD4KCQkJPHRleHQgZmlsbD0iIzc3NyIgZm9udC1zaXplPSIxMyIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiB4PSIxNS44MjgxMjUiIHk9IjU3Ij4KCQkJCQnilJzilIDCoAoJCQk8L3RleHQ+CgkJCTxjbGlwUGF0aCBpZD0iY2xfNSI+CgkJCQk8cmVjdCB4PSI0MSIgeT0iNDYiIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIvPgoJCQk8L2NsaXBQYXRoPgoJCQk8Y2xpcFBhdGggaWQ9ImNsXzYiIGNsaXAtcGF0aD0idXJsKCNjbF81KSI+CgkJCQk8cmVjdCB4PSI0MSIgeT0iNDYiIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIvPgoJCQk8L2NsaXBQYXRoPgoJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfNikiPgoJCQkJPHBhdGggZmlsbD0iIzI2OSIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDQxIDQ2KSIgZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIi8+CgkJCTwvZz4KCQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzYpIj4KCQkJCTxwYXRoIGZpbGw9IiM1NUFDRUUiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA0MSA0NikiIGQ9Ik0zMCAxMEwyMy40MzggMTBDMTggMTAgMTguNTYyIDE1IDE1IDE1TDYgMTVDMy43OTEgMTUgMiAxNi43OTEgMiAxOUwyIDI5QzIgMjkuNTUzIDEuNTUyIDMwIDEgMzBDMC40NDggMzAgMCAyOS41NTMgMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDMwIDMzQzMyLjIwOSAzMyAzNCAzMS4yMDkgMzQgMjlMMzQgMTRDMzQgMTEuNzkxIDMyLjIwOSAxMCAzMCAxMFoiLz4KCQkJPC9nPgoJCQk8dGV4dCBmb250LXNpemU9IjEzIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIHg9IjU0LjI1IiB5PSI1NyI+CgkJCQkJwqAKCQkJPC90ZXh0PgoJCQk8dGV4dCBmaWxsPSIjMjNBM0REIiBmb250LXNpemU9IjEzIiBmb250LXdlaWdodD0iNjAwIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIHg9IjYyLjA3ODEyNSIgeT0iNTciPgoJCQkJCWFyZ29jZAoJCQk8L3RleHQ+CgkJCTx0ZXh0IGZvbnQtc2l6ZT0iMTMiIGZvbnQtZmFtaWx5PSInRGVqYVZ1IFNhbnMgTW9ubycsIC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgJ1NlZ29lIFVJJywgUm9ib3RvLCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAnQXBwbGUgQ29sb3IgRW1vamknLCAnU2Vnb2UgVUkgRW1vamknLCAnU2Vnb2UgVUkgU3ltYm9sJyIgeD0iOCIgeT0iNzIiPgoJCQkJCcKgCgkJCTwvdGV4dD4KCQkJPHRleHQgZmlsbD0iIzc3NyIgZm9udC1zaXplPSIxMyIgZm9udC1mYW1pbHk9IidEZWphVnUgU2FucyBNb25vJywgLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNTeXN0ZW1Gb250LCAnU2Vnb2UgVUknLCBSb2JvdG8sIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBFbW9qaScsICdTZWdvZSBVSSBTeW1ib2wnIiB4PSIxNS44MjgxMjUiIHk9IjcyIj4KCQkJCQnilJTilIDCoAoJCQk8L3RleHQ+CgkJCTxjbGlwUGF0aCBpZD0iY2xfNyI+CgkJCQk8cmVjdCB4PSI0MSIgeT0iNjEiIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIvPgoJCQk8L2NsaXBQYXRoPgoJCQk8Y2xpcFBhdGggaWQ9ImNsXzgiIGNsaXAtcGF0aD0idXJsKCNjbF83KSI+CgkJCQk8cmVjdCB4PSI0MSIgeT0iNjEiIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIvPgoJCQk8L2NsaXBQYXRoPgoJCQk8ZyBjbGlwLXBhdGg9InVybCgjY2xfOCkiPgoJCQkJPHBhdGggZmlsbD0iIzI2OSIgdHJhbnNmb3JtPSJtYXRyaXgoMC4zNjExMTEgMCAwIDAuMzYxMTExIDQxIDYxKSIgZD0iTTAgMjlDMCAzMS4yMDkgMS43OTEgMzMgNCAzM0wyOCAzM0MzMC4yMDkgMzMgMzIgMzEuMjA5IDMyIDI5TDMyIDEyQzMyIDkuNzkxIDMwLjIwOSA4IDI4IDhMMTkgOEMxNS40MzggOCAxNiAzIDEwLjU2MiAzTDQgM0MxLjc5MSAzIDAgNC43OTEgMCA3TDAgMjlaIi8+CgkJCTwvZz4KCQkJPGcgY2xpcC1wYXRoPSJ1cmwoI2NsXzgpIj4KCQkJCTxwYXRoIGZpbGw9IiM1NUFDRUUiIHRyYW5zZm9ybT0ibWF0cml4KDAuMzYxMTExIDAgMCAwLjM2MTExMSA0MSA2MSkiIGQ9Ik0zMCAxMEwyMy40MzggMTBDMTggMTAgMTguNTYyIDE1IDE1IDE1TDYgMTVDMy43OTEgMTUgMiAxNi43OTEgMiAxOUwyIDI5QzIgMjkuNTUzIDEuNTUyIDMwIDEgMzBDMC40NDggMzAgMCAyOS41NTMgMCAyOUMwIDMxLjIwOSAxLjc5MSAzMyA0IDMzTDMwIDMzQzMyLjIwOSAzMyAzNCAzMS4yMDkgMzQgMjlMMzQgMTRDMzQgMTEuNzkxIDMyLjIwOSAxMCAzMCAxMFoiLz4KCQkJPC9nPgoJCQk8dGV4dCBmb250LXNpemU9IjEzIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIHg9IjU0LjI1IiB5PSI3MiI+CgkJCQkJwqAKCQkJPC90ZXh0PgoJCQk8dGV4dCBmaWxsPSIjMjNBM0REIiBmb250LXNpemU9IjEzIiBmb250LXdlaWdodD0iNjAwIiBmb250LWZhbWlseT0iJ0RlamFWdSBTYW5zIE1vbm8nLCAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIFJvYm90bywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJ0FwcGxlIENvbG9yIEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgJ1NlZ29lIFVJIFN5bWJvbCciIHg9IjYyLjA3ODEyNSIgeT0iNzIiPgoJCQkJCW1pc2MKCQkJPC90ZXh0PgoJCTwvZz4KCTwvZGVmcz4KCTx1c2UgaHJlZj0iI2dyb3VwXzAiLz4KPC9zdmc+Cg=="
     id="image137" /></a>
  <g
     id="g3705"
     class="fragment"
     data-fragment-index="50">
    <path
       d="m 53.77,464.28 -7.85,4.3 1.85,-4.07 -2.15,-3.92 z"
       fill="#000000"
       stroke="#000000"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path143" />
    <path
       d="M 58,157.5 8.03,157.49 v 307.54 h 26 l 13.74,-0.52"
       fill="none"
       stroke="#000000"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path139" />
    <circle
       cx="61"
       cy="157.5"
       fill="#000000"
       stroke="#000000"
       stroke-width="2"
       pointer-events="all"
       id="ellipse141"
       r="3" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g149">
      <switch
         id="switch147">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 148px; margin-left: 14px;">
            <xhtml:div
               data-drawio-colors="color: #000000; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(0, 0, 0); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                5
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="14"
           y="151"
           fill="#000000"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text145">5</text>
      </switch>
    </g>
  </g>
  <path class="fragment" data-fragment-index="5"
     d="M 38,61 C 38,37 38,25 58,25 44.67,25 44.67,1 58,1 c 13.33,0 13.33,24 0,24 20,0 20,12 20,36 z"
     fill="url(#mx-gradient-f5f5f5-1-b3b3b3-1-s-0)"
     stroke="#666666"
     stroke-width="3"
     stroke-miterlimit="10"
     pointer-events="all"
     id="path151"
     style="fill:url(#linearGradient1242)" />
  <path class="fragment" data-fragment-index="5"
     d="m 69.2,41 h 3.6 v 2.85 c 2.01,0.28 3.91,1.05 5.55,2.25 l 1.95,-1.95 2.55,2.52 -1.98,1.95 c 1.21,1.64 1.99,3.56 2.28,5.58 H 86 v 3.6 h -2.85 c -0.29,2 -1.08,3.9 -2.28,5.52 l 1.98,1.98 -2.55,2.55 -1.95,-1.95 c -1.64,1.2 -3.54,1.97 -5.55,2.25 V 71 H 69.2 V 68.15 C 67.19,67.87 65.29,67.1 63.65,65.9 L 61.7,67.85 59.15,65.36 61.1,63.32 C 59.91,61.69 59.14,59.8 58.85,57.8 H 56 v -3.6 h 2.85 c 0.28,-2.02 1.05,-3.93 2.25,-5.58 l -1.95,-1.95 2.55,-2.52 1.95,1.95 c 1.64,-1.2 3.54,-1.97 5.55,-2.25 z M 71,51.5 c -2.49,0 -4.5,2.01 -4.5,4.5 0,2.49 2.01,4.5 4.5,4.5 2.49,0 4.5,-2.01 4.5,-4.5 0,-2.49 -2.01,-4.5 -4.5,-4.5 z"
     fill="#f5f5f5"
     stroke="#666666"
     stroke-width="2"
     stroke-miterlimit="10"
     pointer-events="all"
     id="path153" />
  <g class="fragment" data-fragment-index="5"
     transform="translate(-0.5,-0.5)"
     id="g159">
    <switch
       id="switch157">
      <foreignObject
         pointer-events="none"
         width="100%"
         height="100%"
         requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
         style="overflow: visible; text-align: left;">
        <xhtml:div
           style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 76px; margin-left: 60px;">
          <xhtml:div
             data-drawio-colors="color: #B3B3B3; "
             style="box-sizing: border-box; font-size: 0px; text-align: center;">
            <xhtml:div
               style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(179, 179, 179); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
              <xhtml:font>Platform engineer</xhtml:font>
            </xhtml:div>
          </xhtml:div>
        </xhtml:div>
      </foreignObject>
    </switch>
  </g>
  <g
     id="g2563"
     class="fragment"
     data-fragment-index="120">
    <path
       d="M 602,287.8 H 579 V 165 h -22.76"
       fill="none"
       stroke="#d33833"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path161" />
    <path
       d="m 553.24,165 4,-2 -1,2 1,2 z"
       fill="#d33833"
       stroke="#d33833"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path163" />
    <g
       transform="translate(-0.5,-0.5)"
       id="g169">
      <switch
         id="switch167">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 167px; margin-left: 595px;">
            <xhtml:div
               data-drawio-colors="color: #D33833; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(211, 56, 51); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                push
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="595"
           y="170"
           fill="#d33833"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text165">push</text>
      </switch>
    </g>
  </g>
  <g
     id="g2570"
     class="fragment"
     data-fragment-index="130">
    <path
       d="M 603.5,287.36 H 579 V 153 h -8.76"
       fill="none"
       stroke="#d33833"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path171" />
    <path
       d="m 567.24,153 4,-2 -1,2 1,2 z"
       fill="#d33833"
       stroke="#d33833"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path173" />
    <g
       transform="translate(15,-0.5)"
       id="g179">
      <switch
         id="switch177">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 141px; margin-left: 552px;">
            <xhtml:div
               data-drawio-colors="color: #D33833; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(211, 56, 51); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                push via PR
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="552"
           y="144"
           fill="#d33833"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text175">push via PR</text>
      </switch>
    </g>
  </g>
  <g
     id="g2556"
     class="fragment"
     data-fragment-index="110">
    <path
       d="m 602,287.8 h -15.55 v 45.99 h -42.98"
       fill="none"
       stroke="#d33833"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="stroke"
       id="path181" />
    <path
       d="m 542,334 4,-2 -1,2 1,2 z"
       fill="#d33833"
       stroke="#d33833"
       stroke-width="2"
       stroke-miterlimit="10"
       pointer-events="all"
       id="path185" />
    <g
       transform="translate(15,-0.5)"
       id="g191">
      <switch
         id="switch189">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 1px; height: 1px; padding-top: 323px; margin-left: 548px;">
            <xhtml:div
               data-drawio-colors="color: #D33833; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 11px; font-family: Helvetica; color: rgb(211, 56, 51); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: nowrap;">
                                pull
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="548"
           y="326"
           fill="#d33833"
           font-family="Helvetica"
           font-size="11px"
           text-anchor="middle"
           font-weight="bold"
           id="text187">pull</text>
      </switch>
    </g>
  </g>
  <rect
     x="594.59998"
     y="316"
     width="14.4"
     height="10"
     fill="none"
     stroke="none"
     pointer-events="all"
     id="rect195" />
  <g
     id="g2482"class="fragment"     data-fragment-index="109">
    <a href="http://jenkins.localhost/job/example-apps/job/petclinic-helm/job/main/"><image
       x="583.5"
       y="260.5"
       width="33.599998"
       height="46.389999"
       xlink:href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbDpzcGFjZT0icHJlc2VydmUiIGhlaWdodD0iMzEyIiB3aWR0aD0iMjI2IiB2ZXJzaW9uPSIxLjEiIGlkPSJzdmcyIiB2aWV3Qm94PSIwIDAgMjI2IDMxMiI+PG1ldGFkYXRhIGlkPSJtZXRhZGF0YTgiPmltYWdlL3N2Zyt4bWw8L21ldGFkYXRhPjxkZWZzIGlkPSJkZWZzNiI+PGNsaXBQYXRoIGlkPSJjbGlwUGF0aDE4IiBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+PHBhdGggaWQ9InBhdGgyMCIgZD0iTSAwLDI0OTQuODQgMCwwIGwgMTgwNC4zNCwwIDAsMjQ5NC44NCAtMTgwNC4zNCwwIHoiLz48L2NsaXBQYXRoPjwvZGVmcz48ZyB0cmFuc2Zvcm09Im1hdHJpeCgxLjI1LDAsMCwtMS4yNSwwLDMxMikiIGlkPSJnMTAiPjxnIGlkPSJnMzM5MyI+PHBhdGggaWQ9InBhdGgyMiIgc3R5bGU9ImZpbGw6I2QzMzgzMztmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxNzcuNzE4LDEyOS4yNjQgYyAwLC00OS40Mjg4IC0zOS4xNzUsLTg5LjQ5OTIgLTg3LjUsLTg5LjQ5OTIgLTQ4LjMyNDIsMCAtODcuNDk5MjUsNDAuMDcwNCAtODcuNDk5MjUsODkuNDk5MiAwLDQ5LjQzIDM5LjE3NTA1LDg5LjUwMSA4Ny40OTkyNSw4OS41MDEgNDguMzI1LDAgODcuNSwtNDAuMDcxIDg3LjUsLTg5LjUwMSIvPjxwYXRoIGlkPSJwYXRoMjQiIHN0eWxlPSJmaWxsOiNlZjNkM2E7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gNi4yODQzOCwxMDcuMDk4IGMgMCwwIC02LjMzNDM4LDkzLjMzMyA3OS42NjYwMiw5NiBsIC01Ljk5OTYsMTAgLTQ2LjY2NjQsLTE1LjY2NyAtMTMuMzMzNiwtMTUuMzMzIC0xMS42NjY0MiwtMjIuMzM0IC02LjY2NzE5LC0yNiAyLC0xNy4zMzMiLz48cGF0aCBpZD0icGF0aDI2IiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lIiBkPSJNIDMwLjI4ODMsMTkwLjMxOSBDIDE0LjkzNjMsMTc0LjYxMSA1LjQzNjMzLDE1Mi45MjMgNS40MzYzMywxMjguOTMgbCAwLDAgYyAwLC0yMy45ODggOS40OTk5NywtNDUuNjc4OCAyNC44NTE5NywtNjEuMzgzOSBsIDAsMCBDIDQ1LjY0NzcsNTEuODQxIDY2LjgxNTIsNDIuMTUgOTAuMjE2OCw0Mi4xNSBsIDAsMCBjIDIzLjQwMjIsMCA0NC41NzEyLDkuNjkxIDU5LjkyOTIsMjUuMzk2MSBsIDAsMCBjIDE1LjM1MSwxNS43MDUxIDI0Ljg1MywzNy4zOTU5IDI0Ljg1Myw2MS4zODM5IGwgMCwwIGMgMCwyMy45OTMgLTkuNTAyLDQ1LjY4MSAtMjQuODUzLDYxLjM4OSBsIDAsMCBjIC0xNS4zNTgsMTUuNzAyIC0zNi41MjcsMjUuMzkzIC01OS45MjkyLDI1LjM5NSBsIDAsMCBDIDY2LjgxNTIsMjE1LjcxMiA0NS42NDc3LDIwNi4wMjEgMzAuMjg4MywxOTAuMzE5IGwgMCwwIHogTSAyNi40MDIzLDYzLjc0NjkgQyAxMC4wODY3LDgwLjQzMjggMCwxMDMuNDkzIDAsMTI4LjkzIGwgMCwwIGMgMCwyNS40NDEgMTAuMDg2Nyw0OC40OTkgMjYuNDAyMyw2NS4xODYgbCAwLDAgYyAxNi4zMTE4LDE2LjY5IDM4Ljg5MTUsMjcuMDM1IDYzLjgxNDUsMjcuMDMyIGwgMCwwIGMgMjQuOTIzMiwwLjAwMyA0Ny41MDUyLC0xMC4zNDIgNjMuODE0MiwtMjcuMDMyIGwgMCwwIGMgMTYuMzE3LC0xNi42ODcgMjYuNDA1LC0zOS43NDcgMjYuNDAzLC02NS4xODYgbCAwLDAgYyAwLjAwMiwtMjUuNDM3IC0xMC4wODYsLTQ4LjQ5NzIgLTI2LjQwMywtNjUuMTgzMSBsIDAsMCBDIDEzNy43MjIsNDcuMDU3OCAxMTUuMTQsMzYuNzE0MSA5MC4yMTY4LDM2LjcxNDEgbCAwLDAgYyAtMjQuOTIzLDAgLTQ3LjUwMjcsMTAuMzQzNyAtNjMuODE0NSwyNy4wMzI4IGwgMCwwIi8+PHBhdGggaWQ9InBhdGgyOCIgc3R5bGU9ImZpbGw6I2YwZDZiNztmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMjcuMDUxLDEyOC43NjggLTEzLjMzNCwtMiAtMTguMDAwMiwtMiAtMTEuNjY3MiwtMC4zMzMgLTExLjMzMjgsMC4zMzMgLTguNjY3MiwyLjY2NyAtNy42NjY4LDguMzMzIC02LDE3IC0xLjMzMzIsMy42NjcgLTgsMi42NjYgLTQuNjY2OCw3LjY2NyAtMy4zMzMyLDExIDMuNjY3Miw5LjY2NyA4LjY2NiwzIDcsLTMuMzM0IDMuMzM0LC03LjMzMyA0LDAuNjY3IDEuMzMyOCwxLjY2NiAtMS4zMzI4LDcuNjY3IC0wLjMzNCw5LjY2NyAyLDEzLjMzMyAtMC4wNzgxLDcuNjE2IDYuMDc4MSw5LjcxNyAxMC42NjY4LDcuNjY3IDE4LjY2NzIsOCAyMC42NjYyLC0zIDE4LC0xMyA4LjMzNCwtMTMuMzMzIDUuMzMzLC05LjY2NyAxLjMzMywtMjQgLTQsLTIwLjY2NyAtNy4zMzMsLTE4LjMzMyAtNywtOS42NjciLz48cGF0aCBpZD0icGF0aDMwIiBzdHlsZT0iZmlsbDojMzM1MDYxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDExNS43MTcsNzEuMTAyIC00Ny42Njc0LC0yIDAsLTggNCwtMjggLTIsLTIuMzM0IC0zMy4zMzI4LDExLjMzNCAtMi4zMzQsNCAtMy4zMzMyLDM3LjY2NiAtNy42NjU2LDIyLjY2NyAtMS42NjcyLDUuMzMzIDI2LjY2NiwxOC4zMzMgOC4zMzQsMy4zMzQgNy4zMzI4LC05IDYuMzMzMiwtNS42NjcgNy4zMzQsLTIuMzMzIDMuMzMyOCwtMSA0LC0xNy4zMzMgMywtMy42NjY4IDcuNjY3MiwyLjY2NjggLTUuMzM0LC0xMC4zMzQgMjkuMDAwMiwtMTMuNjY2IC0zLjY2NiwtMiIvPjxwYXRoIGlkPSJwYXRoMzIiIHN0eWxlPSJmaWxsOiM2ZDZiNmQ7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMzYuNzE2OCwxODcuNDM1IDguNjY2LDMgNywtMy4zMzQgMy4zMzQsLTcuMzMzIDQsMC42NjcgMSw0IC0yLDcuNjY2IDIsMTguMzM0IC0xLjY2NzIsMTAgNiw3IDEzLDEwLjMzMyAtMy42NjY4LDUgLTE4LjMzMzIsLTkgLTcuNjY2OCwtNiAtNC4zMzMyLC05LjMzMyAtNi42NjY4LC05IC0yLC0xMC42NjcgMS4zMzQsLTExLjMzMyIvPjxwYXRoIGlkPSJwYXRoMzQiIHN0eWxlPSJmaWxsOiNkY2Q5ZDg7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gNTAuMzgyOCwyMTguNzY4IGMgMCwwIDUsMTIuMzMzIDI1LDE4LjMzMyAyMCw2IDEsNC4zMzQgMSw0LjMzNCBsIC0yMS42NjYsLTguMzM0IC04LjMzNCwtOC4zMzMgLTMuNjY2LC02LjY2NyA3LjY2NiwwLjY2NyIvPjxwYXRoIGlkPSJwYXRoMzYiIHN0eWxlPSJmaWxsOiNkY2Q5ZDg7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gNDAuMzgyOCwxODkuNzY4IGMgMCwwIC03LDIzLjMzNCAxOS42NjY4LDI2LjY2NyBsIC0xLDQgLTE4LjMzMjgsLTQuMzM0IC01LjMzNCwtMTcuMzMzIDEuMzM0LC0xMS4zMzMgMy42NjYsMi4zMzMiLz48cGF0aCBpZD0icGF0aDM4IiBzdHlsZT0iZmlsbDojZjdlNGNkO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDUxLjA0OTYsMTU4Ljc2OCA0LjM2NDUsNC4yMjkgYyAwLDAgMS45Njk5LC0wLjIyOSAyLjMwMjcsLTIuNTYyIDAuMzMyOCwtMi4zMzQgMS4zMzI4LC0yMy4zMzQgMTUuNjY2LC0zNC42NjggMS4zMDc0LC0xLjAzNCAtMTAuNjY2LDEuNjY4IC0xMC42NjYsMS42NjggbCAtMTAuNjY3MiwxNi42NjYiLz48cGF0aCBpZD0icGF0aDQwIiBzdHlsZT0iZmlsbDojZjdlNGNkO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDExMi4zODUsMTY1LjEwMSBjIDAsMCAwLjc3NywxMC4xMDQgMy40OTgsOS4zMjcgMi43MjEsLTAuNzc3IDIuNzIxLC0zLjQ5OCAyLjcyMSwtMy40OTggMCwwIC02LjYwOCwtNC4yNzUgLTYuMjE5LC01LjgyOSIvPjxwYXRoIGlkPSJwYXRoNDIiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gMTQwLjA1LDIwMi4xMDEgYyAwLDAgLTUuNDk0LC0xLjE2IC02LC02IC0wLjUwNiwtNC44NDEgNiwtMSA3LC0wLjY2NyIvPjxwYXRoIGlkPSJwYXRoNDQiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gOTkuNzE2OCwyMDEuNzY3IGMgMCwwIC03LjMzNCwtMSAtNy4zMzQsLTUuNjY2IDAsLTQuNjY3IDguMzM0MiwtNC4zMzQgMTAuNjY3MiwtMi4zMzQiLz48cGF0aCBpZD0icGF0aDQ2IiBzdHlsZT0iZmlsbDojZjdlNGNkO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDU0LjM4MjgsMTgwLjEwMSBjIDAsMCAtMTIuNjY3Miw3LjY2NyAtMTQsMC4zMzMgLTEuMzMzMiwtNy4zMzMgLTQuMzM0LC0xMi42NjcgMiwtMjAuMzMzIGwgLTQuMzMzMiwxLjMzMyAtNCwxMC4zMzMgLTEuMzMyOCwxMCA3LjY2Niw4LjAwMSA4LjY2NjgsLTAuNjY3IDUsLTQgMC4zMzMyLC01Ii8+PHBhdGggaWQ9InBhdGg0OCIgc3R5bGU9ImZpbGw6I2Y3ZTRjZDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2MC4zODI4LDIwMS4xMDEgYyAwLDAgNS42NjY4LDI5LjMzMyAzNC4zMzQsMzUgMjMuNjAxMiw0LjY2NSAzNS45OTkyLC0xIDQwLjY2NjIsLTYuMzMzIDAsMCAtMjEsMjQuOTk5IC00MS4wMDAyLDE3LjMzMyAtMjAsLTcuNjY3IC0zNC42NjYsLTIxLjY2NyAtMzQuMzMzMiwtMzAuNjY2IDAuNTY3NiwtMTUuMzI4IDAuMzMzMiwtMTUuMzM0IDAuMzMzMiwtMTUuMzM0Ii8+PHBhdGggaWQ9InBhdGg1MCIgc3R5bGU9ImZpbGw6I2Y3ZTRjZDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMzcuNzE3LDIyNi40MzUgYyAwLDAgLTkuNjY2LDAuMzMzIC0xMCwtOC4zMzQgMCwwIC0wLjAwMSwtMS4zMzMgMC42NjYsLTIuNjY2IDAsMCA3LjY2OCw4LjY2NyAxMi4zMzQsNCIvPjxwYXRoIGlkPSJwYXRoNTIiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTUuMzg4NywyMTQuNTMyIGMgMCwwIC0xLjY2NDEsMTMuMzAzIC0xMy4wMDU5LDUuNTY5IC03LjMzMzIsLTUgLTYuNjY2LC0xMiAtNS4zMzMyLC0xMy4zMzMgMS4zMzMyLC0xLjMzNCAwLjk3MDcsLTQuMDE5IDEuOTg1NiwtMi4xNzYgMS4wMTQ0LDEuODQzIDAuNjgwNCw3Ljg0MyA0LjM0NzYsOS41MDkgMy42NjY4LDEuNjY3IDkuNjc3NywzLjUyOSAxMi4wMDU5LDAuNDMxIi8+PHBhdGggaWQ9InBhdGg1NCIgc3R5bGU9ImZpbGw6IzQ5NzI4YjtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2NC4wNDk2LDEyNC40MzUgLTMxLjMzMjgsLTE0IGMgMCwwIDEzLC01MS42NjcgNi4zMzI4LC02Ny42NjcgbCAtNC42NjY4LDEuNjY2IC0wLjMzMzIsMTkuNjY3MiAtOC42NjU2LDM3LjMzMjggLTMuNjY3MiwxMC4zMzQgMzIuNjY2LDIxLjk5OSA5LjY2NjgsLTkuMzMyIi8+PHBhdGggaWQ9InBhdGg1NiIgc3R5bGU9ImZpbGw6IzQ5NzI4YjtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2Ny4yNzE1LDk1Ljg1NzggNC40NDUzLC01LjQyMzggMCwtMjAgLTUuMzM0LDAgYyAwLDAgLTAuNjY2LDE0IC0wLjY2NiwxNS42NjcyIDAsMS42NjY4IDAuNjY2LDcuNjY2OCAwLjY2Niw3LjY2NjgiLz48cGF0aCBpZD0icGF0aDU4IiBzdHlsZT0iZmlsbDojNDk3MjhiO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDY3LjM4MjgsNjcuNDM0IC0xNSwtMC42NjYgNC4zMzQsLTMgMTAuNjY2LC0xLjY2NjgiLz48cGF0aCBpZD0icGF0aDYwIiBzdHlsZT0iZmlsbDojMzM1MDYxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDExOC43MTcsNzAuNzY4IDEyLjMzMywwLjMzMzIgMywtMzAuNjY3MiAtMTIuNjY3LC0xLjY2NiAtMi42NjYsMzIiLz48cGF0aCBpZD0icGF0aDYyIiBzdHlsZT0iZmlsbDojMzM1MDYxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEyMi4wNSw3MC43NjggMTguNjY3LDEgYyAwLDAgNy42NjYsMTkuMzMzMiA3LjY2NiwyMC4zMzMyIDAsMSA2LjY2NywyNy45OTk4IDYuNjY3LDI3Ljk5OTggbCAtMTUsMTUuNjY2IC0zLDIuNjY3IC04LC04IDAsLTMxIC03LC0yOC42NjYiLz48cGF0aCBpZD0icGF0aDY0IiBzdHlsZT0iZmlsbDojNDk3MjhiO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzMC4zODMsNzMuMTAxMiAtMTEuNjY2LC0yLjMzMzIgMS42NjYsLTkuMzM0IGMgNC4zMzMsLTIgMTEuNjY3LDMuMzM0IDExLjY2NywzLjMzNCIvPjxwYXRoIGlkPSJwYXRoNjYiIHN0eWxlPSJmaWxsOiM0OTcyOGI7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTMwLjcxNywxMzEuNDM0IDIzLjMzMywtMTcuMzMzIDAuNjY3LDggLTE3LjY2NywxNi4zMzMgLTYuMzMzLC03Ii8+PHBhdGggaWQ9InBhdGg2OCIgc3R5bGU9ImZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0iTSA3OC45NTA4LDUuMDk4MDUgNzIuMDQ5NiwzMy4xMDIgNjguNjE3Miw1My43NjQ4IDY4LjA0OTYsNjkuMTAyIGwgMzEuMjM0OCwxLjY2MjggMTkuNDMyNiwwLjAwMzIgLTEuNzY3LC0zNS4wMDMyIDMsLTI2Ljk5OTk2IC0wLjMzMywtNSAtMjUuMzMyNiwtMiAtMTUuMzMzNiwzLjMzMzIxIi8+PHBhdGggaWQ9InBhdGg3MCIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMTQuMzgzLDcxLjEwMTIgYyAwLDAgLTEuNjY2LC0zNC42NjcyIDMuMzM0LC01OS4zMzMyIDAsMCAtMTAsLTYuMzM0MDIgLTI0LjY2NzQsLTguMDAwMDMgbCAyOC4wMDA0LDEgMy4zMzMsMiAtNCw1NC42NjYwMyAtMSwxMS42NjgiLz48cGF0aCBpZD0icGF0aDcyIiBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzNC42MTgsNDMuMDk4IDEzLDMuNjY2OCAyNC42NjYsMS4zMzMyIDMuNjY3LDExLjMzMjkgLTYuNjY3LDE5LjY2NzEgLTcuNjY2LDEgLTEwLjY2NywtMy4zMzMyIC0xMC4yMzQsLTQuOTk2OCAtNS40MzMsMC45OTY4IC00LjIzNCwtMS42NjM2Ii8+PHBhdGggaWQ9InBhdGg3NCIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMzQuMzgzLDQ5Ljc2OCBjIDAsMCA4LjY2NiwzLjk5OTIgMTAsMy42NjYgbCAtMy42NjYsMTguMzM0IDQuMzMzLDEuNjY2IGMgMCwwIDMsLTE3LjMzMjggMywtMTkuMzMyOCAwLDAgMTguNjY2LC0xIDIwLjMzMywtMSAwLDAgNCw3LjY2NjggMywxNS42NjY4IGwgMy42NjcsLTEwLjY2NjggMC4zMzMsLTYgLTUuMzMzLC04IC02LC0xLjMzMzIgLTEwLDAuMzMzMiAtMy4zMzMsNC4zMzI4IC0xMS42NjcsLTEuNjY2IC0zLjY2NywtMS4zMzQiLz48cGF0aCBpZD0icGF0aDc2IiBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lIiBkPSJtIDEyMS4yODQsNzMuNDMwOSAtNy4zMzMsMTguNjY3MSAtNy42NjcsMTEgYyAwLDAgMS42NjYsNC42NjcgNCw0LjY2NyAyLjMzNCwwIDcuNjY3LDAgNy42NjcsMCBsIDcuMzMzLC0yLjY2NyAtMC42NjYsLTEyLjMzMzIgLTMuMzM0LC0xOS4zMzM5Ii8+PHBhdGggaWQ9InBhdGg3OCIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMjIuNzE3LDc5Ljc2OCBjIDAsMCAtOS4zMzQsMTcuOTk5MiAtOS4zMzQsMjAuNjY2IDAsMCAxLjY2Niw0IDQsMyAyLjMzNCwtMSA3LjMzNCwtMy42NjYgNy4zMzQsLTMuNjY2IGwgMCw2LjMzMyAtMTEuMzM0LDIuMzM0IC03LjY2NiwtMSAxMywtMzAuNjY3IDIuNjY2LC0wLjMzNCIvPjxwYXRoIGlkPSJwYXRoODAiIHN0eWxlPSJmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOm5vbnplcm87c3Ryb2tlOm5vbmUiIGQ9Im0gODEuOTUxMiwxMjMuNzY0IC05LjIzNDQsMS4wMDQgLTguNjY3MiwyLjY2NyAwLC0zIDQuMjM0OCwtNC42NyAxMy4zMzMyLC02Ii8+PHBhdGggaWQ9InBhdGg4MiIgc3R5bGU9ImZpbGw6I2RjZDlkODtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA2Ny4wNTA4LDEyMi43NjUgYyAwLDAgMTAuMzM0LC00LjMzNCAxMy42NjcyLC0zLjMzNCBsIDAuMzMxNiwtMy45OTYgLTkuMzMxNiwxLjk5NiAtNS42NjcyLDQgMSwxLjMzNCIvPjxwYXRoIGlkPSJwYXRoODQiIHN0eWxlPSJmaWxsOiNkMzM4MzM7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTM0LjU4MiwxMDYuNjMgYyAtNS42NTYsMC4xNjYgLTEwLjc2NiwwLjgzOCAtMTUuMjQsMi4xIDAuMzA0LDEuODM0IC0wLjI2NSwzLjYzNCAwLjE5Miw0Ljk1NSAxLjI0NywwLjg5OCAzLjMzNywwLjg4NCA1LjIyMiwxLjA5NSAtMS42MywwLjgwMSAtMy45MiwxLjExOCAtNS44MDEsMC42NTUgLTAuMDQ0LDEuMjczIC0wLjYxNSwyLjA2MiAtMC45NjEsMy4wNTggMy4xOCwxLjEzNSAxMC42ODcsOC41NzYgMTQuOTEsNi4xMTIgMi4wMTIsLTEuMTcyIDIuODY3LC03Ljg2NiAzLjAyMywtMTEuMTIxIDAuMTMsLTIuNyAtMC4yNDUsLTUuNDI0IC0xLjM0NSwtNi44NTQiLz48cGF0aCBpZD0icGF0aDg2IiBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZDMzODMzO3N0cm9rZS13aWR0aDoyO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLW9wYWNpdHk6MTtzdHJva2UtZGFzaGFycmF5Om5vbmUiIGQ9Im0gMTM0LjU4MiwxMDYuNjMgYyAtNS42NTYsMC4xNjYgLTEwLjc2NiwwLjgzOCAtMTUuMjQsMi4xIDAuMzA0LDEuODM0IC0wLjI2NSwzLjYzNCAwLjE5Miw0Ljk1NSAxLjI0NywwLjg5OCAzLjMzNywwLjg4NCA1LjIyMiwxLjA5NSAtMS42MywwLjgwMSAtMy45MiwxLjExOCAtNS44MDEsMC42NTUgLTAuMDQ0LDEuMjczIC0wLjYxNSwyLjA2MiAtMC45NjEsMy4wNTggMy4xOCwxLjEzNSAxMC42ODcsOC41NzYgMTQuOTEsNi4xMTIgMi4wMTIsLTEuMTcyIDIuODY3LC03Ljg2NiAzLjAyMywtMTEuMTIxIDAuMTMsLTIuNyAtMC4yNDUsLTUuNDI0IC0xLjM0NSwtNi44NTQgeiIvPjxwYXRoIGlkPSJwYXRoODgiIHN0eWxlPSJmaWxsOiNkMzM4MzM7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTA3LjUzNSwxMTUuODc2IGMgLTAuMDE1LC0wLjQyOCAtMC4wMzMsLTAuODU5IC0wLjA1LC0xLjI5MSAtMS43NjYsLTEuMTYgLTQuNjE3LC0xLjE0NiAtNi41NTUsLTIuMTIxIDIuODU3LC0wLjEyNSA1LjEwNiwtMC44MTMgNy4wNTIsLTEuNzgzIC0wLjA0MywtMS4wNzggLTAuMDg0LC0yLjE1NSAtMC4xMjYsLTMuMjMzIC0zLjIzNywtMi4yMTYgLTYuMTk0LC01LjUxNiAtMTAuMDA1MiwtNy41OTQxIC0xLjgwMiwtMC45ODI4IC04LjEyNjIsLTMuNTExNyAtMTAuMDQzNCwtMy4wNjQ4IC0xLjA4NDcsMC4yNTE5IC0xLjE4MjQsMS41OTggLTEuNjE2LDIuODY2OCAtMC45MjM4LDIuNzE3MSAtMy4wNTA4LDcuMDQyMSAtMy4yMzYzLDExLjEzMjEgLTAuMjM2Myw1LjE2NiAtMC43NTc4LDEzLjgyNCA0LjgwOTQsMTIuNzYgNC40OTE0LC0wLjg1NyA5LjcxNTIsLTIuOTI2IDEzLjE5MjUsLTQuODI2IDIuMTI1LC0xLjE2MiAzLjM1NCwtMi41OTggNi41NzgsLTIuODQ2Ii8+PHBhdGggaWQ9InBhdGg5MCIgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6I2QzMzgzMztzdHJva2Utd2lkdGg6MjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1vcGFjaXR5OjE7c3Ryb2tlLWRhc2hhcnJheTpub25lIiBkPSJtIDEwNy41MzUsMTE1Ljg3NiBjIC0wLjAxNSwtMC40MjggLTAuMDMzLC0wLjg1OSAtMC4wNSwtMS4yOTEgLTEuNzY2LC0xLjE2IC00LjYxNywtMS4xNDYgLTYuNTU1LC0yLjEyMSAyLjg1NywtMC4xMjUgNS4xMDYsLTAuODEzIDcuMDUyLC0xLjc4MyAtMC4wNDMsLTEuMDc4IC0wLjA4NCwtMi4xNTUgLTAuMTI2LC0zLjIzMyAtMy4yMzcsLTIuMjE2IC02LjE5NCwtNS41MTYgLTEwLjAwNTIsLTcuNTk0MSAtMS44MDIsLTAuOTgyOCAtOC4xMjYyLC0zLjUxMTcgLTEwLjA0MzQsLTMuMDY0OCAtMS4wODQ3LDAuMjUxOSAtMS4xODI0LDEuNTk4IC0xLjYxNiwyLjg2NjggLTAuOTIzOCwyLjcxNzEgLTMuMDUwOCw3LjA0MjEgLTMuMjM2MywxMS4xMzIxIC0wLjIzNjMsNS4xNjYgLTAuNzU3OCwxMy44MjQgNC44MDk0LDEyLjc2IDQuNDkxNCwtMC44NTcgOS43MTUyLC0yLjkyNiAxMy4xOTI1LC00LjgyNiAyLjEyNSwtMS4xNjIgMy4zNTQsLTIuNTk4IDYuNTc4LC0yLjg0NiB6Ii8+PHBhdGggaWQ9InBhdGg5MiIgc3R5bGU9ImZpbGw6I2QzMzgzMztmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMTAuNzUsMTA5LjcxMiBjIC0wLjQ5NCwyLjgxNCAtMS4wNjUsMy42MTcgLTAuODQ0LDYuMDcyIDcuNTA1LDUuMDA0IDguOTE0LC04LjU5NSAwLjg0NCwtNi4wNzIiLz48cGF0aCBpZD0icGF0aDk0IiBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZDMzODMzO3N0cm9rZS13aWR0aDoyO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLW9wYWNpdHk6MTtzdHJva2UtZGFzaGFycmF5Om5vbmUiIGQ9Im0gMTEwLjc1LDEwOS43MTIgYyAtMC40OTQsMi44MTQgLTEuMDY1LDMuNjE3IC0wLjg0NCw2LjA3MiA3LjUwNSw1LjAwNCA4LjkxNCwtOC41OTUgMC44NDQsLTYuMDcyIHoiLz48cGF0aCBpZD0icGF0aDk2IiBzdHlsZT0iZmlsbDojZWYzZDNhO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEyMS42MTcsMTA3LjQzMSBjIDAsMCAtMi4zMzQsMy4zMzQgLTAuNjY3LDQuMzM0IDEuNjY3LDEgMy4zMzQsLTAuMDAxIDQuMzM0LDEuNjY2IDEsMS42NjcgMCwyLjY2NyAwLjMzMyw0LjY2NyAwLjMzMywyIDIuMDAxLDIuMzM0IDMuNjY3LDIuNjY3IDEuNjY2LDAuMzMzIDYuMzM0LDEgNywtMC42NjcgbCAtMiw2IC00LDEuMzMzIC0xMi42NjcsLTcuMzMzIC0wLjY2NywtMy42NjcgMCwtNy4zMzMiLz48cGF0aCBpZD0icGF0aDk4IiBzdHlsZT0iZmlsbDojZWYzZDNhO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDg2LjYxNzIsOTYuNDMwOSBjIC0wLjQwMDQsNS4yMDIxIC0wLjgyNDIsMTAuMzk3MSAtMS4yOTU3LDE1LjU5NDEgLTAuNzA1NSw3Ljc2IDEuODY0LDYuNDA2IDguNTkwNiw2LjQwNiAxLjAyNzQsMCA2LjMyNTksLTEuMjI1IDYuNzA0OSwtMiAxLjgxOCwtMy43MTMgLTMuMDQsLTIuODg4IDIuMDk0LC01LjY4OCA0LjMzNCwtMi4zNjMgMTEuOTksMS40MzUgMTAuMjM5LDYuNjg4IC0wLjk4LDEuMTY4IC01LjEwNiwwLjM2NCAtNi41ODUsMS4xMzEgLTIuNjA0LDEuMzUgLTUuMjA4LDIuNyAtNy44MTIzLDQuMDUgLTMuMzEzMiwxLjcxOSAtMTAuOTcwNyw0LjIyNSAtMTQuNTAzMSwxLjgyMyAtOC45NTA0LC02LjA4NyAwLjU2NDksLTIxLjI5NiAzLjc1NzgsLTI3LjY0NTkiLz48cGF0aCBpZD0icGF0aDEwMCIgc3R5bGU9ImZpbGw6IzIzMWYyMDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSA5NS4zODg3LDIxNC41MzIgYyAtOS4wODUyLDIuMTE2IC0xMy41OTk2LC0zLjgwMiAtMTYuMzUzNSwtOS45NCAtMi40NTksMC41OTYgLTEuNDgwNSwzLjk0IC0wLjg1OTQsNS42NDQgMS42MjYyLDQuNDcyIDguMTc5NywxMC40MjUgMTMuNTM0NCw5LjYxOCAyLjMwNDMsLTAuMzQ3IDUuNDIyNiwtMi40NTQgMy42Nzg1LC01LjMyMiIvPjxwYXRoIGlkPSJwYXRoMTAyIiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzOS42NTUsMjA0LjE4NiBjIDAuMTQzLC0wLjAwNiAwLjI4OCwtMC4wMTEgMC40MzEsLTAuMDE3IDIuMDUzLC00LjI2NSAzLjgzLC04Ljc4MyA2LjQyLC0xMi41NDggLTEuNzM1LC00LjA0MSAtMTMuMTM4LC03LjYxNyAtMTIuOTYyLC0wLjM2MSAyLjQ2NiwxLjA3OCA2LjcyMywwLjIyIDguOTA5LDEuNTk3IC0xLjI2NCwzLjQ2OSAtMy4wODgsNi40MjIgLTIuNzk4LDExLjMyOSIvPjxwYXRoIGlkPSJwYXRoMTA0IiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEwMC4wNCwyMDQuMDc1IGMgMS45NDgsLTMuNTcxIDIuNTgyLC03LjMyMyA1LjM1MSwtMTAuMDIyIDEuMjQ3LC0xLjIxNSAzLjY3MiwtMi42OTYgMi40NywtNi4wNzUgLTAuMjgxLC0wLjc5NyAtMi4zMzQsLTIuNTc0IC0zLjUxOSwtMi45MjMgLTQuMzI5LC0xLjI3OCAtMTQuNDE2MiwtMC4yNjQgLTExLjAwMDIsNS4xMzMgMy41ODAxLC0wLjE2NyA4LjM5MjIsLTIuMzI1IDExLjA2ODIsMC4yNzQgLTIuMDU1LDMuMjg1IC01LjcxODYsOS43ODQgLTQuMzcsMTMuNjEzIi8+PHBhdGggaWQ9InBhdGgxMDYiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTM4LjAzLDE2Ny43ODEgYyAtNi41MTgsLTQuMTg3IC0xMy43ODYsLTguNzQgLTI0LjQ2NiwtNy42ODQgLTIuMjgyLDEuOTg0IC0zLjE1Miw2LjM5OSAtMC45MzUsOS4zMTUgMS4xNTQsLTEuOTg0IDAuNDI5LC01LjYzMyAzLjY0NSwtNi4xODIgNi4wNiwtMS4wMzcgMTMuMTEzLDMuNzA3IDE3LjQ3Miw1LjM2NSAyLjcwMyw0LjU1NyAtMC4yMzMsNi4yMzMgLTIuNjY4LDkuMTY2IC00Ljk4NSw2LjAwOSAtMTEuNjcyLDEzLjQ1NyAtMTEuNDI5LDIyLjQ1MyAyLjAxNSwxLjQ2MSAyLjE4OSwtMi4yMyAyLjQ3OCwtMi45MDIgMi42MDMsLTYuMDkyIDkuMTU0LC0xMy44ODMgMTMuOTM1LC0xOS4wOTcgMS4xNzQsLTEuMjg0IDMuMTA3LC0yLjUxNiAzLjMyMiwtMy4zNjUgMC42MiwtMi40NjkgLTEuNjEzLC01LjQyNyAtMS4zNTQsLTcuMDY5Ii8+PHBhdGggaWQ9InBhdGgxMDgiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gNTIuMTAxNiwxNzIuMTg5IGMgLTIuMDQzLDEuMTY2IC0yLjUyOTMsNi4zMDIgLTQuOTI3OCw2LjQ0OCAtMy40Mjc3LDAuMjA4IC0yLjgwMjcsLTYuNjYzIC0yLjc4OSwtMTAuNjgxIC0yLjM1OTQsMi4xNDIgLTIuNzc0Myw4LjczNyAtMS4wNDEsMTIuMTI0IC0xLjk3NTQsMC45NyAtMi44NTc1LC0xLjA3IC0zLjk1MzIsLTEuNzg5IDEuNDA4MiwxMC4yMyAxNC45NjQ5LDQuNzQ1IDEyLjcxMSwtNi4xMDIiLz48cGF0aCBpZD0icGF0aDExMCIgc3R5bGU9ImZpbGw6IzIzMWYyMDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxNDIuMTgsMTYzLjUyMSBjIC0zLjAzNCwtNS43NzUgLTcuMzI2LC0xMi4xMzUgLTE2LjIyOSwtMTIuMzIgLTAuMTgxLDEuODY1IC0wLjMyLDQuNzAzIDAuMDEsNS44MjYgNi44MDYsMC42NTQgMTEuMDA4LDQuMTE4IDE2LjIxOSw2LjQ5NCIvPjxwYXRoIGlkPSJwYXRoMTEyIiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDk5LjUyNjYsMTU5Ljc3NyBjIDUuNjc4NCwtMi45ODYgMTYuMTE0NCwtMy4zMDcgMjMuODMyNCwtMy4wODEgMC40MTQsLTEuNjkxIDAuNDA0LC0zLjc4IDAuNDIsLTUuODQyIC05LjkyMSwtMC40OTUgLTIxLjY1MSwxLjk2IC0yNC4yNTI0LDguOTIzIi8+PHBhdGggaWQ9InBhdGgxMTQiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTguNDQ3MywxNTQuMjA5IGMgMy45MjY3LC05Ljg1OSAxNy40MjI3LC04LjcyNCAyOC44MDM3LC04LjQ1MiAtMC41MDEsLTEuMjggLTEuNTg3LC0yLjc5MiAtMi45MzcsLTMuMzM5IC0zLjY0NywtMS40ODQgLTEzLjcwNiwtMi42MSAtMTguNzY5LDAuMDc5IC0zLjIxMSwxLjcwNyAtNS4yNzQsNS41NjQgLTcuMDMzMyw3LjgyNSAtMC44NDk2LDEuMDkyIC01LjA4MDEsMy44ODEgLTAuMDY0NCwzLjg4NyIvPjxwYXRoIGlkPSJwYXRoMTE2IiBzdHlsZT0iZmlsbDojODFiMGM0O2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEzNy41NTYsOTkuODI2MiBjIC00LjYwOCwtNy44OTIyIC05LjAxNywtMTUuOTk4MSAtMTQuNDg0LC0yMi45NTk0IDIuMjkyLDYuNzM5MSAzLjI3MywxOC4wMTg0IDMuNjE5LDI2LjYxNzIgNC43OTUsMi4yNDQgOC45MDEsLTAuNTA1IDEwLjg2NSwtMy42NTc4Ii8+PHBhdGggaWQ9InBhdGgxMTgiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTYyLjM1Miw3MS40NjA5IGMgLTUuMTU5LC0xLjAzMjggLTguNzg0LC02LjA0NjggLTEzLjgxNywtNS43MjUgMi43NjYsMy44OTkzIDcuNjEzLDUuNTQzIDEzLjgxNyw1LjcyNSIvPjxwYXRoIGlkPSJwYXRoMTIwIiBzdHlsZT0iZmlsbDojMjMxZjIwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDE2NC42MjgsNjMuMzg3MSBjIC00LjIwNSwtMC40NDQxIC05LjE0NCwtMS4xMjUgLTEzLjQwOSwtMC43NzQyIDIuMDE5LDMuMDg0IDkuNzk4LDIuMDE5OSAxMy40MDksMC43NzQyIi8+PHBhdGggaWQ9InBhdGgxMjIiIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTY2LjA4NSw1Ni40MjYyIGMgLTQuNzI2LC0wLjEwMjQgLTEwLjYsLTAuMDA4MiAtMTUuMDkyLDAuMzY4NyAyLjY1NywyLjg1MzkgMTIuMDI3LDEuMDU5IDE1LjA5MiwtMC4zNjg3Ii8+PHBhdGggaWQ9InBhdGgxMjQiIHN0eWxlPSJmaWxsOiNkY2Q5ZDg7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTI4LjY2NCwzNy4zNzcgYyAwLjY3OCwtNS45MzUyIDMuMDMxLC0xMS45NDg5IDIuNzM2LC0xOC40NDg5IC0yLjYxMywtMC44ODEyIC00LjExNCwtMS42NTE5IC03LjYxNSwtMS42NDcyIC0wLjI0Nyw1LjUyNDIgLTAuOTg2LDEzLjk2OTEgLTAuNzY1LDE5LjIzNTEgMS43MjIsLTAuMTE0IDQuMjYxLDEuMjMwMSA1LjY0NCwwLjg2MSIvPjxwYXRoIGlkPSJwYXRoMTI2IiBzdHlsZT0iZmlsbDojZjBkNmI3O2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTpub25lIiBkPSJtIDEyMS4wNDUsMTI0Ljg0OSBjIC0yLjM3MywtMS41NDkgLTQuMzk0LC0zLjQ4MyAtNi42NzMsLTUuMTM3IC01LjA1NCwtMC4yNSAtNy44MTIsMC4zNSAtMTEuNTI1LDMuMjUyIDAuMDYxLDAuMjMzIDAuNDM0LDAuMTI5IDAuNDQ4LDAuNDE1IDUuNDEsLTIuNDExIDEyLjI4NywwLjk4MiAxNy43NSwxLjQ3Ii8+PHBhdGggaWQ9InBhdGgxMjgiIHN0eWxlPSJmaWxsOiM4MWIwYzQ7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTIuNjQ0NSw4Ny45NzExIGMgMS40ODY0LDYuNDQxIDcuMzEwNiw5Ljc3NjkgMTIuNTk5NSwxMy4zMjM5IDUuNDU5LC02LjkyODIgOC43NzksLTE1LjgzOCAxMi40MzUsLTI0LjQzNiAtOC42MzgsMi42MDM5IC0xNy40NjQsNi44Mjg5IC0yNS4wMzQ1LDExLjExMjEiLz48cGF0aCBpZD0icGF0aDEzMCIgc3R5bGU9ImZpbGw6IzIzMWYyMDtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6bm9uZSIgZD0ibSAxMjMuMDIsMzYuNTE2IGMgLTAuMjIxLC01LjI2NiAwLjUxOCwtMTMuNzEwOSAwLjc2NSwtMTkuMjM1MSAzLjUwMSwtMC4wMDQ3IDUuMDAyLDAuNzY2IDcuNjE1LDEuNjQ3MiAwLjI5NSw2LjUgLTIuMDU4LDEyLjUxMzcgLTIuNzM2LDE4LjQ0ODkgLTEuMzgzLDAuMzY5MSAtMy45MjIsLTAuOTc1IC01LjY0NCwtMC44NjEgeiBNIDY4LjUwNTksNjYuNDY0OCBDIDcwLjgxNDUsNDUuMjQxOCA3NC4xNTgyLDI3LjQwMTIgODAuMjkxLDguNjA3ODEgOTMuOTAyMyw0LjQ3NSAxMTAuMzExLDQuMTE0ODQgMTIyLjM0Miw3Ljg0NDE0IDEyMC4xMzMsMTguNDUxMiAxMjEuMDk4LDMxLjM2NDggMTE5LjgwNyw0Mi42ODQgYyAtMC45NzMsOC41MDc4IC0wLjQ3NywxNy4wNjggLTEuODExLDI1Ljc0OCAtMTQuNTc4LDMuMDMyOCAtMzUuMTgzNSwwLjcwOSAtNDkuNDkwMSwtMS45NjcyIHogbSA1Mi45MzcxLDEuODM0IGMgLTAuMTIzLC05LjExNDggMC40MDgsLTE4LjEwNTggMS4xMDQsLTI3LjIzMiAzLjUsMC41MjU0IDUuODc1LDAuODc2MiA5LjEyNywxLjU4OTEgLTEuMDU2LDguNzg1OSAtMC45MjYsMTguNjcyMiAtMy4wNzcsMjYuNDQ0MSAtMi40ODYsLTAuMDIzOCAtNC42NzUsMC4wMjg5IC03LjE1NCwtMC44MDEyIHogbSAxNy43NTUsMS40NjkyIGMgLTEuNjYxLDAuMzgwOCAtMy41OTUsMC4wMTQ4IC01LjE4MiwtMC4wMTYgMC43NDYsLTcuNDMwMSAyLjU1NiwtMTUuNjI5IDMuMTkzLC0yMy40MjgyIDIuNDk3LC0wLjA3NzcgMy44MzEsMS4xIDUuODg1LDEuNDk2MSAwLjExLDYuODQ2MSAtMC41OTgsMTYuMjc4MSAtMy44OTYsMjEuOTQ4MSB6IG0gMjYuODg0LC0yNC41NjI5IGMgNS4yMDUsMS4yNjQgOC40NzgsNy42MzkgNy4wMjIsMTQuMTg1OSAtMC45NzcsNC40IC0yLjcxNywxMi42ODUyIC00LjU3OSwxNS41IC0xLjM3NiwyLjA4MiAtNS4xMDcsNC44MDc4IC04LjA4NiwyLjkgLTQuODQ2LC0zLjEwMzEgLTEzLjM4MywtNC4wMDM5IC0xNi45MTcsLTcuNzYwMSAxLjc3MiwtNS45IDIuMzIyLC0xNC4wMDM5IDMuMDUzLC0yMS40Nzk3IDYuMDU0LC0wLjM3NzQgMTMuNTAzLDEuNjY2IDE4LjUzOCwtMC41MDI0IC0zLjUxNSwtMS4xMzg2IC04LjA3NiwtMS4xNDc2IC0xMS4xMTMsLTIuODA3IDIuNDgyLC0xLjE5ODggOC4yOTMsLTAuOTU2NiAxMi4wODIsLTAuMDM2NyB6IE0gMTE3LjY3OSw3Ni44NTkgYyAtMy42NTYsOC41OTggLTYuOTc2LDE3LjUwNzggLTEyLjQzNSwyNC40MzYgQyA5OS45NTUxLDk3Ljc0OCA5NC4xMzA5LDk0LjQxMjEgOTIuNjQ0NSw4Ny45NzExIDEwMC4yMTUsODMuNjg3OSAxMDkuMDQxLDc5LjQ2MjkgMTE3LjY3OSw3Ni44NTkgeiBtIDkuMDEyLDI2LjYyNSBjIC0wLjM0NiwtOC41OTg4IC0xLjMyNywtMTkuODc4MSAtMy42MTksLTI2LjYxNzIgNS40NjcsNi45NjEzIDkuODc2LDE1LjA2NzIgMTQuNDg0LDIyLjk1OTQgLTEuOTY0LDMuMTUyOCAtNi4wNyw1LjkwMTggLTEwLjg2NSwzLjY1NzggeiBtIC0xMC4yMTYsMy42MyBjIC0yLjA3MSwwLjIyMyAtMy44MjksLTIuMzgxIC02LjUyMiwtMS4yNTUgLTAuNjE3LC0wLjY4MiAtMS4xNzgsLTEuNDIxIC0xLjgwNywtMi4wODcgNS45NDgsLTcuMTY4MSA4LjY1MSwtMTcuMzM4IDEzLjI0NSwtMjUuNzYxOCAyLjQ2NSw4LjA5MTggMi4xODEsMTYuOTU3IDIuNzI0LDI1Ljc4ODggLTMuMzg3LC0wLjIxNSAtNS4yNjYsMy4wNjMgLTcuNjQsMy4zMTUgeiBtIC02LjU2OSw4LjY3IGMgLTAuMjIxLC0yLjQ1NSAwLjM1LC0zLjI1OCAwLjg0NCwtNi4wNzIgOC4wNywtMi41MjMgNi42NjEsMTEuMDc2IC0wLjg0NCw2LjA3MiB6IG0gLTguOTQ5LDIuOTM4IGMgLTMuNDc3MywxLjkgLTguNzAxMSwzLjk2OSAtMTMuMTkyNSw0LjgyNiAtNS41NjcyLDEuMDY1IC01LjA0NTcsLTcuNTk0IC00LjgwOTQsLTEyLjc2IDAuMTg1NSwtNC4wOSAyLjMxMjUsLTguNDE1IDMuMjM2MywtMTEuMTMyMSAwLjQzMzYsLTEuMjY4OCAwLjUzMTMsLTIuNjE0OSAxLjYxNiwtMi44NjY4IDEuOTE3MiwtMC40NDY5IDguMjQxNCwyLjA4MiAxMC4wNDM0LDMuMDY0OCAzLjgxMTIsMi4wNzgxIDYuNzY4Miw1LjM3ODEgMTAuMDA1Miw3LjU5NDEgMC4wNDIsMS4wNzggMC4wODMsMi4xNTUgMC4xMjYsMy4yMzMgLTEuOTQ2LDAuOTcgLTQuMTk1LDEuNjU4IC03LjA1MiwxLjc4MyAxLjkzOCwwLjk3NSA0Ljc4OSwwLjk2MSA2LjU1NSwyLjEyMSAwLjAxNywwLjQzMiAwLjAzNSwwLjg2MyAwLjA1LDEuMjkxIC0zLjIyNCwwLjI0OCAtNC40NTMsMS42ODQgLTYuNTc4LDIuODQ2IHogbSAtMzMuMjEzNiw2LjAzMyBjIC0yLjg4NiwtMi45MyA4LjA5NDUsLTYuOTI0IDExLjU5MDYsLTcuMTM5IC0wLjAxOTUsMS44NTQgMS4wNTY2LDMuNjAyIDAuODM5OCw0LjkzMiAtNC4xNTIzLDAuNzI5IC05LjYwOTMsMC4yNDggLTEyLjQzMDQsMi4yMDcgeiBtIDM1LjU1MTYsLTEuMzc2IGMgLTAuMDE0LC0wLjI4NiAtMC4zODcsLTAuMTgyIC0wLjQ0OCwtMC40MTUgMy43MTMsLTIuOTAyIDYuNDcxLC0zLjUwMiAxMS41MjUsLTMuMjUyIDIuMjc5LDEuNjU0IDQuMywzLjU4OCA2LjY3Myw1LjEzNyAtNS40NjMsLTAuNDg4IC0xMi4zNCwtMy44ODEgLTE3Ljc1LC0xLjQ3IHogbSAzMi42MzIsLTkuODk1IGMgLTAuMTU2LDMuMjU1IC0xLjAxMSw5Ljk0OSAtMy4wMjMsMTEuMTIxIC00LjIyMywyLjQ2NSAtMTEuNzMsLTQuOTc3IC0xNC45MSwtNi4xMTIgMC4zNDYsLTAuOTk2IDAuOTE3LC0xLjc4NSAwLjk2MSwtMy4wNTggMS44ODEsMC40NjMgNC4xNzEsMC4xNDYgNS44MDEsLTAuNjU1IC0xLjg4NSwtMC4yMTEgLTMuOTc1LC0wLjE5NyAtNS4yMjIsLTEuMDk1IC0wLjQ1NywtMS4zMjEgMC4xMTIsLTMuMTIxIC0wLjE5MiwtNC45NTUgNC40NzQsLTEuMjYyIDkuNTg0LC0xLjkzNCAxNS4yNCwtMi4xIDEuMSwxLjQzIDEuNDc1LDQuMTU0IDEuMzQ1LDYuODU0IHogbSAtNzMuMDQyMiw4LjQzNyBjIC0wLjkwNjMsMC42NDYgLTcuMDM3MSw4LjYyMyAtNy44NzcsOC4yOTIgQyA0My45MTQxLDEyNS44MzggMzMuNTQxLDExOC4yNzMgMjQuMjcxNSwxMTEuMTE4IDMzLjEwOTQsOTIuMTUzOSAzNi42NzcsNjguOTE5OSAzNy4zMDc0LDQ2LjUyNjIgNDcuNDMxNiw0MS43OTEgNTYuMzI0MiwzNC45NjQ4IDcwLjA2MjUsMzQuMjUyIDY4LjQ3MjcsNDUuNSA2Ny4wMjE1LDU1LjUzNTIgNjYuMTE5MSw2Ni4xMjUgYyAtMy40NTE5LDEuNDU1MSAtOC40MDQzLC0wLjA2NiAtMTEuNjM0NywwLjQ1MTIgLTAuMDI3NCwzLjg5MjkgNC45MzM2LDEuNzA0NyA1LjM0NjgsNC4zMjI2IDAuMzExNCwxLjk4MDEgLTIuNzI5NiwyLjEzMDEgLTEuNzM5NCw1LjI0ODEgMi41MjU0LC0wLjkxOCAzLjg1MTYsLTIuOTQ1NyA2LjU0NDksLTMuNzA3MSAyLjQ2MSw1LjM4NCAtMC4wMzQ0LDE0LjkxMDIgMC4zMjAzLDE5LjQxMDIgMC4wNjcyLDAuODQ0OSAwLjQyMTksNC42ODA5IDIuMzE0NSw0LjAwNzggMS42NzUsLTAuNTk1NyAtMC4wOTU3LC0xMC4yMDE5IDAuMDg3OSwtMTQuNDYwOSAwLjE2NzIsLTMuOTIzOSAtMC40NzM5LC03LjcyMDcgMS4xMTUyLC0xMC4xODQgMTMuMjc1NCwxLjgwNyAyNi43NjU2LDIuOTc1IDQxLjEyOTQsMy4zNjkxIC0zLjE2LDEuMzU1OSAtNi45MTQsMi42MzkxIC0xMS4wMjk4LDQuOTU5IC0yLjIzMTIsMS4yNTc4IC05LjI2NDQsMy44NzUgLTkuOTA4Miw1Ljk5NDIgLTEuMDI3MywzLjM3NjkgMi42OTUzLDUuMTc1NyAzLjMzMiw4LjA3MDcgLTYuNzAxMSwtMy42NTQ3IC04LjAwODUsMy41MDMxIC05LjU5MzcsOC41NzQxIC0xLjQzNjMsNC41OTMgLTIuMjUzOSw4LjAyNCAtMi42MDYzLDEwLjY3MyAtNS43NzI2LDIuNzUyIC0xMS45NDQ1LDUuNTM5IC0xNi45MTMyLDkuMDY4IHogbSA2Ny4xNzkyLDcuMzI3IGMgOS4yNDMsNC40ODIgMTAuOTA5LC0xNi43NTEgNy4yODYsLTIzLjU5MSAwLjU2LC0yLjA0IDIuNDg2LC0yLjgyMSAzLjI3MiwtNC42NTUgLTUuMTU4LC05LjIzOTkgLTEwLjg4NywtMTcuODY0OSAtMTYuMTUsLTI2Ljk5NjEgMy45MTUsMi40MzcxIDkuNTA3LDAuNDM1OSAxNC4xMTQsMi4yNjAxIDEuNjg0LDAuNjY2IDIuOTAzLDQuNTIxMSA0LjE3OCw3LjYwNTEgMy41MDcsOC40ODQ4IDcuMTg5LDE5LjE4MTkgOC44MjcsMjcuMjc4OSAwLjM3LDEuODQ1IDEuMzc4LDUuODY1IDEuMTUyLDcuNTA3IC0wLjQwMywyLjk0IC00LjM5Miw1LjEyIC02LjQyMSw2LjkzOCAtMy43MzgsMy4zNTggLTYuMDkyLDYuMzEzIC05Ljk5MSw5LjQ1MyAtMS41ODEsLTIuMzM0IC00Ljk3NCwtMy45MDIgLTYuMjY3LC01LjggeiBtIC04OC4zMTc5LDgxLjk2OCBjIC00LjQwNDMsLTQuODQ2IC0zLjQ4MjQsLTEzLjkyNiAtMi45NDkyLC0yMC4zODYgNy45NjA5LDUuMDA4IDE4LjUyNzMsLTAuMzk2IDE4LjQyNzcsLTguOTE0IDMuODAwOCwwLjEwMSAxLjQxOTksNC43NDcgMC43MzI0LDcuNzQgLTIuMjQ2OCw5Ljc3NiAzLjc4NTIsMjAuMzk3IDAuMjczNSwyOS4zMzcgLTYuODE4NCwtMC41MTcgLTEyLjQyLC0zLjMwMiAtMTYuNDg0NCwtNy43NzcgeiBtIDMxLjUxMzcsMjguMTI2IGMgLTkuOTcwNywtMi44MjYgLTIyLjc0OTMsLTEwLjA3MSAtMjYuODQ2NSwtMTkuMDI4IDMuMTcyNiwwLjQ2MSA1LjM3NSwyLjA2MSA4LjUwNDcsMi4yNTkgMS4xODI4LDAuMDc3IDIuNzMyNCwtMC40OTYgNC4wOTE4LC0wLjE1OCAyLjcwOSwwLjY3MiA0Ljk5NTMsNi43NDYgNy4wMzksOS4wMDYgMS45OTIyLDIuMjA3IDQuMzg2NywzLjE1IDYuMDI1NCw1LjE2MiAxLjA1MjgsMC41MDggMi42MDk0LDAuNDczIDIuNjY5MiwyLjA1NCAtMC40NTYzLDAuNDg4IC0wLjkzNjgsMC44NiAtMS40ODM2LDAuNzA1IHogbSA1MS45MDMyLC0yLjY1OCBjIC0xMC4zNDksNS44MzkgLTI3Ljg2NjEsMTAuMjMxIC0zOC44NzQ3LDQuNzQzIC04Ljg4MjgsLTQuNDI5IC0yMC44ODk5LC0xMS43NTcgLTI0Ljk4MzYsLTIxLjA0MyAzLjgyNDIsLTguOTYxIC0xLjEzMjgsLTE3LjE3MiAtMS40NDkyLC0yNi4yNyAtMC4xNjgsLTQuODQxIDIuMjc5MywtOS4wNjcgMi40NjY4LC0xNC4zMzcgLTEuMzA4NiwtMi4xNTkgLTUuMzA2NywtMi40MjUgLTguMDc0MywtMi4yNzcgLTAuOTMxNiw0LjY2MiAtMi41NjI1LDkuOTAyIC03LjM2MzIsMTAuNDI4IC02Ljc5MywwLjc0MyAtMTEuNzU5OCwtNC44NzkgLTEyLjA2ODQsLTEwLjc1NCAtMC4zNjUyLC02LjkwOSA1LjMwNjYsLTE4LjM2IDEzLjM0NTcsLTE3LjU2NSAzLjEwNTUsMC4zMDcgMy44Njg0LDMuNDIgNy4yNTIsMy4zODggMS44MzM5LC0zLjY1OSAtMi44Mjg5LC00LjgwOCAtMy4zMDg2LC03LjQyNSAtMC4xMjUsLTAuNjc2IDAuMzg2NywtMy4zMTggMC42ODQzLC00LjU1NyAxLjQ2MDIsLTYuMDMzIDQuNzE1MywtMTMuODQxIDcuOTE5MiwtMTguNDM0IDQuMDY2NCwtNS44MjYgMTIuMDU1NSwtNi43MDQgMjAuNjUwNCwtNy4yNzUgMS41MzUxLDMuMzA3IDcuMTkwMiwzLjAzNSAxMC44NzUsMi4xNyAtNC40MTYsMS43NDkgLTguNTIxNSw1Ljk4OSAtMTEuOTIzOSw5Ljc0MiAtMy45MDgyLDQuMzA2IC03Ljg2NzEsOC45MjUgLTguMDY3MSwxNC41NTMgNy4zODU1LC0xMC4yNDYgMTMuNDg3MSwtMTkuMTk0IDI2LjkxNjgsLTIzLjcwMSAxMC4xNjE4LC0zLjQwOCAyMi4wMjk4LDEuNTYyIDI5LjgzNzgsNy4wNDUgMy4yNCwyLjI3OSA1LjE3NCw1Ljg5NSA3LjQ3Nyw5LjIwNSA4LjYxNywxMi4zOTUgMTIuNjM4LDMwLjA4NyAxMS43NTQsNDcuMjM1IC0wLjM2NCw3LjA3MiAtMC4zNDgsMTQuMTIgLTIuNzIxLDE4Ljg3OCAtMi40OCw0Ljk3NSAtMTAuODY4LDkuNDI2IC0xNS43NzgsNC45MjYgLTAuOTEsNC44MzggNC4wODMsNy44MyA5Ljk0OCw2LjA4OSAtNC4xODIsNS4zOTcgLTguNTcxLDExLjg4MiAtMTQuNTE1LDE1LjIzNiB6IE0gMTQ0LjQ0NCw3Ny4xMTY4IGMgOC4wODcsNC4wMjAzIDIzLjE5NywxMC44MjExIDI4LjI2NywtMC4wMTQ4IDEuODcxLC0zLjk5NDIgNC4wNjYsLTEwLjc0NjEgNS4wMzUsLTE0Ljg2OTIgMS4zNjksLTUuODE2OCAtMS40ODQsLTE4LjA0MyAtNy40NjMsLTE5Ljk5NDkgLTUuMjgxLC0xLjcyMzggLTExLjQ0MywtMS42MTg4IC0xNy44MDQsLTAuMzQxIC0wLjc0OSwwLjYyMyAtMS41ODMsMS43MDkgLTIuMTY2LDIuODQxIC00LjU0MiwwLjE3NjIgLTguNzk1LC0wLjI0MzggLTEyLjM4MywtMi4xMTA5IDAuMzQsLTMuMzU5IC0xLjkzMiwtMy44OTgxIC00LjA2MiwtNC41ODk5IC0xLjU3OSwtNi4yNjA5IDMuMTU5LC0xNC40MzcxIDIuMDI1LC0yMC4xNDYxIC0wLjgwOSwtNC4wNjcyIC01LjgxMywtNC42OTYxIC05LjQ5MSwtNS40NTcgLTAuMTIsLTIuMjYwMiAwLjE2MSwtNC4xNDY4OSAwLjQxMiwtNi4wNTkgLTAuODQxLC0zLjA5ODgzIC00LjYxMywtNC44NjI4OSAtOC4xODcsLTUuMjk0OTIgLTExLjc1OSwtMS40MTQwNjQgLTI5LjYxMzMsLTIuMDQ5MjIxIC00MC45MjM5LDIuMDE3OTcgLTMuMTU2Miw3Ljc0MTc1IC01LjY0MjYsMTcuMTU3ODUgLTguMjcxNSwyNS45OTgwNSAtMTEuMDMxMiwtMS4xNzgxIC0xOS45NTMxLDQuNzU5OCAtMjguMzY0LDguNjUgLTIuOTEyMSwxLjM1IC02Ljk0MDYsMi4wOTM3IC04LjAyODUsNC40MTE3IC0xLjA1NDcsMi4yNDQyIC0wLjYyMzEsNi41NDUzIC0wLjg4NDgsMTAuNjA4MiAtMC42NjYsMTAuMzc3IC0xLjIzNjMsMjAuMzg2IC0zLjk3NjYsMzEuMDExIC0xLjIzMDQsNC43Njc5IC0zLjM3NSw4Ljk3NSAtNC44NzExLDEzLjU2OTEgLTEuMzgyOCw0LjI1NzkgLTMuNzk4OCw5LjUxOTkgLTQuNDI4OSwxMy43NjU5IC0wLjkzNDMsNi4yOTMgNC45OTE0LDYuNjQzIDguNzgwNSw5LjM3IDUuODU3NCw0LjIxNyAxMC40NTUxLDYuNTQ5IDE2Ljc5ODgsMTAuMzU1IDEuODc4OSwxLjEyNyA3LjU0NSwzLjk4IDguMTg5NSw1LjI5NCAxLjI4MTIsMi42MDUgLTIuMTk5Miw2LjI3OCAtMy4xMjk3LDguMzIgLTEuNDcxOSwzLjIyOSAtMi4yMzk1LDUuOTcyIC0yLjQ1MDQsOS4xNTggLTUuMzIxNSwwLjg0MSAtOS4zNTU1LDQuMDA4IC0xMS43OTIyLDcuNTc5IC00LjAzMDgsNS45MSAtNi44MjYyLDE2Ljg0NCAtMy4zMzg3LDI1LjE2MSAwLjI3MzUsMC42NTUgMS42Mzc1LDEuOTQzIDEuODM4NywyLjk0OSAwLjM5NjksMS45ODEgLTAuNzQ2OSw0LjYxNSAtMC44MTgsNi43MjIgLTAuMzY2NCwxMC44MSAxLjgyOSwyMC4xMjQgOS4xMDYzLDIzLjM4NCAyLjk1NDMsMTEuNzY5IDEzLjUyODEsMTUuNjgyIDIzLjQ5MDIsMjEuNTMxIDMuNzIzOSwyLjE4NiA3LjgyODksMy41ODMgMTIuMDY4NCw1LjE0MyAxNS4yMDgyLDUuNTk3IDM4LjU0MTksNC41NDMgNTEuMTYzOSwtNS4wMDMgNS4zNTIsLTQuMDQ4IDEzLjkwNywtMTIuNTk1IDE2Ljk2NywtMTguNzgzIDguMDgyLC0xNi4zMzcgNy41MDgsLTQzLjY0IDEuODU1LC02My41MTMgLTAuNzYsLTIuNjY4IC0xLjg2MiwtNi41OSAtMy40MDEsLTkuNzk1IC0xLjA3MywtMi4yMzggLTQuNDA4LC02LjcxNiAtNC4wMDMsLTguNjkyIDAuNDE3LC0yLjA0MyA3LjYwNCwtNy41IDkuMTQ1LC04Ljk4NiAyLjc3NSwtMi42NzcgOC4wNDcsLTYuMjMgOC40NzQsLTkuNjA4IDAuNDU5LC0zLjU5NSAtMS41ODQsLTguNTEzIC0yLjYxOSwtMTEuOTgyIC0zLjQ2LC0xMS41NzY5IC02LjgzNiwtMjIuMjc4MSAtMTAuNzU5LC0zMi41OTkyIi8+PHBhdGggaWQ9InBhdGgxMzIiIHN0eWxlPSJmaWxsOiNmN2U0Y2Q7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gOTAuNDkxLDE1Ny4yNTUgYyAwLjQzODcsMC41ODQgMi44NTA4LDEuNDcxIDYuMjI1OCwtMC4xNTQgMCwwIC00LC0wLjY2NyAtMy42NjcyLC03LjMzNiBsIC0xLjY2NjgsMC4zMzQgYyAwLDAgLTEuNzIyNiw2LjA0NyAtMC44OTE4LDcuMTU2Ii8+PHBhdGggaWQ9InBhdGgxMzQiIHN0eWxlPSJmaWxsOiMxZDE5MTk7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTE5LjcxNyw5OS45MzQgYyAwLC0xLjAxMjEgLTAuODIxLC0xLjgzMjggLTEuODM0LC0xLjgzMjggLTEuMDEyLDAgLTEuODMzLDAuODIwNyAtMS44MzMsMS44MzI4IDAsMS4wMTIgMC44MjEsMS44MzQgMS44MzMsMS44MzQgMS4wMTMsMCAxLjgzNCwtMC44MjIgMS44MzQsLTEuODM0Ii8+PHBhdGggaWQ9InBhdGgxMzYiIHN0eWxlPSJmaWxsOiMxZDE5MTk7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIGQ9Im0gMTIxLjU1LDkxLjQzNCBjIDAsLTEuMDEyMSAtMC44MjEsLTEuODMyOCAtMS44MzQsLTEuODMyOCAtMS4wMTIsMCAtMS44MzMsMC44MjA3IC0xLjgzMywxLjgzMjggMCwxLjAxMjEgMC44MjEsMS44MzQgMS44MzMsMS44MzQgMS4wMTMsMCAxLjgzNCwtMC44MjE5IDEuODM0LC0xLjgzNCIvPjwvZz48L2c+PC9zdmc+"
       preserveAspectRatio="none"
       id="image193" /></a>
    <g
       transform="translate(-0.5,-0.5)"
       id="g201">
      <switch
         id="switch199">
        <foreignObject
           pointer-events="none"
           width="100%"
           height="100%"
           requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"
           style="overflow: visible; text-align: left;">
          <xhtml:div
             style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 12px; height: 1px; padding-top: 350px; margin-left: 596px;">
            <xhtml:div
               data-drawio-colors="color: #D33833; "
               style="box-sizing: border-box; font-size: 0px; text-align: center;">
              <xhtml:div
                 style="display: inline-block; font-size: 12px; font-family: Helvetica; color: rgb(211, 56, 51); line-height: 1.2; pointer-events: all; font-weight: bold; white-space: normal; overflow-wrap: normal;">
                                CI<xhtml:br />
server
                            </xhtml:div>
            </xhtml:div>
          </xhtml:div>
        </foreignObject>
        <text
           x="602"
           y="325"
           fill="#d33833"
           font-family="Helvetica"
           font-size="12px"
           text-anchor="middle"
           font-weight="bold"
           id="text197">CI...</text>
      </switch>
    </g>
  </g>
</svg>
    </div>
</div>

Note:
* Config update + promotion via CI server
* app of apps pattern
* stages could be resolved using appset
* misc = cross cutting concerns, netpols, rbac, SAs, svcs, etc.
* argocd-repo maintained by platform team
* team repo maintained by app team
* Advanced:
  * How to manage multiple clusters? Configure in `values.yaml`
