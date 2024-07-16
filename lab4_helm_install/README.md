# PluralSight Packaging applications with Helm for Kubernetes

Please follow instruction in module : Installing  Kubernetes and Helm

Here bellow are the commands to be launched :

## Helm installation

```bash
curl -LO https://get.helm.sh/helm-v3.1.1-linux-amd64.tar.gz
tar -zxvf helm-v3.1.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm

helm version --short
kubectl config view

helm repo add "stable" "https://charts.helm.sh/stable"

```

## Helm MySql installation demo

```bash

helm install demo-mysql stable/mysql
kubectl get all | grep mysql
```

### Connect to MySql from a different pod.

```bash

kubectl run -i --tty ubuntu --image=ubuntu:16.04 --restart=Never -- bash -il
apt-get update && apt-get install mysql-client -y
kubectl get secret --namespace default demo-mysql -o jsonpath="{.data.mysql-root-password}" | base64 --decode
mysql -h demo-mysql -p

```

To connect to your database directly from outside the K8s cluster:

```bash

    MYSQL_ROOT_PASSWORD=$(kubectl get secret --namespace default demo-mysql -o jsonpath="{.data.mysql-root-password}" | base64 --decode; echo)
    MYSQL_HOST=127.0.0.1
    MYSQL_PORT=3306

    # Execute the following command to route the connection:
    kubectl port-forward svc/demo-mysql 3306

    mysql -h ${MYSQL_HOST} -P${MYSQL_PORT} -u root -p${MYSQL_ROOT_PASSWORD}
```

## Helm cleaning

```bash

kubectl get all | grep demo-mysql
kubectl get secret | grep demo-mysql
helm uninstall demo-mysql
kubectl get all | grep demo-mysql
kubectl get secret | grep demo-mysql
helm env

```
