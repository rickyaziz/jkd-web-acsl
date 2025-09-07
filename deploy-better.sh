#!/bin/bash

# pastikan di branch main
git checkout main
git pull origin main

# build hugo (hasilnya ada di ./public)
hugo

# simpan current directory
MAIN_DIR=$(pwd)

# pindah ke branch releases
git checkout releases

# Buat daftar file yang akan di-keep (file penting seperti README, .gitignore, dll)
# Hapus hanya file yang biasanya di-generate oleh Hugo
if [ -f "index.html" ]; then
    git rm -f *.html *.css *.js *.xml sitemap.xml 2>/dev/null || true
fi

# Hapus folder yang biasanya di-generate Hugo (tapi jaga .git)
for dir in css js images fonts; do
    if [ -d "$dir" ]; then
        git rm -rf "$dir" 2>/dev/null || true
        rm -rf "$dir" 2>/dev/null || true
    fi
done

# copy isi public/ dari main ke releases
cp -r "$MAIN_DIR/public"/* .

# tambah semua file baru
git add .
git commit -m "Update release build $(date '+%Y-%m-%d %H:%M:%S')"
git push origin releases

# balik lagi ke main biar aman
git checkout main

echo "Deployment selesai!"