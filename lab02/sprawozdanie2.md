### Sprawozdnaie 2 - Zestawienie środowiska

## Instalacja Dockera w systemie linuksowym
Uzylam WSL2, który juz kiedys instalowalam, 
sprawdzenie wersji, gdyż jest wymgana odpowiednia min. 1.1.3.0:
![alt text](img/wsl-ver.png)

Dodatkowo instalcja docker desktop, uzywając WSL2:
![alt text](img/image.png)
![alt text](img/image-1.png)

## Zarejestrowanie się w Docker Hub oraz pobranie ze strony dockerhub obrazow: hello-world, busybox, ubuntu lub fedorę, mysql
![alt text](img/hello-world.png)
![alt text](img/busybox.png)
![alt text](img/ubuntu.png)
![alt text](img/ubuntu.png)

## Uruchomienie busybox
Efekt uruchomienia kontenera:
docker run -it --rm busybox
![alt text](img/image-3.png)
jesli uzyje samego uruchomienia, wyłacza się:
![alt text](img/image-4.png)
dzieki temu mozemy nie wchodzac do containera uruchomic go przez docker start lub zatrzymac uzywajac docker stop.

Jesli chcemy wejsc do takiego containera mozemy wtedy uzyc polecenia docker exec -it .. /bin/bash
![alt text](img/image-5.png)

-Aby podłączyć się do kontenera interaktywnie trzeba uzyć opcji -it. Wywołanie numeru wersji:
![alt text](img/image-2.png)

## Uruchom "system w kontenerze"
![alt text](img/image-6.png)

Zaprezentuj PID1 w kontenerze i procesy dockera na hoście
![alt text](img/image-7.png)
![alt text](img/image-8.png)

Zaktualizowanie pakietow, najpierw polecneiem apt update, ktory sciagnie najnowsze aktualizacje, poczym uzywajac apt upgrade zainstaluje aktualizacje
![alt text](img/image-9.png)
![alt text](img/image-10.png)

 Na samym koncu wychodzimy poleceniem "exit"

## Stworznie oraz zbuduwanie i uruchomienie pliku Dockerfile, ktory sklonuj repo
![alt text](img/image-12.png)
Wykorzystanie zmiennje srodowiskowej, ktora jest wczytywana z pliku.

Zbudowanie obrazu z uzyciem Dockerfile:
![alt text](img/image-13.png)
Uruchomienie w trybie interaktywnym i weryfikacja czy jest sciagniete repozytorium
![alt text](img/image-11.png)

## Pokaż uruchomione ( != "działające" ) kontenery, wyczyść je.
![alt text](img/image-14.png) 

oraz wyczysczenie containerow docker rm 'nazwa'
![alt text](img/image-15.png)
## Wyczyczenie obrazow 
docker rmi 'nazwa'
![alt text](img/image-16.png)
