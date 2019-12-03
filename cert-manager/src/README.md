## Prerequisites

```console
$ helm repo add jetstack https://charts.jetstack.io
$ helm repo update
$ helm fetch --version v0.12.0 --untar -d ./src jetstack/cert-manager
```

## Render 000-crds.yaml

```console
$ curl -OL https://raw.githubusercontent.com/jetstack/cert-manager/release-0.12/deploy/manifests/00-crds.yaml
```

## Render src.yaml

```console
$ helm template cm jetstack/cert-manager \
  -f src/values.yaml \
  --namespace cert-manager \
  --version v0.12.0 \
  > src.yaml
```
