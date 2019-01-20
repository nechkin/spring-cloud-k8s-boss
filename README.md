# spring-cloud-k8s-boss

<h3>Spring Kubernetes discovery</h3>
```
mvn clean install
eval $(minikube docker-env)
mvn dockerfile:build
1. kubectl run boss --image=k8s-test/boss:1.0 --port=8080
2. kubectl expose deployment boss --type=NodePort

or

1. kubectl apply -f app-deployment.yaml

export NODE_PORT=$(kubectl get services/boss -o go-template='{{(index .spec.ports 0).nodePort}}')
curl $(minikube ip):$NODE_PORT
// minikube service boss --url
```

<h3>Eureka</h3>

Run boss with eureka client
```
cd ..
mvn clean install -P 'eureka,!kubernetes'
```
