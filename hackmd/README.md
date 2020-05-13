# Render template

```console
$ helm repo add bitnami https://charts.bitnami.com/bitnami
$ helm template hmd0 bitnami/postgresql -f values-postgres.yaml \
  > src/postgres.yaml
```
