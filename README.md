# spring-cloud-k8s-boss

<code>mvn clean install

mvn dockerfile:build

kubectl run boss --image=k8s-test/boss:1.0 --port=8080

kubectl expose deployment boss --type=NodePort

export NODE_PORT=$(kubectl get services/boss -o go-template='{{(index .spec.ports 0).nodePort}}')

curl $(minikube ip):$NODE_PORT
</code>

// minikube service boss --url
