# Zajęcia 05
---
## Pipeline, Jenkins, izolacja etapów

Format sprawozdania - jak poprzednie zajęcia

### Przygotowanie
* Upewnij się, że na pewno działają kontenery budujące i testujące, stworzone na poprzednich zajęciach
* Zapoznaj się z instrukcją instalacji Jenkinsa: https://www.jenkins.io/doc/book/installing/docker/
  * Uruchom obraz Dockera który eksponuje środowisko zagnieżdżone
  * Przygotuj obraz blueocean na podstawie obrazu Jenkinsa (czym się różnią?)
  * Uruchom Blueocean
  * Zaloguj się i skonfiguruj Jenkins
  * Zadbaj o archiwizację i zabezpieczenie logów
  
### Uruchomienie 
* Konfiguracja wstępna i pierwsze uruchomienie
  * Utwórz projekt, który wyświetla uname
  * Utwórz projekt, który zwraca błąd, gdy... godzina jest nieparzysta
* Utwórz "prawdziwy" projekt, który:
  * klonuje nasze repozytorium i przechodzi na osobistą gałąź
  * buduje wszystkie obrazy z dockerfiles i/lub komponuje via docker-compose z Lab02, Lab03, Lab04, które wczesniej wrzuciłeś na repozytorium
 
### Pipeline: Zdefiniuj pipeline w Jenkinsie, korzystający z kontenerów, celem realizacji kroków `start trigger -> build` w ogólnym modelu Potoku Wdrożeniowego:
* Wykonaj własny *fork* repozytorium wybranego oprogramowania i umieść w nim plik z Jenkinsowym pipeline'm 
* Wypisz wymagania wstępne środowiska dla tego programu
* Spawdź czy licencja potwierdza możliwość swobodnego obrotu kodem na potrzeby zadania
* Upewnij się że:
- [ ] Przechodzą dołączone do niego testy
- [ ] Wybrano kontener bazowy lub stworzono odpowiedni kontener wstepny (runtime dependencies)
- [ ] Build został wykonany wewnątrz kontenera
- [ ] Testy zostały wykonane wewnątrz kontenera
- [ ] Kontener testowy jest oparty o kontener build
- [ ] Logi z procesu są odkładane jako numerowany artefakt - poza kontenery

Opracuj:
* Kontener Jenkins i DIND skonfigurowany według instrukcji dostawcy oprogramowania
* Pliki `Dockerfile` wdrażające instancję Jenkinsa załączone w repozytorium przedmiotowym pod ścieżką i na gałęzi według opisu z poleceń README
* Zdefiniowany wewnątrz Jenkinsa obiekt projektowy „pipeline” (https://www.jenkins.io/doc/book/pipeline/getting-started/), realizujący następujące kroki:
	* Pipeline jest uruchaminy:
 		* Ręcznie na żądanie
     		* Automatycznie gdy na repo (fork programu) zostanie odnotowana zmiana (np.: commit do gałęzi 'main')  		 	
	* Kontener `Builder`, który powinien bazować na obrazie zawierającym dependencje (`Dependencies`), o ile stworzenie takiego kontenera miało uzasadnienie. Obrazem tym może być np. baza pobrana z Docker Hub (jak obraz node lub dotnet) lub obraz stworzony samodzielnie i zarejestrowany/widoczny w DIND (jak np. obraz oparty o Fedorę, doinstalowujący niezbędne zależności, nazwany Dependencies). Jeżeli, jak często w przypadku Node, nie ma różnicy między runtimowym obrazem a obrazem z dependencjami, proszę budować się w oparciu nie o latest, ale o **świadomie wybrany tag z konkretną wersją**
	* Obraz testujący, w ramach kontenera `Tester`
		* budowany przy użyciu ww. kontenera kod, wykorzystujący w tym celu testy obecne w repozytorium programu
		* Zadbaj o dostępność logów i możliwość wnioskowania jakie testy nie przechodzą
* Umieść `Jenkinsfile` definiujący *pipeline*  w repozytorium. 
(Pipeline może, ale nie musi, budować się na dedykowanym DIND, ale może się to dziać od razu na kontenerze CI. Należy udokumentować funkcjonalną różnicę między niniejszymi podejściami)
 
 
 


