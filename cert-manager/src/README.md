## Prerequisites

```console
$ helm repo add jetstack https://charts.jetstack.io
$ helm repo update
$ helm fetch --version v0.9.1 --untar -d ./src jetstack/cert-manager
```

## Render src.yaml

```console
$ helm template -n cm ./src/cert-manager \
  -f src/values.yaml \
  --namespace cert-manager \
  --kube-version 1.15 \
  > src.yaml
```
