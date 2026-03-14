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
![alt text](?raw=true)
## 3. Menambahkan Domain Target

Pada langkah ini file domains.txt dibuka menggunakan text editor nano untuk menambahkan domain yang akan digunakan sebagai target recon.

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/editor%20nano.png?raw=true)

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/domain.txt.png?raw=true)

Berikan permission executable pada script:









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
