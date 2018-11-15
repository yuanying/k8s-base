## Render src.yaml

```bash
$ helm template -n ing ~/go/src/github.com/helm/charts/stable/nginx-ingress \
  -f src/values.yaml \
  --namespace ingress \
  --kube-version 1.12 \
  > src.yaml
```