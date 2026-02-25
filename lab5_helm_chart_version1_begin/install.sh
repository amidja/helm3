#!/bin/bash -e
cd chart
export MY_RELEASE=demo-guestbook MY_CHART=guestbook
#MY_RELEASE=demo-guestbook
#MY_CHART=guestbook

# init chart install 
helm install $MY_RELEAS $MY_CHART
#helm upgrade $MY_RELEASE $MY_CHART
#kubectl get pod -l app=frontend -o yaml
#https://kubernetes.io/docs/reference/kubectl/generated/kubectl_wait/
kubectl wait --for=condition=Ready pod -l app=frontend
#
helm list --short
helm get manifest $MY_RELEASE
 #Get History for the version
# helm history $MY_RELEASE
 #helm rollback $MY_RELEASE 2

 #helm uninstall $MY_RELEASE
 