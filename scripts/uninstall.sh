#!/usr/bin/env bash
set -euo pipefail

RELEASE_NAME="${1:-webapp}"
NAMESPACE="${2:-demo}"

echo "Uninstalling '${RELEASE_NAME}' from namespace '${NAMESPACE}'..."
helm uninstall "${RELEASE_NAME}" --namespace "${NAMESPACE}" || true
kubectl delete namespace "${NAMESPACE}" --ignore-not-found=true

echo "Done."
