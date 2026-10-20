# Helm Minimal Chart

A minimal but production-ready **Helm chart** for deploying a simple web application (nginx) to Kubernetes.

## 🎯 Purpose

This project demonstrates:

- **Helm chart structure** — `Chart.yaml`, `values.yaml`, `templates/`
- **Templating** — using `{{ .Values }}`, `_helpers.tpl`, `include`, `toYaml`
- **ConfigMap and Deployment** — how to inject config into pods
- **GitHub Actions CI** — `helm lint` and `helm template` on every push

## 📚 Why Helm?

| Without Helm | With Helm |
|--------------|-----------|
| Copy-paste YAML for each environment | One chart, many `values.yaml` |
| Manual versioning | `Chart.yaml` with version |
| Hard to rollback | `helm rollback` |
| No templating | `{{ .Values.replicaCount }}` |

## 🚀 Quick Start

### Prerequisites
- Kubernetes cluster (minikube, kind, or cloud)
- `helm` v3 installed
- `kubectl` configured

### Install
bash
helm install webapp ./charts/webapp -n demo --create-namespace
