```
curl -O https://raw.githubusercontent.com/longhorn/longhorn/master/deploy/longhorn.yaml
```

## on all nodes

```
sudo zfs create -o mountpoint=/var/lib/longhorn tank/longhorn
```
