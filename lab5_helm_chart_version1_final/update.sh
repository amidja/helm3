#!/bin/bash
echo "... Starting Update!"
#    
#kubectl config set-context --current --namespace=helm3
helm upgrade guestbook-demo-01  chart/guestbook
#
echo "Update Completed ...!"
#
#helm list --short
helm history guestbook-demo-01
#helm get manifest guestbook-demo-01
#
#Rollback to first version 
helm rollback  guestbook-demo-01 1
helm history guestbook-demo-01

