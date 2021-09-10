include helpers/common.mk

apply-elasticsearch:
	helm install elasticsearch -f ~/dev/bossjones/efk-helm-charts/elasticsearch/values.yaml ~/dev/bossjones/efk-helm-charts/elasticsearch

delete-elasticsearch:
	helm uninstall elasticsearch
	kubectl get pods --namespace=default -l app=elasticsearch-master -w
