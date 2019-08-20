## Render src.yaml

```bash
$ helm template -n ing ~/src/github.com/helm/charts/stable/nginx-ingress \
  -f src/values.yaml \
  --namespace ingress \
  --kube-version 1.15 \
  > src.yaml
```