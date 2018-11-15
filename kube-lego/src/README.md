## Render src.yaml

```bash
$ helm template -n certs ~/go/src/github.com/helm/charts/stable/kube-lego \
  -f src/values.yaml \
  --namespace ingress \
  --kube-version 1.12 \
  > src.yaml
```