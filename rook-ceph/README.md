## Prepare

```
curl -O https://raw.githubusercontent.com/rook/rook/v1.5.12/cluster/examples/kubernetes/ceph/crds.yaml
curl -O https://raw.githubusercontent.com/rook/rook/v1.5.12/cluster/examples/kubernetes/ceph/common.yaml
curl -O https://raw.githubusercontent.com/rook/rook/v1.5.12/cluster/examples/kubernetes/ceph/operator.yaml
curl -O https://raw.githubusercontent.com/rook/rook/v1.5.12/cluster/examples/kubernetes/ceph/cluster-on-pvc.yaml
```

Modify storageClassName to zfslocal

## Install

```
k apply -f base/rook-ceph/common.yaml -f base/rook-ceph/crds.yaml
kustomize build rook-ceph | k apply -f -
```
