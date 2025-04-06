# Zajęcia 10

# Wdrażanie na zarządzalne kontenery: Kubernetes (2)
### Konwersja wdrożenia ręcznego na wdrożenie deklaratywne YAML
 * Upewnij się, że posiadasz wdrożenie z poprzednich zajęć zapisane jako plik YAML
 ![alt text](zdj/image-6.png)
 ![alt text](zdj/image-7.png)
 * Wzbogać swój obraz o +4 repliki względem poprzednich zajęć
    -->  replicas:5
 * Rozpocznij wdrożenie za pomocą ```kubectl apply```
 ![alt text](zdj/image.png)
 * Zbadaj stan za pomocą ```kubectl rollout status```
 ![alt text](zdj/image-3.png)
 ![alt text](zdj/image-2.png)
 ![alt text](zdj/image-5.png)
 ![alt text](zdj/image-4.png)

### Przygotowanie nowego obrazu
 * Upewnij się, że dostępne są dwie wersje obrazu z wybranym programem (np.: 1.0 oraz 1.1)
![alt text](zdj/image-13.png)
 * Przygotuj dodatkową wersję obrazu, którego uruchomienie specjalnie kończy się błędem
 ![alt text](zdj/image-11.png)
 ![alt text](zdj/image-10.png)
 
 Uruchomienie kontenera zakonczyłowi sie błedem:
 ![alt text](zdj/image-12.png)

 Poniewaz obraz był z bładem trzeba wrzucic go recznie 
 ![alt text](zdj/image-14.png)
 ![alt text](zdj/image-8.png)
  
### Zmiany w deploymencie
 * Aktualizuj plik YAML z wdrożeniem i przeprowadzaj wdrożenie ponownie ponownie po zastosowaniu następujących zmian:
   1. dwukrotne zwiększenie liczby replik
   ![alt text](zdj/image-15.png) 
   ![alt text](zdj/image-24.png)
   1. zmniejszenie liczby replik do 1
   ![alt text](zdj/image-27.png)
   1. zmniejszenie liczby replik do 0
![alt text](zdj/image-28.png)
   1. Zastosowanie nowej wersji obrazu
   ![alt text](zdj/image-20.png)
   ![alt text](zdj/image-29.png)
   1. Zastosowanie starszej wersji obrazu
   ![alt text](zdj/image-19.png)
   ![alt text](zdj/image-22.png)

   z bledem
   ![alt text](zdj/image-25.png)
   ![alt text](zdj/image-26.png)

 * Przywracaj poprzednie wersje wdrożeń za pomocą poleceń
   1. ```kubectl rollout history```  - wyswietlenie historii
   ![alt text](zdj/image-30.png)
   1. ```kubectl rollout undo```
![alt text](zdj/image-31.png)
![alt text](zdj/image-33.png)
![alt text](zdj/image-32.png)


### Kontrola wdrożenia
 * Napisz skrypt weryfikujący, czy wdrożenie "zdążyło" się wdrożyć (w ciągu 60 sekund) - jak można to sprawdzić?
 ![alt text](zdj/image-17.png)
 ![alt text](zdj/image-16.png)


