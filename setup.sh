#!/bin/bash

# Setup Kind
kind create cluster --name=ambassador-5xx

# Setup Ambasador
helm repo add datawire https://www.getambassador.io
helm upgrade --install ambassador datawire/ambassador \
  --set enableAES=false \
  --set image.repository=quay.io/datawire/ambassador

# Configure Ambassador
kubectl apply -f manifests/ambassador.yaml

# Deploy Service
kubectl apply -f manifests/deployment.yaml
kubectl apply -f manifests/mapping.yaml
