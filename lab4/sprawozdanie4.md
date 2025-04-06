# Dodatkowa terminologia w konteneryzacji, instancja Jenkins

### Zachowywanie stanu (0-2 pkt)
Przygotuwanie woluminow wejściowych i wyjściowych:
![alt text](img/image.png) 
podłączenie do kontenera bazowego i uruchomienie 
![alt text](img/image-1.png)
Sklonowanie repozytorium na wolumin wejściowy:
![alt text](img/image-2.png)
![alt text](img/image-3.png)
Uruchomienie build w kontenerze
![alt text](img/image-4.png)
![alt text](img/image-5.png)
Zapis zbudowanych plikow na woluminie wyjściowym, tak by były dostępne po wyłączniu kontenera.
![alt text](img/image-7.png)
![alt text](img/image-6.png)

### Eksponowanie portu (0-2 pkt)
![alt text](img/image-8.png)
Uruchomienie wewnątrz kontenera serwer iperf (iperf3):
![alt text](img/image-9.png)
  * Przekierowuje port 5201 z hosta na port 5201 wewnątrz kontenera co pozwala na dostęp do serwera iperf3 uruchomionego w kontenerze z hosta lub z sieci zewnętrznej.
  * -s: Uruchamia serwer iperf3 w trybie serwera.
![alt text](img/image-10.png)

 Połącz się z nim z drugiego kontenera, zbadaj ruch

 server
 ![alt text](img/image-11.png)
 client
 ![alt text](img/image-12.png)

 Połącz się spoza kontenera - z hosta  (prawdopodobnie twój OS)
 server
 ![alt text](img/image-13.png)
 client
 ![alt text](img/image-14.png)

 Połącz się spoza kontenera - spoza hosta (prawdopodobnie dalej niż twój OS)
 server
 ![alt text](img/image-15.png)
 klient
 ![alt text](img/image-16.jpg)
 
 Przedstaw przepustowość komunikacji
 * połączenie z drugieggo kontenra -> bitrate: 52.5 Gbits/sec
 * połączenie spoza kontenera (z hosta) -> bitrate: 1.53 Gbits/sec
 * połączenie spoza kontenera (spoza host) -> bitrate: 74.4 Mbits/sec

 wyciągnij log z kontenera:
 ![alt text](img/image-16.png)

### Instancja Jenkins (0-3 pkt)
Przeprowadź instalację skonteneryzowanej instancji Jenkinsa

tworzenie sieci:
![alt text](img/image-18.png)

pobranie i uruchomienie obrazu docker:dind:
![alt text](img/image-19.png)

dostsowanie oficjalnego obrazu Jenkis poprzez:
 - Dockerfile
 ![alt text](img/image-20.png)
 - Budowanie docker image
 ![alt text](img/image-21.png)

uruchomienie kontenera z zbudowanego obrazu:
![alt text](img/image-22.png)


Zainicjalizuj instację

Przechodzimy na adres http://localhost:8080
i uzyskujemy haslo:
![alt text](img/image-25.png)

instalacja wtyczek:

![alt text](img/image-24.png)

działające kontenery
![alt text](img/image-27.png)

pokaż ekran logowania
![alt text](img/image-26.png)
