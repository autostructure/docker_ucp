#!/bin/sh

# kubectl create -f namespaces.yaml

# nfs...
# kubectl label node nfs001 node-role.kubernetes.io/nfs-server=nfs-server
# kubectl create -f nfs-server.yaml
# kubectl create -f nfs-service.yaml
# echo "Please wait for nfs-servers to appear (10s)"
# sleep 10
# kubectl describe pod nfs-server | grep IP:
# kubectl describe service nfs-server | grep IP:

#kubectl create -f nfs-storage.yaml
#kubectl create -f nfs-volume.yaml
kubectl create -f nfs-claim.yaml

kubectl create -f nginx-webserver-deployment.yaml
kubectl create -f nginx-webserver-service.yaml
kubectl create -f ingress-resource.yaml
kubectl create -f ingress-default-backend.yaml
kubectl create -f ingress-controller.yaml




#!/bin/bash

# sample value for your variables
#MYVARVALUE="nginx:latest"

# read the yml template from a file and substitute the string
# {{MYVARNAME}} with the value of the MYVARVALUE variable
#template=`cat "deploy.yml.template" | sed "s/{{MYVARNAME}}/$MYVARVALUE/g"`

# apply the yml with the substituted value
#echo "$template" | kubectl apply -f -

# or?

# export POD_IP=`kubectl describe pod nfs-server | grep IP: | grep -oE '[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}'`
# sed "s/{{nfs-server-ip-address}}/$POD_IP/g" nfs-volume.yaml.template > nfs-volume.yaml
# cat nfs-volume.yaml
# echo
# echo 'If the nfs ip address is not populated hit CTRL+C, otherwise hit any key...'
# pause
