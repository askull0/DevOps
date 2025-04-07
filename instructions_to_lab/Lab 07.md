# Zajęcia 07
---
# Automatyzacja i zdalne wykonywanie poleceń za pomocą Ansible

Format sprawozdania - jak w poprzednich zajęciach.

## Zadania do wykonania
### Instalacja zarządcy Ansible
* Utwórz drugą maszynę wirtualną o **jak najmniejszym** zbiorze zainstalowanego oprogramowania
* Zainstaluj oprogramowanie Ansible https://docs.ansible.com/ansible/latest/index.html
* Dokonaj inwentaryzacji systemów
  * Ustal przewidywalne nazwy komputerów stosując `hostnamectl`
  * Wprowadź nazwy DNS dla maszyn wirtualnych, stosując `systemd-resolved` lub `resolv.conf` - tak, aby możliwe było wywoływanie komputerów za pomocą nazw, a nie tylko adresów IP
  * Zweryfikuj łączność
  * Stwórz plik inwentaryzacji https://docs.ansible.com/ansible/latest/getting_started/get_started_inventory.html
  * Umieść w nim sekcje `Orchestrators` oraz `Endpoints`. Umieść nazwy maszyn wirtualnych w odpowiednich sekcjach
  * Wyślij żądanie `ping` do wszystkich maszyn
* Zapewnij łączność między maszynami
  * Użyj co najmniej dwóch maszyn wirtualnych (optymalnie: trzech)
  * Dokonaj wymiany kluczy między maszyną-dyrygentem, a końcówkami (`ssh-copy-id`)
  * Upewnij się, że łączność SSH między maszynami jest możliwa i nie potrzebuje haseł
  
### Zdalne wywoływanie procedur
  * Wyślij żądanie `ping` do wszystkich maszyn
  * Skopiuj plik inwentaryzacji na maszyny/ę `Endpoints`
  * Ponów operacje, porównaj różnice w wyjściu
  * Przeprowadź operacje względem maszyny z wyłączonym serwerem SSH, odpiętą kartą sieciową
  
### Zarządzanie kontenerem
* Wykonaj, w zależności od dostępności obrazów:
  * Uruchom kontener sekcji `Deploy` z poprzednich zajęć
  * Pobierz z Docker Hub aplikację "opublikowaną" w ramach kroku Publish
  * Opcjonalnie: zaimportuj obrazy `Builder` i `Tester` (z pliku, nie z Docker Hub)
  * Uruchom aplikację dostarczaną kontenerem Deploy/Publish, podłącz *storage* oraz wyprowadź port
  * Zatrzymaj i usuń kontener
* W przypadku aplikacji działającej poza kontenerem:
  * Wyślij plik aplikacji na zdalną maszynę
  * Stwórz kontener przeznaczony do uruchomienia aplikacji (zaopatrzony w zależności)
  * Umieść/udostępnij plik w kontenerze, uruchom w nim aplikację
  
