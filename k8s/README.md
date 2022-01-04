# Kubernetes deployment
## Prerequisites
```kubectl``` installation is required with access to a K8S cluster.
## Installation
clone repository and cd into that directory in terminal.
Now run
````
kubectl apply -f ./k8s
````
Namespace ```ansibleforms``` is created and two pods with 1 container each (```server``` and  ```mysql```) is started. When both pods are running, one can access the web interface in the browser by calling
````
https://K8S_CLUSTER_IP:8445
````
Please note, that a LoadBalancer service for pod ```server``` has been created. If LoadBalancer is not available, the appropriate service in ```k8s/_service.yaml``` has to be modified to use e.g. NodePort instead.
Port 8445 can be modified as well in file ```k8s/_service.yaml```
Access to web interface is configured to use https only.

First request in web interface leads the application to install necessary DB and appropriate tables. User ```admin``` with password ```AnsibleForms!123``` is created and the web interface is redirecting to the login page.
Before login a minmal set of config files have to be added to the application first. To do so run 
```
POD=$(kubectl get pod -l app.kubernetes.io/name=server -n ansibleforms -o jsonpath="{.items[0].metadata.name}")
kubectl cp data/forms.yaml ansibleforms/$POD:/app/dist/persistent/
kubectl cp data/playbooks ansibleforms/$POD:/app/dist/persistent/
```
Main config file ```data/forms.yaml``` is copied to persistent storage as well as all files in the ```playbooks``` folder, containing some default Ansible playbooks. ```forms.yaml``` is being modified through the app itself, for adding custom Ansible playbooks the same way as above can be used.