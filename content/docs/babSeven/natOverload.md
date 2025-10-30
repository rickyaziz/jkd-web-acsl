---
weight: 43
title: "NAT Overload"
description: "Topologi, Konfigurasi, Dan Tes Konektivitas NAT Overload"
icon: "layers"
date: "2025-10-25T10:42:58+07:00"
lastmod: "2025-10-25T10:42:58+07:00"
toc: true
---

## Topologi

<center>
<img src="/images/babSeven/b.15.PNG" alt="Gambar B.15 - Topologi" class="img-fluid mb-3 responsive-img">
</center>

Adapun konfigurasi IP sumber dan IP tujuan untuk topologi jaringan dapat dilihat melalui tabel di bawah ini.

<center>
<img src="/images/babSeven/b.16.PNG" alt="Gambar B.16 - Tabel IP" class="img-fluid mb-3 responsive-img">
</center>

## Konfigurasi Router

1.  Konfigurasi memasukan IP R1.
    <center>
    <img src="/images/babSeven/b.17.PNG" alt="Gambar B.17 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

2.  Konfigurasi memasukan IP R2.
    <center>
    <img src="/images/babSeven/b.18.PNG" alt="Gambar B.18 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

## Konfigurasi NAT Overload

1.  Berikut konfigurasi NAT Overload pada router R1.
    <center>
    <img src="/images/babSeven/b.19.PNG" alt="Gambar B.19 - Konfig NAT" class="img-fluid mb-3 responsive-img">
    </center>

2.  Konfigurasi IP Route R1.
    <center>
    <img src="/images/babSeven/b.20.PNG" alt="Gambar B.20 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

3.  Konfigurasi IP Route R2.
    <center>
    <img src="/images/babSeven/b.21.PNG" alt="Gambar B.21 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

## Konfigurasi PC dan Laptop

1.  Memasukan IP PC 1.
    <center>
    <img src="/images/babSeven/b.22.PNG" alt="Gambar B.22 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

2.  Memasukan IP di Laptop.
    <center>
    <img src="/images/babSeven/b.23.PNG" alt="Gambar B.23 - Konfig Laptop" class="img-fluid mb-3 responsive-img">
    </center>

3.  Memasukan IP di Server.
    <center>
    <img src="/images/babSeven/b.24.PNG" alt="Gambar B.24 - Konfig Server" class="img-fluid mb-3 responsive-img">
    </center>

## Tes Konektivitas

1.  Ping dari PC ke Server.

    <p>
    Selanjutnya lakukan uji coba ping dari Laptop dan PC ke Server dengan mengetik <strong>ping 3.3.3.2</strong>, maka hasilnya hanya ada <strong>satu saja yang berhasil</strong> dan yang <strong>satunya lagi gagal.</strong> 
    </p>

    <center>
    <img src="/images/babSeven/b.25.PNG" alt="Gambar B.25 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

2.  Jalankan debug di R1.

    {{% alert context="warning"%}}
    <p>
    Dibagian interface overload, kita pilih interface yang <strong>outside</strong>, atau interface yang memiliki <strong>IP Public</strong>. Selanjutnya kita jalankan debug di R1, <strong>untuk mengecek paket data yang lewat</strong>.
    </p>
    {{% /alert %}}
        <center>
        <img src="/images/babSeven/b.26.PNG" alt="Gambar B.26 - Debug Router" class="img-fluid mb-3 responsive-img">
        </center>

<span><span>

<center>
<img src="/images/babSeven/b.27.PNG" alt="Gambar B.27 - Debug Router" class="img-fluid mb-3 responsive-img">
</center>

{{% alert context="success"%}}

Jika PC di ping ke server menampilkan output <strong>Successful/TTL</strong> dan Laptop di ping ke Server menampilkan output <strong>Failed/Request timed out</strong> seperti di atas, maka NAT Overload berhasil dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="danger"%}}

Jika PC dan Laptop ketika di ping ke Server menampilkan output <strong>Failed/Request timed out</strong>, maka NAT Overload belum dikonfigurasi dengan benar.

{{% /alert %}}

## Tugas

<div class="alert alert-info" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakanlah soal latihan berikut ini:</strong>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">1</div>
<p class="mb-2"><strong>Soal 1:</strong></p>
<p>
Buatlah topologi jaringan sederhana dengan spesifikasi:
</p>
<ul>
<li>
<p>
1 router, 1 switch, dan 2 PC.
<p>
</li>
</ul>
<ul>
<li>
<p>
Konfigurasikan NAT statis pada router untuk menerjemahkan IP privat 
(192.168.1.2) menjadi IP publik (203.0.113.2). 
<p>
</li>
</ul>
<ul>
<li>
<p>
Tes konektivitas dengan melakukan ping dari salah satu PC ke jaringan 
eksternal (internet).
<p>
</li>
</ul>
</div>

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">2</div>
<p class="mb-2"><strong>Soal 2:</strong></p>
<p>
Buatlah jaringan NAT dinamis dengan skenario berikut:
</p>
<ul>
<li>
<p>
1 router, 1 switch, dan 3 PC.
<p>
</li>
</ul>
<ul>
<li>
<p>
Alokasikan pool alamat IP publik (203.0.113.1 - 203.0.113.5) untuk 
diterjemahkan dari IP privat (192.168.0.0/24).  
<p>
</li>
</ul>
<ul>
<li>
<p>
Konfigurasi NAT dinamis pada router dan pastikan setiap perangkat 
mendapatkan alamat IP dari pool saat terhubung ke internet. 
<p>
</li>
</ul>

</div>
</div>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">3</div>
<p class="mb-2"><strong>Soal 3:</strong></p>
<p>
Konfigurasikan NAT Overload (PAT) pada router dengan skenario berikut:
</p>
<ul>
<li>
<p>
Jaringan privat (10.0.0.0/24) dengan 5 PC yang akan berbagi satu alamat IP 
publik (203.0.113.10). 
<p>
</li>
</ul>
<ul>
<li>
<p>
Tes konektivitas antar perangkat dan cek nomor port yang digunakan dalam 
NAT Overload. 
<p>
</li>
</ul>
</div>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Soal no. 1 kerjakan dengan metode Static NAT (SNAT).</small>
</div>
<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Soal no. 2 kerjakan dengan metode Dynamic NAT.</small>
</div>
<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Soal no. 3 kerjakan dengan metode NAT Overloading (PAT).</small>
</div>
</div>
