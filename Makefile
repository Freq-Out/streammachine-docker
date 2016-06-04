.DEFAULT_GOAL := help
DOCKER_USER=freqout
PRODUCT=streammachine

streammachine: ## Build base container
	docker build -t $(DOCKER_USER)/$(PRODUCT) ./base/

streammachine-master: ## Build master container
	docker build -t $(DOCKER_USER)/$(PRODUCT)-master ./master/

streammachine-slave: ## Build slave container
	docker build -t $(DOCKER_USER)/$(PRODUCT)-slave ./slave/

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
