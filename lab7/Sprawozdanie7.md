# Zajęcia 07
---
# Automatyzacja i zdalne wykonywanie poleceń za pomocą Ansible

### Instalacja zarządcy Ansible
* Utworzyłam dwie maszyny wirtualne:

![alt text](img/image.png)

* Zainstaluj oprogramowanie Ansible https://docs.ansible.com/ansible/latest/index.html
![alt text](img/image-1.png)
![alt text](img/image-2.png)
![alt text](img/image-3.png)
![alt text](img/image-4.png)

* Dokonaj inwentaryzacji systemów
  * Ustal przewidywalne nazwy komputerów stosując `hostnamectl`

  maszyna z ansible:

  ![alt text](img/image-5.png)

  druga:
  
  ![alt text](img/image-6.png)
  
  * Zweryfikuj łączność
  
  Poniewaz maszyny sa w sieci NAT nie moga ze soba sie komunikowac a wiec zamieniam na siec mostkowa:
  ![alt text](img/image-7.png)
  ![alt text](img/image-8.png)

  teraz komunikuja sie ze soba:
  ![alt text](img/image-9.png)

  * Wprowadź nazwy DNS dla maszyn wirtualnych tak, aby możliwe było wywoływanie komputerów za pomocą nazw, a nie tylko adresów IP, uzywjąć komendy: sudo nano /etc/hosts

  ![alt text](img/image-10.png)
  ![alt text](img/image-11.png)
   
  efekt:
  ![alt text](img/image-12.png)

  * Stwórz plik inwentaryzacji https://docs.ansible.com/ansible/latest/getting_started/get_started_inventory.html
    za pomoca komendy:  nano inventory.ini
  * Umieść w nim sekcje `Orchestrators` oraz `Endpoints`. Umieść nazwy maszyn wirtualnych w odpowiednich sekcjach

  ![alt text](img/image-13.png)

  ![alt text](img/image-14.png)

  * Wyślij żądanie `ping` do wszystkich maszyn.

   Ponieważ nie ma wymienionyh kluczy SSH, jedyne udane połączenie jest z localhost, bo jest to komunikajca do tej samej maszyny.
  ![alt text](img/image-15.png)

* Zapewnij łączność między maszynami

  Stworzenie i dodoanie klucza SSH:

  ![alt text](img/image-16.png)
  
  * Dokonaj wymiany kluczy między maszyną-dyrygentem, a końcówkami (`ssh-copy-id`)
  
  ![alt text](img/image-17.png)
  
  * Upewnij się, że łączność SSH między maszynami jest możliwa i nie potrzebuje haseł
  ![alt text](img/image-18.png)
  ![alt text](img/image-19.png)

### Zdalne wywoływanie procedur
  * Wyślij żądanie `ping` do wszystkich maszyn
  
  ![alt text](img/image-20.png) 
  
  * Skopiuj plik inwentaryzacji na maszyny/ę `Endpoints`

  copy_inventory.ini:

  ![alt text](img/image-30.png)
  
  ![alt text](img/image-21.png)
  ![alt text](img/image-22.png)
  
  * Ponów operacje, porównaj różnice w wyjściu
  
  ![alt text](img/image-23.png)
  
  Zmiana jest w changed=0, poniewaz nic juz nie było zmienione dlatego nie ma 1.

  * Przeprowadź operacje względem maszyny z wyłączonym serwerem SSH, odpiętą kartą sieciową
 
  ![alt text](img/image-24.png)
  ![alt text](img/image-26.png)

  host nieosiagalny:
  
  ![alt text](img/image-25.png)

### Zarządzanie kontenerem
* Wykonaj, w zależności od dostępności obrazów:
  * Uruchom kontener sekcji `Deploy` z poprzednich zajęć
  * Pobierz z Docker Hub aplikację "opublikowaną" w ramach kroku Publish
  * Uruchom aplikację dostarczaną kontenerem Deploy/Publish, podłącz *storage* oraz wyprowadź port
   
   docker_rm.yaml:

![alt text](img/image-29.png)

   Na hoscie docelowym doinstalowalam docekra.

  ![alt text](img/image-27.png)

  * Zatrzymaj i usuń kontener

  ![alt text](img/image-28.png)

  