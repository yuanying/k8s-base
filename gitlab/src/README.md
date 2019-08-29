## Render charts

```bash
$ helm template -n g0 ~/go/src/gitlab.com/charts/gitlab \
  -f gitlab/src/values.yaml \
  --namespace gitlab \
  --kube-version 1.12 \
    --output-dir ~/go/src/github.com/yuanying/k8s-base
```
