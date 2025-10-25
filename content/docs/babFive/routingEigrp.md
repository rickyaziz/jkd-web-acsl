---
weight: 32
title: "Routing EIGRP"
description: "Konfigurasi Dan Tes Konektivitas Routing EIGRP"
icon: "bolt"
date: "2025-10-20T18:07:58+07:00"
lastmod: "2025-10-20T18:07:58+07:00"
toc: true
---

## Pengertian

Enhanced Interior Gateway Routing Protocol (EIGRP) merupakan protokol
routing dinamis yang dikembangkan oleh Cisco sebagai peningkatan dari IGRP
(Interior Gateway Routing Protocol). EIGRP meningkatkan efisiensi, kecepatan
konvergensi, dan skalabilitas. Protokol ini disebut hybrid karena menggabungkan fitur
dari routing distance-vector dan link-state, memberikan kinerja yang lebih baik dan
fleksibilitas lebih tinggi dibandingkan protokol routing seperti RIP.

### Konfigurasi Routing EIGRP

Berikut adalah konfigurasi EIGRP pada cisco packet tracer :

<center>
<img src="/images/babFive/b.23.PNG" alt="Gambar B.14 - Konfig EIGRP" class="img-fluid mb-3 responsive-img">
</center>

1.  Router A.

    <center>
    <img src="/images/babFive/b.24.PNG" alt="Gambar B.15 - Konfig Router" class="img-fluid mb-3 responsive-img">
    <img src="/images/babFive/b.25.PNG" alt="Gambar B.15 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

2.  Router B.

    <center>
    <img src="/images/babFive/b.26.PNG" alt="Gambar B.16 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

3.  Router C.

    <center>
    <img src="/images/babFive/b.27.PNG" alt="Gambar B.17 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

### Uji Konektivitas Antar PC

<center>
<img src="/images/babFive/b.28.PNG" alt="Gambar B.18 - Uji Koneksi" class="img-fluid mb-3 responsive-img">
</center>

### Ping Antar PC

1.  Ping dari PC 0 ke PC 1

    <center>
    <img src="/images/babFive/b.29.PNG" alt="Gambar B.19 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

2.  Ping dari PC 1 ke PC 0.

    <center>
    <img src="/images/babFive/b.30.PNG" alt="Gambar B.20 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

### Pengecekan Pada Masing - Masing Router

- Untuk memastikan bahwa EIGRP telah diterapkan dengan benar, ketik perintah berikut pada masing-masing router:

  <center>
  <img src="/images/babFive/b.31.PNG" alt="Gambar B.21 - Cek Router" class="img-fluid mb-3 responsive-img">
  </center>

- Contoh Router A saat pengecekan.

  <center>
  <img src="/images/babFive/b.32.PNG" alt="Gambar B.22 - Cek Router" class="img-fluid mb-3 responsive-img">
  </center>

{{% alert context="success"%}}

Jika PC 0 di ping ke PC 1 atau sebaliknya, kemudian menampilkan output <strong>Successful</strong> seperti di atas, maka routing berhasil dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="danger"%}}

Jika PC 0 di ping ke PC 1 atau sebaliknya, kemudian menampilkan output <strong>Failed</strong>, maka routing belum dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="warning"%}}

Dalam Pengecekan status Routing yang digunakan pada EIGRP. Pastikan muncul huruf <strong>D</strong> di sebelah kanan seperti gambar di atas.

<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Jika bingung, silahkan bertanya ke Asisten shift mengajar.</small>
{{% /alert %}}

## Tugas

<div class="alert alert-info" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakanlah soal latihan berikut ini:</strong>

<center>
      <img src="/images/babFive/b.33.PNG" alt="Gambar B.33 - Soal" class="img-fluid mb-3 responsive-img">
</center>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">1</div>
<p class="mb-2"><strong>Soal 1:</strong></p>
<p>Pada topologi yang telah diberikan, tambahkan 1 <strong>Switch</strong> dan 1 <strong>PC</strong> pada <strong>Router
C</strong> dengan jaringan baru <strong>192.168.30.0/24</strong>.Lakukan konfigurasi protokol RIP v2
pada seluruh router (Router A, B, dan C) agar semua jaringan dapat saling
berkomunikasi. Pastikan setiap PC dapat melakukan <strong>ping</strong> ke PC lain di jaringan
berbeda.
</p>
</div>

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">2</div>
<p class="mb-2"><strong>Soal 2:</strong></p>
<p>Dengan topologi yang sama, tambahkan kembali <strong>Switch</strong> dan <strong>PC</strong> pada <strong>Router
C</strong> dengan jaringan baru <strong>192.168.30.0/24</strong>. Lakukan konfigurasi protokol
<strong>EIGRP(ASN 1)</strong> pada seluruh router (Router A, B, dan C) agar semua jaringan dapat
saling berkomunikasi. Pastikan setiap PC dapat melakukan <strong>ping</strong> ke PC lain di
jaringan berbeda.
</p>
</div>
</div>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Gunakan metode Routing RIPv2 untuk mengerjakan soal 1, dan gunakan metode Routing EIGRP untuk mengerjakan soal 2.</small>
</div>
</div>
