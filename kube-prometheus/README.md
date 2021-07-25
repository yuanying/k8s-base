
```
find ~/src/github.com/prometheus-operator/kube-prometheus/manifests/ -maxdepth 1 -name '*.yaml' -not -name 'prometheus-serviceMonitorKubelet.yaml' | xargs -n1 sed -e '1i ---' > kube-prometheus/base/src.yaml
find ~/src/github.com/prometheus-operator/kube-prometheus/manifests/setup/ -name '*.yaml' | xargs -n1 sed -e '1i ---' > kube-prometheus/setup.yaml
```
