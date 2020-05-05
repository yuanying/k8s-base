## Render src.yaml

```bash
$ helm template ing ~/src/github.com/helm/charts/stable/nginx-ingress \
  -f src/values.yaml \
  --namespace ingress \
  > src.yaml
```
