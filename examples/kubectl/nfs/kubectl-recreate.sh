kubectl create -f nfs-storage.yaml
kubectl create -f nfs-volume.yaml
kubectl create -f nfs-claim.yaml
kubectl create -f nginx-deployment.yaml
kubectl create -f nginx-service.yaml
kubectl get pods -l app=nginx -o wide