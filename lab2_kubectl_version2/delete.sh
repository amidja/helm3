kubectl delete -f yaml/backend-secret.yaml --namespace=helm3
kubectl delete -f yaml/backend-service.yaml --namespace=helm3
kubectl delete -f yaml/backend.yaml --namespace=helm3
kubectl delete -f yaml/frontend-configmap.yaml --namespace=helm3
kubectl delete -f yaml/frontend-service.yaml --namespace=helm3
kubectl delete -f yaml/frontend.yaml --namespace=helm3
kubectl delete -f yaml/ingress.yaml --namespace=helm3
kubectl delete -f yaml/mongodb-secret.yaml --namespace=helm3
kubectl delete -f yaml/mongodb-service.yaml --namespace=helm3
kubectl delete -f yaml/mongodb.yaml --namespace=helm3
kubectl delete -f yaml/mongodb-persistent-volume-claim.yaml --namespace=helm3
kubectl delete -f yaml/mongodb-persistent-volume.yaml --namespace=helm3
kubectl delete ns helm3
