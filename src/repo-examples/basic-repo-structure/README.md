Bases on GitOps playground, adopted to match newest cloudogu insights


Tested with GOP commit [`447b424`](https://github.com/cloudogu/gitops-playground/commit/447b424), 
special build for deploying GOP without Argo CD but with argo CD repos.


```bash
VERSION=' 447b424' 
bash <(curl -s "https://raw.githubusercontent.com/cloudogu/gitops-playground/$VERSION/scripts/init-cluster.sh")

 docker run --rm -t  \
    -v ~/.config/k3d/kubeconfig-gitops-playground.yaml:/home/.kube/config \
    --net=host \
    ghcr.io/cloudogu/gitops-playground:$VERSION --yes  --ingress-nginx --base-url=http://localhost -x

kubectl create ns argocd

# Repo credentials
kubectl apply -f - <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: argocd-repo-creds-scmm
  namespace: argocd
  labels:
    argocd.argoproj.io/secret-type: repo-creds
stringData:
  password: admin
  url: http://scmm.scm-manager.svc.cluster.local/scm
  username: admin
EOF

helm template argocd argo/argo-cd --version 6.0.14 --namespace argocd --values cluster-resources/apps/argocd/values.yaml | kubectl apply -f-

# Argo CD Password
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

# Port-Forward SCMM 
SCMM_HOST=scmm.localhost:9090
TMP_REPO=$(mktemp -d)
git clone "http://admin:admin@$SCMM_HOST/scm/repo/argocd/cluster-resources" "${TMP_REPO}"
cp -r cluster-resources/* "${TMP_REPO}"

(cd "${TMP_REPO}"
git config commit.gpgSign false
git add .
git commit -m "Add argo cd folder"
git push origin main
)
rm -rf "${TMP_REPO}"

# Bootstrap Argo CD
k apply -n argocd -f cluster-resources/apps/argocd/projects
k apply -n argocd -f cluster-resources/argocd/argocd.yaml
```
