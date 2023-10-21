#! /bin/bash

export PATH=~/.minikube/cache/linux/amd64/v1.27.3/kubectl:$PATH

kubectl delete -f secret-ssh-keys.yaml
kubectl delete -f secret-server-keys.yaml
kubectl delete -f configmap.yaml
kubectl delete -f configmap-users.yaml
kubectl delete -f statefulset.yaml
kubectl delete -f service.yaml
kubectl delete -f service-headless.yaml
kubectl delete -f namespace.yaml