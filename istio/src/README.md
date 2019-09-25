```
export ISTIO_VERSION=1.3.0
curl -L https://git.io/getLatestIstio | sh -
cp istio-${ISTIO_VERSION}/install/kubernetes/helm/istio-init/files/crd-* crd/
helm template \
  --namespace=istio-system \
  `# Enable sidecar injection.` \
  --set sidecarInjectorWebhook.replicaCount=2 \
  --set sidecarInjectorWebhook.enableNamespacesByDefault=true \
  --set global.proxy.autoInject=disabled \
  `# Knative does not need mixer.` \
  --set prometheus.enabled=false \
  --set mixer.enabled=false \
  --set mixer.policy.enabled=false \
  --set mixer.telemetry.enabled=false \
  `# Disable galley.` \
  --set galley.enabled=false \
  --set global.useMCP=false \
`# Enable SDS in the gateway to allow dynamically configuring TLS of gateway.` \
  --set gateways.istio-ingressgateway.sds.enabled=true \
  `# Pilot do not need a sidecar.` \
  --set pilot.sidecar=false \
  --set pilot.resources.requests.memory=128Mi \
  `# More pilot replicas for better scale` \
  --set pilot.autoscaleMin=2 \
  `# Set pilot trace sampling to 100%` \
  --set pilot.traceSampling=100 \
  `# Disable policy check, but enable security because it needs aut-injection webhook` \
  --set security.enabled=true \
  --set security.replicaCount=2 \
  --set global.disablePolicyChecks=true \
  `# Need at least 2 replicas to workaround https://github.com/istio/istio/issues/12602 and provide HA.` \
  --set gateways.istio-ingressgateway.autoscaleMin=2 \
  --set gateways.istio-ingressgateway.resources.requests.cpu=500m \
  --set gateways.istio-ingressgateway.resources.requests.memory=256Mi \
  istio-${ISTIO_VERSION}/install/kubernetes/helm/istio \
  > src/src.yaml
```