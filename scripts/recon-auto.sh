#!/bin/bash

# menentukan lokasi file input, output, dan log
INPUT="input/domains.txt"
ALLSUB="output/all-subdomains.txt"
LIVE="output/live.txt"
LOG="logs/progress.log"
ERROR="logs/errors.log"

# mencatat waktu mulai recon
echo "[ $(date) ] Recon started" | tee -a $LOG

# membaca domain dari file domains.txt satu per satu
for domain in $(cat $INPUT); do

# mencatat domain yang sedang diproses
echo "[ $(date) ] Scanning domain: $domain" | tee -a $LOG

# mencari subdomain menggunakan subfinder
# lalu menghapus duplikasi menggunakan anew
subfinder -d $domain 2>>$ERROR | anew $ALLSUB

done

# setelah semua subdomain terkumpul, cek host yang aktif
echo "[ $(date) ] Checking live hosts..." | tee -a $LOG

# httpx digunakan untuk mengecek apakah subdomain memiliki web server aktif
cat $ALLSUB | httpx -title -status-code -silent > $LIVE 2>>$ERROR

# menghitung jumlah subdomain unik
TOTAL_SUB=$(wc -l < $ALLSUB)

# menghitung jumlah host yang aktif
TOTAL_LIVE=$(wc -l < $LIVE)

# menampilkan jumlah hasil recon
echo "[ $(date) ] Total Subdomains: $TOTAL_SUB" | tee -a $LOG
echo "[ $(date) ] Total Live Hosts: $TOTAL_LIVE" | tee -a $LOG

# menandakan proses recon selesai
echo "[ $(date) ] Recon completed" | tee -a $LOG
