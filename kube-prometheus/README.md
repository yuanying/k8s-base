
```
find ~/src/github.com/coreos/kube-prometheus/manifests/ -name '*.yaml' | xargs -n1 sed -e '1i ---' > kube-prometheus/base/src.yaml
find ~/src/github.com/coreos/kube-prometheus/manifests/setup/ -name '*.yaml' | xargs -n1 sed -e '1i ---' > kube-prometheus/setup.yaml
```
