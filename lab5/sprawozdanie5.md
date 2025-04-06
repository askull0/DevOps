## Pipeline, Jenkins, izolacja etapów

### Przygotowanie

Instalacje jenkisa i kofiguracja wykonana na poprzednic zajaciach.  
  Działający Blueocean:
  ![alt text](zdj/image.png)
  
### Uruchomienie 
* Konfiguracja wstępna i pierwsze uruchomienie
  * Utwórz projekt, który wyświetla uname, komenda wpisana przy uruchomianiu builda
  ![alt text](zdj/image-1.png)
  * Utwórz projekt, który zwraca błąd, gdy godzina jest nieparzysta
  ![alt text](zdj/image-2.png)
* Utwórz "prawdziwy" projekt, który:
  * klonuje nasze repozytorium i przechodzi na osobistą gałąź
  ![alt text](zdj/image-3.png)
  Wyswietla sie komunikat infomujacy ze mamy prywatne repozytorium i nie mamy danych uweirzytelniających.
  Aby rozwiazać ten problem dodajemy credentials:
  ![alt text](zdj/image-4.png)
  wspisujemy nasz login github oraz jako haslo utworzuony wczesniej acces token
  ![alt text](zdj/image-5.png)
  oraz okreslamy galaz która będzie budowana:
  ![alt text](zdj/image-6.png)
  * buduje wszystkie obrazy z dockerfiles i/lub komponuje via docker-compose z Lab02, Lab03, Lab04, które wczesniej wrzuciłeś na repozytorium
  ![alt text](zdj/image-7.png)
  Buildy nie przeszly testow poniewaz nie było zainstalowanego docker compose wiec trzeba było zbudowac obraz jenkisa z dodana komenda: RUN apt-get install docker-compose-plugin
  i sukces:
 ![alt text](zdj/image-8.png)

### Pipeline: Zdefiniuj pipeline w Jenkinsie, korzystający z kontenerów, celem realizacji kroków `start trigger -> build` w ogólnym modelu Potoku Wdrożeniowego:
* Wykonaj własny *fork* repozytorium wybranego oprogramowania :
![alt text](zdj/image-10.png)
* Wypisz wymagania wstępne środowiska dla tego programu:
yarn,npm,node
* Repo posiada licencja :
![alt text](zdj/image-9.png)
* Upewnij się że:
- Przechodzą dołączone do niego testy po uzyciu komendy yarn install:
![alt text](zdj/image-11.png)
- Wybrano kontener bazowy lub stworzono odpowiedni kontener wstepny (runtime dependencies)
![alt text](zdj/image-12.png)
- Build został wykonany wewnątrz kontenera
![alt text](zdj/image-14.png)
![alt text](zdj/image-13.png)
- Testy zostały wykonane wewnątrz kontenera
![alt text](zdj/image-15.png)
- Kontener testowy jest oparty o kontener build:
![alt text](zdj/image-19.png)
- Logi:
![alt text](zdj/image-20.png)

Jenkinsfile umieszony w repo (fork), podzielony na sceny w ktorej najpierw buduje i wykonuje testy a pozniej zapisuje logi
![alt text](zdj/image-23.png)
![alt text](zdj/image-21.png)

Projekt w pipeline:
![alt text](zdj/image-24.png)
![alt text](zdj/image-25.png)

pipeline wykonujacy wczesniej sprawdzone i działajace buildy, efekt gdy jest uruchomiony recznie oraz przez commit automataycznie (dzieje sie tak porzez triggry)

![alt text](zdj/image-22.png)
 		 	
Dzięki pipeline moza automatyzować proces CI/CD, eliminując konieczność ręcznej realizacji etapów. Sprawwia ze taki proces jak budowanie, testowanie i wdrażanie przebiega spojnie. Jenkins umożliwia monitorowanie wykonania pipeline'ów i śledzenie postępów procesu CI/CD.