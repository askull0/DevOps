# Pierwszym krokiem było zainstalowanie klienta Git, którego juz miałam.
# Zainstalowanie obslugi kluczy SSH oraz ich uruchomienie:
![alt text](<img/Zrzut ekranu 2024-03-02 155059.png>)
![alt text](<img/Zrzut ekranu 2024-03-02 155157.png>)
![alt text](<img/Zrzut ekranu 2024-03-02 125916.png>)

# Sklonowanie repozytorium za pomocą HTTPS i personal access tokena.
Stworzenie personal access token:
![alt text](<img/Zrzut ekranu 2024-03-02 155530.png>)

oraz sklonowanie:
![alt text](<img/Zrzut ekranu 2024-02-29 200556.png>)

# Sklonowanie repozytorium za pomoca uzycia klucza ssh:
Wygenerowanie kluczy ssh:
![alt text](<img/Zrzut ekranu 2024-02-29 204314.png>)
oraz dodanie kluczy do agenta i githuba
![alt text](<img/Zrzut ekranu 2024-03-02 134718.png>)

Sklonowanie repozytorium za pomoca ssh
![alt text](<img/Zrzut ekranu 2024-03-02 133252.png>)

Przełaczenie się na stworzonego brancha
![alt text](<img/Zrzut ekranu 2024-03-02 140437.png>)

Stworzenie Git hook'a i umieszczenie go w odpowiednim katalogu .git/hooks/ oraz w katalogu PL412110
Skrypt sprawdza czy message commita zaczyna sie od inicjalu i indeksu
![alt text](<img/Zrzut ekranu 2024-03-02 164910.png>)

TO DO
Wyślij zmiany do zdalnego źródła
Spróbuj wciągnąć swoją gałąź do gałęzi grupowej
Zaktualizuj sprawozdanie i zrzuty o ten krok i wyślij aktualizację do zdalnego źródła (na swojej gałęzi)
Wystaw Pull Request do gałęzi grupowej