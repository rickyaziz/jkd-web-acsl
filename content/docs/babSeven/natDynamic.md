---
weight: 42
title: "NAT Dynamic"
description: "Topologi, Konfigurasi, Dan Tes Konektivitas NAT Static"
icon: "shuffle"
date: "2025-10-25T10:42:58+07:00"
lastmod: "2025-10-25T10:42:58+07:00"
toc: true
---

## Topologi

<center>
<img src="/images/babSeven/b.6.PNG" alt="Gambar B.6 - Topologi" class="img-fluid mb-3 responsive-img">
</center>

Adapun konfigurasi IP sumber dan IP tujuan untuk topologi jaringan dapat dilihat melalui tabel di bawah ini.

<center>
<img src="/images/babSeven/b.7.PNG" alt="Gambar B.7 - Tabel IP" class="img-fluid mb-3 responsive-img">
</center>

## Konfigurasi Router

1.  Konfigurasi memasukan IP R1.
    <center>
    <img src="/images/babSeven/b.8.PNG" alt="Gambar B.8 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

2.  Konfigurasi memasukan IP R2.
    <center>
    <img src="/images/babSeven/b.9.PNG" alt="Gambar B.9 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

## Konfigurasi NAT Statis

1.  Berikut konfigurasi NAT dinamik pada router R2.
    <center>
    <img src="/images/babSeven/b.10.PNG" alt="Gambar B.10 - Konfig NAT" class="img-fluid mb-3 responsive-img">
    </center>

## Konfigurasi PC dan Laptop

1.  Masukan IP di Laptop.
    <center>
    <img src="/images/babSeven/b.11.PNG" alt="Gambar B.11 - Konfig Laptop" class="img-fluid mb-3 responsive-img">
    </center>

2.  Masukan IP di PC.
    <center>
    <img src="/images/babSeven/b.12.PNG" alt="Gambar B.12 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

## Tes Konektivitas

1.  Ping dari PC ke R1.
    <center>
    <img src="/images/babSeven/b.13.PNG" alt="Gambar B.11 - Konfig Laptop" class="img-fluid mb-3 responsive-img">
    </center>

2.  Ping dari Laptop ke IP R1.
    <center>
    <img src="/images/babSeven/b.14.PNG" alt="Gambar B.12 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

{{% alert context="success"%}}

Jika PC di ping ke R1 menampilkan output <strong>Successful/TTL</strong> dan Laptop di ping ke R1 menampilkan output <strong>Failed/Request timed out</strong> seperti di atas, maka NAT Dynamic berhasil dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="danger"%}}

Jika PC dan Laptop ketika di ping menampilkan output <strong>Failed/Request timed out</strong>, maka NAT Dynamic belum dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="warning"%}}

<p>
<strong>Penjelasan :</strong>
</p>

<p>
Kenapa yang satu dapat terhubung dan yang satunya lagi gagal terhubung?  
</p>

<p>
Karena 
fungsi dari Dynamic itu sendiri adalah <strong>jumlah IP Public harus sama dengan IP 
Private</strong>, sedangkan dalam topologi diatas kita hanya memiliki 1 IP Public maka
hanya 1 IP Private saja yang bisa di translate. 
</p>

{{% /alert %}}
