#!/usr/bin/env bash
# Build the custom EE for the Colima k3s cluster. Run from the execution-environment/ dir.
#
# NOTE: this Colima profile runs `docker+k3s` (Docker as the container runtime,
# not k3s's bundled containerd) — confirmed while debugging the kube-rbac-proxy
# ImagePullBackOff on this same cluster. That means a `docker build` here lands
# directly in the daemon k3s already uses as its CRI — no `k3s ctr images
# import` step needed (that command targets a containerd socket this profile
# doesn't use, and will fail with "no such file or directory").
set -euo pipefail

TAG="f5-ihealth-ee:1.0"

# Requires: pip install ansible-builder ; a running docker context (Colima)
ansible-builder build --tag "$TAG" --container-runtime docker -v3

echo
echo "Built '$TAG' directly in Colima's Docker daemon (shared with k3s's CRI)."
echo "In AWX: Administration > Execution Environments > Add"
echo "  Image:        $TAG"
echo "  Pull policy:  Never   (it's local, don't try to pull it)"
