#!/bin/bash
echo "... Starting Rollback!"
#    
#kubectl config set-context --current --namespace=helm3

helm list
helm history guestbook-demo-01
#helm get manifest guestbook-demo-01
#
#Rollback to first version 
helm rollback  guestbook-demo-01 1
#helm history guestbook-demo-01
echo "Update Completed ...!"