#!/bin/bash

echo "GitOps pull-based simulation started."

echo "Pulling latest desired state from Git..."

git pull origin main

echo "Applying desired state to Kubernetes..."

kubectl apply -f k8s/app.yaml

echo "Current application state:"
kubectl get deployment gitops-demo
kubectl get pods

echo "GitOps synchronization completed."
