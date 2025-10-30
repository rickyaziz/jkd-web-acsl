---
weight: 37
title: "BGP"
description: "Konfigurasi Dan Tes Konektivitas Routing BGP"
icon: "public"
date: "2025-10-23T21:29:58+07:00"
lastmod: "2025-10-23T21:29:58+07:00"
toc: true
---

### Konfigurasi BGP

1.  Router 0
    <center>
    <img src="/images/babSix/b.24.PNG" alt="Gambar B.24 - Konfig BGP" class="img-fluid mb-3 responsive-img">
    </center>

2.  Router 1 :
    <center>
    <img src="/images/babSix/b.25.PNG" alt="Gambar B.25 - Konfig BGP" class="img-fluid mb-3 responsive-img">
    </center>

3.  Router 2 :
    <center>
    <img src="/images/babSix/b.26.PNG" alt="Gambar B.26 - Konfig BGP" class="img-fluid mb-3 responsive-img">
    </center>

### Uji Konektivitas Antar PC

<center>
<img src="/images/babSix/b.27.PNG" alt="Gambar B.27 - Koneksi PC" class="img-fluid mb-3 responsive-img">
</center>

### Ping Antar PC

1.  Ping dari PC 0 ke PC 2.
    <center>
    <img src="/images/babSix/b.28.PNG" alt="Gambar B.28 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

2.  Ping dari PC 2 ke PC 3.
    <center>
    <img src="/images/babSix/b.29.PNG" alt="Gambar B.29 - Ping PC" class="img-fluid mb-3 responsive-img">
    </center>

### Pengecekan Masing – Masing Router

Untuk memverifikasi bahwa BGP telah diterapkan dengan sukses, ketik
perintah berikut pada masing-masing router:

<center>
<img src="/images/babSix/b.30.PNG" alt="Gambar B.30 - Cek Router" class="img-fluid mb-3 responsive-img">
</center>

{{% alert context="success"%}}

Jika PC 0 di ping ke PC 2 atau sebaliknya, kemudian menampilkan output <strong>Successful</strong> seperti di atas, maka routing berhasil dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="danger"%}}

Jika PC 0 di ping ke PC 2 atau sebaliknya, kemudian menampilkan output <strong>Failed</strong>, maka routing belum dikonfigurasi dengan benar.

{{% /alert %}}
