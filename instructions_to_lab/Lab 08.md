# Zajęcia 08
---
# Pliki odpowiedzi dla wdrożeń nienadzorowanych

## Format sprawozdania - jak poprzednio


## Zagadnienie
Niniejszy temat jest poświęcony przygotowaniu źródła instalacyjnego systemu dla maszyny wirtualnej/fizycznego serwera/środowiska IoT. Źródła takie stosowane są do zautomatyzowania instalacji środowiska testowego dla oprogramowania, które nie pracuje w całości w kontenerze

### Cel zadania
* Utworzyć źródło instalacji nienadzorowanej dla systemu operacyjnego hostującego nasze oprogramowanie
* Przeprowadzić instalację systemu, który po uruchomieniu rozpocznie hostowanie naszego programu

## Zadania do wykonania
* Zainstaluj system Fedora/Centos Stream (może być na VM) https://download.fedoraproject.org/pub/fedora/linux/releases/38/Server/x86_64/iso/Fedora-Server-netinst-x86_64-38-1.6.iso
* Zapoznaj się z https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/installation_guide/sn-automating-installation
* Pobierz plik odpowiedzi `/root/anaconda-ks.cfg`
* Plik odpowiedzi może nie zawierać wzmianek na temat potrzebnych repozytoriów. Na przykład, dla systemu Fedora 38:
  * `url --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-38&arch=x86_64`
  * `repo --name=update --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f38&arch=x86_64`
* Plik odpowiedzi może zakładać pusty dysk. Zapewnij, że zawsze będzie formatować całość, stosując `clearpart --all`
* Rozszerz plik odpowiedzi o repozytoria i oprogramowanie potrzebne do uruchomienia programu, zbudowanego w ramach projektu. 
  * W przypadku kontenera, jest to po prostu Docker.
    * Utwórz w sekcji `%post` mechanizm umożliwiający pobranie i uruchomienie kontenera
    * Pamiętaj, że Docker zadziała dopiero na uruchomionym systemie - nie da się wdać z interakcji z Dockerem z poziomu instalatora systemu
  * Gdy program pracuje poza kontenerem, potrzebny jest cały łańcuch dependencji oraz sam program.
    * Użyj sekcji `%post`, by pobrać z Jenkinsa zbudowany artefakt
    * Jeżeli nie jest to możliwe/wykonalne, użyj dowolnego serwera SFTP/FTP/HTTP aby "zahostować" program - następnie pobierz go z tak hostującego serwera (stosując np. `wget`)
    * Umieść program w ścieżce stosownej dla binariów `/usr/local/bin/`
    * Zadbaj w sekcji `%packages`, by system zainstalował wszystkie dependencje potrzebne do działania programu
  * Wybierz oprogramowanie na podstawie poprzedniego sprawozdania.
  * Zapoznaj się z dokumentacją pliku odpowiedzi na https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/performing_an_advanced_rhel_9_installation/kickstart-commands-and-options-reference_installing-rhel-as-an-experienced-user
* Zapewnij, by od razu po pierwszym uruchomieniu systemu, oprogramowanie zostało uruchomione (w dowolny sposób)

## Zakres rozszerzony
* Połącz plik odpowiedzi z nośnikiem instalacyjnym lub zmodyfikuj nośnik tak, by wskazywał na plik odpowiedzi w sieci (plan minimum: wskaź nośnikowi, aby użył pliku odpowiedzi)
* Zautomatyzuj proces tworzenia maszyny wirtualnej i uruchomienia instalacji nienadzorowanej. Użyj np. wiersza poleceń VirtualBox lub cmdletów Hyper-V
  * https://www.virtualbox.org/manual/ch08.html
  * https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/try-hyper-v-powershell
* Wykaż, że system zainstalował się, a wewnątrz pracuje odpowiedni program
