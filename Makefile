CONTAINER_TOOL ?= docker
IMG ?= warachet/net-debug:latest

SHELL = /usr/bin/env bash -o pipefail
.SHELLFLAGS = -ec

.PHONY: all
all: docker-build docker-push

##@ Build

.PHONY: docker-build
docker-build: ## Build docker image
	$(CONTAINER_TOOL) build -t ${IMG} .

.PHONY: docker-push
docker-push: ## Push docker image
	$(CONTAINER_TOOL) push ${IMG}

PLATFORMS ?= linux/arm64,linux/amd64,linux/s390x,linux/ppc64le
.PHONY: docker-buildx
docker-buildx: ## Build and push docker for cross-platform support
    # copy Dockerfile to Dockerfile.x, and insert --platform=${BUILDPLATFORM} into Dockerfile.x
	sed -e '1 s/\(^FROM\)/FROM --platform=\$$\{BUILDPLATFORM\}/; t' -e ' 1,// s//FROM --platform=\$$\{BUILDPLATFORM\}/' Dockerfile > Dockerfile.x
	- $(CONTAINER_TOOL) buildx create --name net-debug-builder
	$(CONTAINER_TOOL) buildx use net-debug-builder
	- $(CONTAINER_TOOL) buildx build --push --platform=$(PLATFORMS) --tag ${IMG} -f Dockerfile.x .
	- $(CONTAINER_TOOL) buildx rm net-debug-builder
	rm Dockerfile.x

