# Zajęcia 03

---
# Docker + Docker Compose
- Wykonaj opisane niżej kroki i dokumentuj ich wykonanie
- Na dokumentację składają się następujące elementy:
  - plik tekstowy ze sprawozdaniem, zawierający opisy z każdego z punktów zadania
  - zrzuty ekranu przedstawiające wykonane kroki (oddzielny zrzut ekranu dla każdego kroku)
  - listing historii poleceń (cmd/bash/PowerShell)
- Sprawozdanie z zadania powinno umożliwiać **odtworzenie wykonanych kroków** z wykorzystaniem opisu, poleceń i zrzutów. Oznacza to, że sprawozdanie powinno zawierać opis czynności w odpowiedzi na (także zawarte) kroki z zadania. Przeczytanie dokumentu powinno umożliwiać zapoznanie się z procesem i jego celem bez konieczności otwierania treści zadania.

- Sprawozdanie proszę umieścić w następującej ścieżce: ```<grupa>/<inicjały><numerIndeksu>/Lab2/Sprawozdanie.md```, w formacie Markdown

## Zadania do wykonania

## Budowanie programu (0-6 pkt)
1. Znajdź (np.: na github) prosty, ale dobrze zrobiony projekt, umożliwiający łatwe wywołanie testów jednostkowych:
- tetris
- komunikator
- pong
- snake
- etc.
- możesz użyć swojego programu, jeżeli masz odpowiedni
2. Przeprowadź budowę/konfigurację środowiska na swoim OS.
3. Uruchom testy na OS.
4. Ponów ten proces w kontenerze interaktywnie
   - Wybierz i uruchom platformę
   - Zaopatrz ją w odpowiednie oprogramowanie wstępne na podstawie wybranego programu
   - Sklonuj aplikację z repozytorium (github'a)
   - Skonfiguruj środowisko i uruchom build
   - Uruchom testy
5. Stwórz Dockerfile, który ma automatycznie wykonwać pkt 4 jak tylko się uruchomi:
   - Na bazie platformowego obrazu...
   - ...doinstaluj wymagania wstępne...
   - ...sklonuj repozytorium...
   - ...zbuduj kod
6. Zaprezentuj Dockerfile i jego zbudowanie na potrzeby sprawozdania (instrukcje+screenshoty).
7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy (lecz nie robił build'a!)
 	* Kontener pierwszy ma przeprowadzać wszystkie kroki aż do builda
	* Kontener drugi ma bazować na pierwszym i wykonywać testy

## Runda bonusowa: kompozycja (0-3 pkt)
https://docs.docker.com/compose/intro/features-uses/
1. Zdefiniuj kompozycję, która stworzy dwie usługi
   - Pierwszą na bazie dockerfile'a budującego
   - Drugą na bazie pierwszej
2. Wdróż używając docker-compose :)

## Przygotowanie do wdrożenia: - dyskusje o deploy'u (0-1 pkt)
Otrzymany kontener ze zbudowanym programem może, ale nie musi, być już końcowym artefaktem procesu przygotowania nowego wydania. Jednakże, istnieje szereg okoliczności, w których nie ma to sensu. Na przykład gdy chodzi o oprogramowanie interaktywne, które kiepsko działa w kontenerze.

Przeprowadź dyskusję i wykaż:
* czy wybrany przez Ciebie program nadaje się do wdrażania i publikowania jako kontener, czy taki sposób interakcji nadaje się tylko do builda
* opisz w jaki sposób miałoby zachodzić przygotowanie finalnego artefaktu
	* jeżeli program miałby być publikowany jako kontener - czy trzeba go oczyszczać z pozostałości po buildzie?
	* A może dedykowany *deploy-and-publish* byłby oddzielną ścieżką (inne Dockerfiles)?
	* Czy zbudowany program należałoby dystrybuować jako pakiet, np. JAR, DEB, RPM, EGG, Nuget?
	* W jaki sposób zapewnić taki format? Dodatkowy krok (trzeci kontener)? Jakiś przykład?
   
