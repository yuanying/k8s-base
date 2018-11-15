## Render src.yaml

```bash
$ helm template -n mlb0 ~/go/src/github.com/helm/charts/stable/metallb \
  -f src/values.yaml \
  --namespace metallb > src.yaml
```