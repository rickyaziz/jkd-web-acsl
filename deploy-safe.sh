#!/bin/bash

# pastikan di branch main
git checkout main
git pull origin main

# build hugo (hasilnya ada di ./public)
hugo

# pindah ke branch releases
git checkout releases

# hapus hanya file build lama (bukan semua file)
# Hapus hanya file dan folder yang biasanya di-generate Hugo
if [ -d "public" ]; then
    rm -rf public/*
fi

# Atau jika ingin lebih spesifik, hapus hanya file HTML, CSS, JS
find . -name "*.html" -not -path "./.git/*" -delete
find . -name "*.css" -not -path "./.git/*" -delete
find . -name "*.js" -not -path "./.git/*" -delete

# copy isi public/ dari main ke releases
git checkout main -- public/
cp -r public/* .
rm -rf public/

# tambah semua file baru
git add .
git commit -m "Update release build"
git push origin releases

# balik lagi ke main biar aman
git checkout main