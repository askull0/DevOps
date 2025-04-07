# Zajęcia 04
---
# Dodatkowa terminologia w konteneryzacji, instancja Jenkins

## Format sprawozdania
- Wykonaj opisane niżej kroki i dokumentuj ich wykonanie
- Na dokumentację składają się następujące elementy:
  - plik tekstowy ze sprawozdaniem, zawierający opisy z każdego z punktów zadania
  - zrzuty ekranu przedstawiające wykonane kroki (oddzielny zrzut ekranu dla każdego kroku)
  - listing historii poleceń (cmd/bash/PowerShell)
- Sprawozdanie z zadania powinno umożliwiać **odtworzenie wykonanych kroków** z wykorzystaniem opisu, poleceń i zrzutów. Oznacza to, że sprawozdanie powinno zawierać opis czynności w odpowiedzi na (także zawarte) kroki z zadania. Przeczytanie dokumentu powinno umożliwiać zapoznanie się z procesem i jego celem bez konieczności otwierania treści zadania.
- Omawiane polecenia dostępne jako clear text w treści, stosowane pliki wejściowe dołączone do sprawozdania jako oddzielne

- Sprawozdanie proszę umieścić w następującej ścieżce: ```<kierunek>/<grupa>/<inicjały><numerIndeksu>/Lab04/Sprawozdanie.md```, w formacie Markdown

## Zadania do wykonania

### Zachowywanie stanu (0-2 pkt)
* Zapoznaj się z dokumentacją https://docs.docker.com/storage/volumes/
* Przygotuj woluminy wejściowy i wyjściowy, o dowolnych nazwach, i podłącz je do kontenera bazowego, z którego rozpoczynano poprzednio pracę (kontener bazowy z Lab03)
* Uruchom kontener, zainstaluj niezbędne wymagania wstępne (jeżeli istnieją), ale *bez gita*!
* Sklonuj repozytorium na wolumin wejściowy
* Uruchom build w kontenerze
* Zapisz powstałe/zbudowane pliki na woluminie wyjściowym, tak by były dostępne po wyłączniu kontenera.
* Pamiętaj udokumentować wyniki.

### Eksponowanie portu (0-2 pkt)
* Zapoznaj się z dokumentacją https://iperf.fr/
* Uruchom wewnątrz kontenera serwer iperf (iperf3)
* Połącz się z nim z drugiego kontenera, zbadaj ruch
* Połącz się spoza kontenera - z hosta  (prawdopodobnie twój OS)
* Połącz się spoza kontenera - spoza hosta (prawdopodobnie dalej niż twój OS)
* Przedstaw przepustowość komunikacji lub problem z jej zmierzeniem 
* wyciągnij log z kontenera (woluminy mogą pomóc)

### Instancja Jenkins (0-3 pkt)
* Zapoznaj się z dokumentacją:
* * https://www.jenkins.io/doc/book/installing/docker/
* * https://www.jenkins.io/solutions/docker/
* * https://www.jenkins.io/blog/2023/08/24/gsoc-docker-based-quickstart/	
* Przeprowadź instalację skonteneryzowanej instancji Jenkinsa (może być z pomocnikiem DIND)
* Zainicjalizuj instację, wykaż działające kontenery, pokaż ekran logowania

## Zakres rozszerzony

### Komunikacja (0-1 pkt)
* Stwórz kontener czysto do budowania (bez narzędzi do klonowania/kopiowania, bez sklonowanego repozytorium, tylko specyficzny dla danego stosu technologicznego)
* Stwórz na jego bazie kontener przejściowy, który tylko buduje konkretną aplikację w stosie technologicznym, wyciągnij z niego pliki po skutecznym buildzie
* * Czy jesteś w stanie wyciągnąć te pliki bez wolumenów i w czasie działania kontenera?

### Usługi w rozumieniu systemu, kontenera i klastra (0-1 pkt)
* Zestaw w kontenerze ubuntu/fedora usługę SSHD, połącz się z nią, opisz zalety i wady (przypadki użycia...?) komunikacji z kontenerem z wykorzystaniem SSH

### Jenkins: zależności (0-1 pkt)
* Co jest potrzebne by w naszym Jenkinsie uruchomić Dockerfile dla buildera?
* Co jest potrzebne w Jenkinsie by uruchomić Docker Compose?
