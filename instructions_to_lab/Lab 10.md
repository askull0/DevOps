# Zajęcia 10

# Wdrażanie na zarządzalne kontenery: Kubernetes (2)
## Format sprawozdania jak poprzednio

## Zadania do wykonania

### Konwersja wdrożenia ręcznego na wdrożenie deklaratywne YAML
 * Upewnij się, że posiadasz wdrożenie z poprzednich zajęć zapisane jako plik YAML
 * Wzbogać swój obraz o +4 repliki względem poprzednich zajęć
 * Rozpocznij wdrożenie za pomocą ```kubectl apply```
 * Zbadaj stan za pomocą ```kubectl rollout status```

### Przygotowanie nowego obrazu
 * Zarejestruj nową wersję swojego obrazu `Deploy` (w Docker Hub lub lokalnie) jeżeli jeszcze tego nie zrobiłeś.
 * Upewnij się, że dostępne są dwie wersje obrazu z wybranym programem (np.: 1.0 oraz 1.1)
 * Jeżeli potrzebny jest "gotowiec" z powodu problemów z `Deploy`, można użyć np `httpd`, ale powinien to być "własny" kontener: zmodyfikowany względem oryginału i opublikowany na własnym koncie DH.
 * Będzie to wymagać 
   * przejścia przez pipeline dwukrotnie, lub
   * ręcznego zbudowania dwóch wersji, lub
   * przepakowania wybranego obrazu samodzielnie np. przez ```commit```
 * Przygotuj dodatkową wersję obrazu, którego uruchomienie specjalnie kończy się błędem
  
### Zmiany w deploymencie
 * Aktualizuj plik YAML z wdrożeniem i przeprowadzaj wdrożenie ponownie ponownie po zastosowaniu następujących zmian:
   1. dwukrotne zwiększenie liczby replik
   1. zmniejszenie liczby replik do 1
   1. zmniejszenie liczby replik do 0
   1. Zastosowanie nowej wersji obrazu
   1. Zastosowanie starszej wersji obrazu
 * Przywracaj poprzednie wersje wdrożeń za pomocą poleceń
   1. ```kubectl rollout history```
   1. ```kubectl rollout undo```

### Kontrola wdrożenia
 * Napisz skrypt weryfikujący, czy wdrożenie "zdążyło" się wdrożyć (w ciągu 60 sekund) - jak można to sprawdzić?
 * [Zakres rozszerzony: Ujmij skrypt w pipeline Jenkins (o ile minikube jest dostępny z zewnątrz)]
