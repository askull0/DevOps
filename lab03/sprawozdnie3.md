# Docker + Docker Compose

## Przeprowadzenie budowy/konfiguracji środowiska na własnym OS

### Sklonowanie repo 
![alt text](image.png)

### Do przeprowadzenia konfiguracji potrebny mi node i npm, który juz mam: 
![alt text](image-1.png)

### Uruchamiam program po zainstalowaniu zaleznosci 
Sprawdzenie czy dziala:
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)
![alt text](image-5.png)
[Napotkałam problem z werjsą node, który udało sie rozwiązać po uruchuieniu komendy npm audit fix --force (z uzciem force, poniewaz musialam wymusić działnie tej komendy, gdyż inaczej aplikacja dalej nie dziala)]

oraz zbudowanie aplikacji:
![alt text](<Zrzut ekranu 2024-03-14 155141.png>)
![alt text](image-12.png)
![alt text](image-13.png)

## Uruchomienie testów.
Testy uruchomione za pomoca `npm test`
![alt text](image-6.png)

## Ponów ten proces w kontenerze interaktywnie
- Wybralam obraz ubuntu, uruchomilam go interkatywnnie poprzez komende:
![alt text](image-7.png)
oraz zaktulaizowalam pakiety poprzez komendy `apt update i apt upgrade`
   
- Instalacja wsztskich potrzebnych oprogramowan do uzycia uruchomienia apliakcji:
node, npm, git
![alt text](image-8.png)
![alt text](image-9.png)
![alt text](image-10.png)

- Sklonowanie aplikacji z repozytorium github'a
![alt text](image-11.png)
   
- Skonfigurowanie środowiska i uruchomienie builda
Podobnie jak wczensiej instaluje zaleznosci npm install ... i buduje apliakcje 
![alt text](image-14.png)
`npm install -g serve` i `serve -s build ..`
![alt text](image-15.png)

- Uruchomienie testow tak samo jak wczesniej npm test
![alt text](image-16.png)

## Stwórz Dockerfile, który ma automatycznie wykonwać pkt 4 jak tylko się uruchomi:
   ![alt text](image-18.png)
   ![alt text](image-19.png)
## Zaprezentuj Dockerfile i jego zbudowanie:
![alt text](image-20.png)
## Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy (lecz nie robił build'a!)
Kontener pierwszy wykonuje wszytsko az do builda, a 2 kontener tylko bazuje na 1 i wykonuje testy
   ![alt text](image-22.png)
   ![alt text](image-21.png) 
   wynik przejscia testow 
   ![alt text](image-23.png)

## Runda bonusowa: kompozycja 
Zdefiniuj kompozycję, która stworzy dwie usługi
   - Pierwszą na bazie dockerfile'a budującego
   - Drugą na bazie pierwszej
   ![alt text](image-26.png)
   Wdróżenie przez uzycie doker-compose
   ![alt text](image-24.png)
   ![alt text](image-25.png)
   Atrybut depend-on służy do kontrolowania kolejności startu usług, w tym przypadku druga usluga musi poczekac na pierwsza.