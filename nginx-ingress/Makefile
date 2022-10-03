CHART := ingress-nginx/ingress-nginx
CHART_VER := 4.0.18
VALUES := src/values.yaml
MANIFEST := src.yaml

all: $(MANIFEST)

$(MANIFEST): helm-repo
	helm template --version $(CHART_VER) --values $(VALUES) --namespace ingress ing $(CHART) > $@

.PHONY: helm-repo
helm-repo:
	helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
	helm repo update
