# Zajęcia 11

# Wdrażanie na zarządzalne kontenery: Kubernetes (2)
Format sprawozdania jak poprzednio

### Strategie wdrożenia
 * wykorzystaj minikuba z poprzednich zajęć
 * zapoznaj się z https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
 * Przygotuj następujące strategie wdrożeń, zmierz czas wykonania wdrożenia każdą z nich
 * Zaobserwuj i opisz różnice w czasie wdrożenia i ilości pod'ów. 
   1. Recreate
   1. Rolling Update
   1. Rolling Update (maxUnavailable > 1, maxSurge > 20%)
   1. Blue/green
   1. Canary Deployment workload (https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/#canary-deployments 
)
 * Użyj selectorów i label'ek, tam gdzie to wymagane
 * Odpowiedz: Które wdrożenia były najszybsze? Dlaczego? 
 
