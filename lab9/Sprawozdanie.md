# Sprawozdanie 9
---
# Podstawy obsługi klastra Kubernetes

### Cel zadania
* Uruchomić lokalnie klaster Kubernetes
* Uruchomić na klastrze Kubernetes kontener Docker'a (z aplikacją z poprzednich laboratoriów)

## Zadania do wykonania
### Upewnij się że posiadasz zainstalowany klaster Kubernetes. 
Jeżeli już posiadasz Kubectl i Minikube

Instalacja Minikube:
![alt text](zdj/image.png)
![alt text](zdj/image-1.png)

oraz pobranie kubetcl
![alt text](zdj/image-2.png)
![alt text](zdj/image-3.png)

### Włącz i uruchom Minikube Dashboard. 
https://minikube.sigs.k8s.io/docs/handbook/dashboard/.

![alt text](zdj/image-4.png)

Wypisz listę zawierającą opis co można zrobić korzystając z Minikube Dashboard

![alt text](zdj/image-5.png)
![alt text](zdj/image-6.png)

### Uruchom kontener z aplikacją.
[odpowiadający "stage("Deploy") w Jenkinsfile] w Kubernetes:

Z uzyciem pods

![alt text](zdj/image-7.png)
![alt text](zdj/image-8.png)

Aby sprawdzić czy działa potrzebujesz dokonać przekierowania portów w celu umożliwienia dostępu z zewnątrz:

![alt text](zdj/image-11.png)
![alt text](zdj/image-10.png)

alternatywnie możesz skorzystać z sekcji czwartej dokumentacji Minikube (https://minikube.sigs.k8s.io/docs/start/) i użyć do tego celu polecenia "deployment":

![alt text](zdj/image-9.png)
![alt text](zdj/image-12.png)

### Udokumentuj że komunikator działa w klastrze Kubernetes. 
Efekt jest widoczny na stronie oraz w Dashboard.
![alt text](zdj/image-15.png)