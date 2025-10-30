---
weight: 31
title: "Routing RIPv2"
description: "Konfigurasi Dan Tes Konektivitas Routing RIPv2"
icon: "compare_arrows"
date: "2025-10-20T22:27:58+07:00"
lastmod: "2025-10-22T22:47:58+07:00"
toc: true
---

## Pengertian

RIPv2 (Routing Information Protocol version 2) adalah salah satu protokol
routing dinamis yang digunakan untuk bertukar informasi routing antara router dalam
sebuah jaringan. Protokol ini termasuk dalam kategori distance-vector yang memilih
rute terbaik berdasarkan jumlah hop (lompatan) ke tujuan. Setiap hop mewakili satu
router yang dilewati dalam perjalanan paket data. RIPv2 adalah pengembangan dari
versi sebelumnya, RIPv1, yang menawarkan beberapa fitur tambahan dan perbaikan
yang membuatnya lebih fleksibel dan aman dalam pengelolaan routing.

### Konfigurasi Routing RIPv2

Berikut adalah konfigurasi RIPv2 pada cisco packet tracer :

<center>
<img src="/images/babFive/b.14.PNG" alt="Gambar B.14 - Konfig RIP" class="img-fluid mb-3 responsive-img">
</center>

1.  Router A.

    <center>
    <img src="/images/babFive/b.15.PNG" alt="Gambar B.15 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

2.  Router B.

    <center>
    <img src="/images/babFive/b.16.PNG" alt="Gambar B.16 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

3.  Router C.

    <center>
    <img src="/images/babFive/b.17.PNG" alt="Gambar B.17 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

### Uji Konektivitas Antar PC

<center>
<img src="/images/babFive/b.18.PNG" alt="Gambar B.18 - Uji Koneksi" class="img-fluid mb-3 responsive-img">
</center>

### Ping Antar PC

1.  Ping dari PC 0 ke PC 1

    <center>
    <img src="/images/babFive/b.19.PNG" alt="Gambar B.19 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

2.  Ping dari PC 1 ke PC 0.

    <center>
    <img src="/images/babFive/b.20.PNG" alt="Gambar B.20 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

### Pengecekan Pada Masing - Masing Router

- Untuk memverifikasi bahwa RIPv2 telah diterapkan dengan benar, ketik perintah berikut pada masing-masing router:

  <center>
  <img src="/images/babFive/b.21.PNG" alt="Gambar B.21 -  Cek Router" class="img-fluid mb-3 responsive-img">
  </center>

- Contoh Router A saat pengecekan.

   <center>
   <img src="/images/babFive/b.22.PNG" alt="Gambar B.22 -  Cek Router" class="img-fluid mb-3 responsive-img">
   </center>

{{% alert context="success"%}}

<p>
Jika PC 0 di ping ke PC 1 atau sebaliknya, kemudian menampilkan output <strong>Successful</strong> seperti di atas, maka routing berhasil dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="danger"%}}

<p>
Jika PC 0 di ping ke PC 1 atau sebaliknya, kemudian menampilkan output <strong>Failed</strong>, maka routing belum dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="warning"%}}

<p>
Dalam Pengecekan status Routing yang digunakan pada RIP. Pastikan muncul huruf <strong>R</strong> di sebelah kanan seperti gambar di atas.
</p>

<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Jika bingung, silahkan bertanya ke Asisten shift mengajar.</small>
{{% /alert %}}
