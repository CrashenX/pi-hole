#!/bin/bash
sudo docker login --username=$DOCKER_USER --password=$DOCKER_PASS
kubectl create -f k8s/namespace.yaml
kubectl --namespace=pokescan create secret docker-registry \
    docker-registry-creds \
    --docker-username=$DOCKER_USER \
    --docker-password=$DOCKER_PASS \
    --docker-email=$DOCKER_MAIL
kubectl create -f k8s/deployment.yaml
