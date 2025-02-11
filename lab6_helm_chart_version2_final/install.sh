#!/bin/bash
echo "... Starting Install!"
#

REQUIRED_NAMESPACE="helm3"
FOUND_NAMESPACE=$(kubectl get namespaces -o json | jq -r ".items[].metadata.name" | grep $REQUIRED_NAMESPACE)

# -n -> length of the string is greater than zero
# -z -> length of the string is zero (ie. it is empty)
if [ -n $FOUND_NAMESPACE ]; then
  echo Installing to $FOUND_NAMESPACE namespace.
 
else
    echo $REQUIRED_NAMESPACE namespace not found.
    kubectl create ns $REQUIRED_NAMESPACE
fi
 
kubectl get ns $REQUIRED_NAMESPACE
kubectl config set-context --current --namespace=helm3

helm install guestbook-demo-02  chart/guestbook
#
echo "Install Completed ...!"
#
helm list --short
#helm history guestbook-demo-01
#helm get manifest guestbook-demo-01