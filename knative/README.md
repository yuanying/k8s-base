
## Install CRD

```
kubectl apply --selector knative.dev/crd-install=true \
  --filename https://github.com/knative/serving/releases/download/v0.9.0/serving.yaml
```

## Install knative

```
kubectl apply \
  --filename https://github.com/knative/serving/releases/download/v0.9.0/serving.yaml
```
