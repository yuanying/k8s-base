## Render src.yaml

```bash
$ helm template -n mlb0 ~/src/github.com/helm/charts/stable/metallb \
  -f src/values.yaml \
  --namespace metallb > src.yaml
```