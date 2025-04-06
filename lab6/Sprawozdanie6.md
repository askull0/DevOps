# Sprawozdanie  Pipeline: pełna lista kontrolna

## Przpomnienie - ścieżka krytyczna
Podstawowy zbiór czynności do wykonania w ramach zadania z pipelinem CI/CD. Ścieżką krytyczną jest:
- [x] commit (lub manual trigger @ Jenkins) - już omawiane w Lab05
- [x] clone - już omawiane w Lab05
- [x] build - już omawiane w Lab05
- [x] test - już omawiane w Lab05
- [ ] deploy
- [ ] publish

### Pełna lista kontronla rzeczy do uwzględnienia w pipeline
#### Z Lab05:
- [x] Aplikacja została wybrana
- [x] Licencja potwierdza możliwość swobodnego obrotu kodem na potrzeby zadania
- [x] Wybrany program buduje się
- [x] Przechodzą dołączone do niego testy
- [x] Zdecydowano, czy jest potrzebny fork własnej kopii repozytorium
- [x] Wybrano kontener bazowy lub stworzono odpowiedni kontener wstepny (runtime dependencies)
- [x] Build został wykonany wewnątrz kontenera
- [x] Testy zostały wykonane wewnątrz kontenera
- [x] Kontener testowy jest oparty o kontener build
- [x] Logi z procesu są odkładane jako numerowany artefakt

Wykonane na poprzednich zajeciach.

### Diagramy UML
- [ ] Stworzono diagram komunikacji UML (communication diagram) zawierający sekwencję dla procesu CI/CD, który wykonujesz
![alt text](zdj/image-15.png)
- [ ] Stworzono diagram wdrożeniowy UML (deployment diagram) zawierający sekwencję dla procesu CI/CD, który wykonujesz
![alt text](zdj/image-17.png)

#### Z Lab06:
Działajce wczesniej stworzone kontenery blueocean oraz DIND
![alt text](zdj/image-1.png)
- Zdefiniowano kontener 'deploy' służący zbudowanej aplikacji do pracy
![alt text](zdj/image-4.png)
a wiec kontener buildowy trzeba było zmienic:
![alt text](zdj/image-5.png)

w pipeline:
![alt text](zdj/image-3.png)
oraz dodanie skryptu, który usuwa poprzednie zbudowane kontenery i obrazy
![alt text](zdj/image-2.png)
na podstawie skryptu:
![alt text](zdj/image-18.png)



- Wersjonowany kontener 'deploy' ze zbudowaną aplikacją jest wdrażany na instancję Dockera
![alt text](zdj/image.png)
![alt text](zdj/image-6.png)

Poniewaz aplikacja jest uruhacmiana poprzez DIND, udtsepiony port dziala w innej sieci wiec nie moge zoabczyc w przeglądarce efktu dziala aplikacji, ale testy przeprowadzane w środku działają.

- Zdefiniowano, jaki element ma być publikowany jako artefakt: kontener z programem
![alt text](zdj/image-8.png)
![alt text](zdj/image-7.png)

- Dostępność artefaktu: publikacja do Rejestru online (dockerhub)
Najpierw trzeba było stworzyć PAT
![alt text](zdj/image-9.png)
![alt text](zdj/image-10.png)
![alt text](zdj/image-11.png)
pipeline odpowiadajacy za tą publikacje
![alt text](zdj/image-16.png)
wersjonanowanie odbywa sie z dziejsza data

pobranie obrazu z dockerhub
![alt text](zdj/image-12.png)
oraz zbudowanie i uruchomienie kontenera na ejgo podstawie:
![alt text](zdj/image-13.png)
oraz efekt dzialania
![alt text](zdj/image-14.png)


