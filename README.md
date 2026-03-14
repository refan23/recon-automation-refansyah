# recon-automation-refansyah
## Deskripsi Project
Project ini merupakan automation tool sederhana untuk melakukan proses reconnaissance (recon) menggunakan Bash scripting. Script ini akan membaca daftar domain dari file input, mencari subdomain menggunakan subfinder, menghapus duplikasi dengan anew, dan mengecek host yang aktif menggunakan httpx.

Automation ini dibuat untuk mempercepat proses recon sehingga tidak perlu melakukan pengecekan secara manual pada setiap domain.

---
## Tools yang Digunakan

Tools yang digunakan dalam project ini:

- Bash
- Subfinder
- Httpx
- Anew
- Git
- Kali Linux

---

## Setup Environment

Instalasi tools pendukung via Go: salin dan jalankan perintah berikut pada terminal Anda.
### Install subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
### Install httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
### Install anew
go install -v github.com/tomnomnom/anew@latest


Cek kembali jika tools sudah berhasil di install, bisa melalui perintah berikut.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/Cek%20tools.png?raw=true)

---

## Cara Menjalankan Script
## 1. Clone Repository dari GitHub

Pada langkah ini dilakukan proses cloning repository dari GitHub ke dalam sistem Kali Linux menggunakan perintah git clone. Setelah repository berhasil di-clone, kemudian masuk ke dalam folder project menggunakan perintah cd.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/Direktori%20recon-automation.png?raw=true)

## 2. Membuat Struktur Folder Project

Setelah masuk ke dalam folder project, langkah berikutnya adalah membuat struktur folder yang akan digunakan untuk menyimpan input, output, script, dan log.

Folder yang dibuat antara lain:
- input
- output
- scripts
- logs

Kemudian dibuat juga beberapa file yang akan digunakan dalam proses recon seperti :
domains.txt, live.txt, all-subdomains.txt, progress.log, errors.log, dan recon-auto.sh.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/Struktur%20folder%20projek.png?raw=true)

## 3. Menambahkan Domain Target

Pada langkah ini file domains.txt dibuka menggunakan text editor nano untuk menambahkan domain yang akan digunakan sebagai target recon.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/editor%20nano.png?raw=true)

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/domain.txt.png?raw=true)

Domain-domain tersebut kemudian akan diproses oleh script untuk mencari subdomain.

## 4. Membuat Script Automation Recon

Pada tahap ini dibuat script Bash bernama recon-auto.sh yang berada di dalam folder scripts.

Script ini berfungsi untuk: 
- membaca domain dari file domains.txt
- mencari subdomain menggunakan subfinder
- menghapus duplikasi menggunakan anew
- mengecek host yang aktif menggunakan httpx
- menyimpan hasil ke dalam file output
- mencatat log proses scanning

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/editor%20nano%20script.png?raw=true)

Pada bagian ini dimasukkan kode Bash yang berfungsi untuk menjalankan proses automation recon.

Script tersebut akan membaca domain satu per satu dari file domains.txt, kemudian menjalankan tool subfinder untuk mencari subdomain. Hasil subdomain akan diproses menggunakan anew untuk menghindari duplikasi.

Setelah semua subdomain terkumpul, tool httpx digunakan untuk mengecek apakah subdomain tersebut memiliki web server yang aktif.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/recon-auto.sh.png?raw=true)

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/recon-auto.sh%202.png?raw=true)

## 5. Memberikan Permission Executable pada Script

Agar script dapat dijalankan, perlu diberikan permission executable menggunakan perintah chmod.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/permission%20executable.png?raw=true)

Jika berhasil maka file recon-auto.sh akan memiliki permission executable.

## 6. Menampilkan Hasil Subdomain

Setelah script dijalankan, semua subdomain yang ditemukan akan disimpan dalam file subdomain.txt.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/hasil%20subdomain.txt.png?raw=true)

Hasil yang muncul merupakan daftar subdomain yang ditemukan dari domain target.

## 7. Menampilkan Hasil Live Host

Setelah proses pengecekan menggunakan httpx, host yang aktif akan disimpan dalam file live.txt

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/hasil%20live%20host.txt.png?raw=true)

Output yang ditampilkan berisi URL host yang aktif beserta status code HTTP.


## 8. Menjalankan Script Recon

Ketika script dijalankan, proses recon akan berjalan secara otomatis mulai dari pencarian subdomain hingga pengecekan host yang aktif.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/eksekusi%20script%20recon.png?raw=true)

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/eksekusi%20script%20recon%202.png?raw=true)

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/eksekusi%20script%20recon%203.png?raw=true)

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/eksekusi%20script%20recon%204.png?raw=true)








Jalankan script:

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/Direktori%20recon-automation.png?raw=true)

Script akan melakukan proses berikut:

1. Membaca domain dari file `domains.txt`
2. Mencari subdomain menggunakan **subfinder**
3. Menghapus duplikasi menggunakan **anew**
4. Mengecek host yang aktif menggunakan **httpx**
5. Menyimpan hasil ke file output

---

# Contoh Input

File: `input/domains.txt`
