#!/usr/bin/env bash
set -euo pipefail
docker build -t ${DOCKER_REPO} .
docker push ${DOCKER_REPO}
