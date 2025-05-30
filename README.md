# NET-DEBUG

```
███    ██ ███████ ████████       ██████  ███████ ██████  ██    ██  ██████
████   ██ ██         ██          ██   ██ ██      ██   ██ ██    ██ ██
██ ██  ██ █████      ██    █████ ██   ██ █████   ██████  ██    ██ ██   ███
██  ██ ██ ██         ██          ██   ██ ██      ██   ██ ██    ██ ██    ██
██   ████ ███████    ██          ██████  ███████ ██████   ██████   ██████

```

Bundled networking tools to troubleshooting networking in kubernetes.

# Usages

To debug any networking issues in the k8s cluster,

*Run:*

`kubectl run -it --image=ghcr.io/zdk/net-debug:latest debug-pod`

Or apply `./pod.yaml` manifest by:

`kubectl apply -f ./pod.yaml`

Then, exec into pod:

`kubectl exec -it net-debug -- /bin/bash`

In case, you just want use only in container

`docker run -it ghcr.io/zdk/net-debug:latest`
