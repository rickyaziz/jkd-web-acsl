---
weight: 36
title: "OSPF"
description: "Konfigurasi Dan Tes Konektivitas Routing OSPF"
icon: "speed"
date: "2025-10-23T21:29:58+07:00"
lastmod: "2025-10-25T10:30:58+07:00"
toc: true
---

### Konfigurasi OSPF

<center>
<img src="/images/babSix/b.14.PNG" alt="Gambar B.14 - Konfig OSPF" class="img-fluid mb-3 responsive-img">
</center>

1.  Router 0 :
    <center>
    <img src="/images/babSix/b.15.PNG" alt="Gambar B.15 - Konfig OSPF" class="img-fluid mb-3 responsive-img">
    </center>

2.  Router 1 :
    <center>
    <img src="/images/babSix/b.16.PNG" alt="Gambar B.16 - Konfig OSPF" class="img-fluid mb-3 responsive-img">
    </center>

3.  Router 2 :
    <center>
    <img src="/images/babSix/b.17.PNG" alt="Gambar B.17 - Konfig OSPF" class="img-fluid mb-3 responsive-img">
    </center>

4.  Router 3 :
    <center>
    <img src="/images/babSix/b.18.PNG" alt="Gambar B.18 - Konfig OSPF" class="img-fluid mb-3 responsive-img">
    </center>

### Uji Konektivitas Antar PC

<center>
<img src="/images/babSix/b.19.PNG" alt="Gambar B.19 - Koneksi PC" class="img-fluid mb-3 responsive-img">
</center>

### Ping Antar PC

1.  Ping dari PC 0 ke PC 1.
    <center>
    <img src="/images/babSix/b.20.PNG" alt="Gambar B.20 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

2.  Ping dari PC 2 ke PC 3.
    <center>
    <img src="/images/babSix/b.21.PNG" alt="Gambar B.21 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

### Pengecekan Masing – Masing Router

Untuk memverifikasi bahwa OSPF telah diterapkan dengan sukses, ketik
perintah berikut pada masing-masing router:

<center>
<img src="/images/babSix/b.22.PNG" alt="Gambar B.22 - Ping PC" class="img-fluid mb-3 responsive-img">
</center>

- Contoh Router 1 saat pengecekan.
<center>
<img src="/images/babSix/b.23.PNG" alt="Gambar B.23 - Cek Router 1" class="img-fluid mb-3 responsive-img">
</center>

{{% alert context="success"%}}

Jika PC 0 di ping ke PC 1 atau sebaliknya, kemudian menampilkan output <strong>Successful</strong> seperti di atas, maka routing berhasil dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="danger"%}}

Jika PC 0 di ping ke PC 1 atau sebaliknya, kemudian menampilkan output <strong>Failed</strong>, maka routing belum dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="warning"%}}

Dalam Pengecekan status Routing yang digunakan pada OSPF. Pastikan muncul huruf <strong>O</strong> di sebelah kanan seperti gambar di atas.

<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Jika bingung, silahkan bertanya ke Asisten shift mengajar.</small>
{{% /alert %}}
