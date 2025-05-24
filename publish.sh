#!/usr/bin/env bash
set -euo pipefail

# Build the image
docker build -t net-debug .

# Tag and push to GitHub Container Registry
docker tag net-debug ${GHCR_REPO}
docker push ${GHCR_REPO}

# Tag and push to Docker Hub
docker tag net-debug ${DOCKERHUB_REPO}
docker push ${DOCKERHUB_REPO}
