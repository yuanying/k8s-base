## Before apply

```bash
kubectl taint nodes ${NODE} dedicated=nfs:NoSchedule
kubectl label node ${NODE} dedicated=nfs
```