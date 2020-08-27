## Render src.yaml

```
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm repo update
```

```bash
$ helm template ing ingress-nginx/ingress-nginx --namespace ingress \
    -f nginx-ingress/src/values.yaml \
    > nginx-ingress/src.yaml
```
