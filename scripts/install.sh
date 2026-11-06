#!/usr/bin/env bash
set -euo pipefail

RELEASE_NAME="${1:-webapp}"
NAMESPACE="${2:-demo}"

echo "Installing Helm chart '${RELEASE_NAME}' into namespace '${NAMESPACE}'..."
helm install "${RELEASE_NAME}" ./charts/webapp \
  --namespace "${NAMESPACE}" \
  --create-namespace \
  --wait

echo "Done. Pods:"
kubectl get pods -n "${NAMESPACE}"
