#! /bin/bash

export PATH=~/.minikube/cache/linux/amd64/v1.27.3/kubectl:$PATH

kubectl apply -f namespace.yaml
kubectl apply -f secret-ssh-keys.yaml
kubectl apply -f secret-server-keys.yaml
kubectl apply -f configmap.yaml
kubectl apply -f configmap-users.yaml
kubectl apply -f statefulset.yaml
kubectl apply -f service.yaml
kubectl apply -f service-headless.yaml