minikube start --driver=docker --extra-config=apiserver.service-node-port-range=1-65535

kubectl create clusterrolebinding serviceaccounts-cluster-admin \
  --clusterrole=cluster-admin \
  --group=system:serviceaccounts