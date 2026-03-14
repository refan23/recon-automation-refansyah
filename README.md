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

Instalasi tools pendukung via Go: salin dan jalankan perintah berikut pada terminal Anda
### Install subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
### Install httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
### Install anew
go install -v github.com/tomnomnom/anew@latest

---

## Cara Menjalankan Script
Masuk ke folder project:

![alt text](https://github.com/refan23/recon-automation-refansyah/blob/main/img/Direktori%20recon-automation.png?raw=true)

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
