#!/bin/bash
echo "... Starting Install!"
#
kubectl create ns helm3
kubectl config set-context --current --namespace=helm3
helm install guestbook-demo-01  chart/guestbook
#
echo "Install Completed ...!"
#
helm list --short
#helm history guestbook-demo-01
#helm get manifest guestbook-demo-01