kubectl delete service step-ca-service
kubectl delete deployment step-ca
kubectl delete secrets step-ca-secrets
kubectl delete secrets step-ca-certs
kubectl delete pvc step-ca-db
kubectl delete configmap step-ca-config

kubectl apply -f secrets.yaml
kubectl apply -f certs.yaml
kubectl apply -f configmap.yaml
kubectl apply -f pvc.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml