# Zajęcia 09
---
# Podstawy obsługi klastra Kubernetes

## Format sprawozdania - jak poprzednio


## Zagadnienie
Niniejszy temat jest poświęcony przygotowaniu i bazowej obsłudze lokalnego klastra Kubernetes.

### Cel zadania
* Uruchomić lokalnie klaster Kubernetes
* Uruchomić na klastrze Kubernetes kontener Docker'a (z aplikacją z poprzednich laboratoriów)

## Zadania do wykonania
### Upewnij się że posiadasz zainstalowany klaster Kubernetes. 
Jeżeli już posiadasz Kubectl i Minikube to nie musisz nic robić.
Jeżeli jeszcze nie, to pobierz i zainstaluj Minikube.
Na tej stronie: https://minikube.sigs.k8s.io/docs/start/ znajdują się szczegółowe instrukcje jak to wykonać. 
Zwróć uwagę na:
- uruchomienie klastra (```minikube start```)
- pobranie kubectl (```minikube kubectl -- get po -A```) jeżeli jeszcze go nie ma

### Włącz i uruchom Minikube Dashboard. 
Tak jak opisane tutaj: https://minikube.sigs.k8s.io/docs/handbook/dashboard/.
Najczęściej robi się to poleceniem "```minikube dashboard```".

Wypisz listę zawierającą opis co można zrobić korzystając z Minikube Dashboard

### Uruchom kontener z aplikacją.
[odpowiadający "stage("Deploy") w Jenkinsfile] w Kubernetes, używając polecenia na wzór tego:
"```kubectl run twoja_aplikacja --image=YOUR_DOCKER_ID/YOUR_APPLICATION_IMG --port=9999 --labels app=twoja_aplikacja```"

Aby sprawdzić czy działa potrzebujesz dokonać przekierowania portów w celu umożliwienia dostępu z zewnątrz:
"```kubectl port-forward deploy/twoja_aplikacja <NR_PORTU_NA_LOCALHOST>:<NR_PORTU_W_KONTENERZE>```"

alternatywnie możesz skorzystać z sekcji czwartej dokumentacji Minikube (https://minikube.sigs.k8s.io/docs/start/) i użyć do tego celu polecenia "deployment".

### Udokumentuj, że aplikacja działa w klastrze Kubernetes. 
