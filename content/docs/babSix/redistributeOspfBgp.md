---
weight: 38
title: "Redistribute OSPF & BGP"
description: "Konfigurasi Dan Tes Konektivitas Redistribute OSPF Ke BGP"
icon: "merge_type"
date: "2025-10-25T10:42:58+07:00"
lastmod: "2025-10-25T10:42:58+07:00"
toc: true
---

### Konfigurasi Redistribute OSPF Ke BGP

1.  Router 0 :
    <center>
    <img src="/images/babSix/b.31.PNG" alt="Gambar B.31 - Konfig OSPF Ke BGP" class="img-fluid mb-3 responsive-img">
    </center>

2.  Router 2 :
    <center>
    <img src="/images/babSix/b.32.PNG" alt="Gambar B.32 - Konfig OSPF Ke BGP" class="img-fluid mb-3 responsive-img">
    </center>

### Konfigurasi Redistribute BGP Ke OSPF

1.  Router 0 :
    <center>
    <img src="/images/babSix/b.33.PNG" alt="Gambar B.33 - Konfig BGP Ke OSPF" class="img-fluid mb-3 responsive-img">
    </center>

2.  Router 2 :
    <center>
    <img src="/images/babSix/b.34.PNG" alt="Gambar B.34 - Konfig BGP Ke OSPF" class="img-fluid mb-3 responsive-img">
    </center>

### Uji Konektivitas Antar PC

<center>
<img src="/images/babSix/b.35.PNG" alt="Gambar B.35 - Koneksi PC" class="img-fluid mb-3 responsive-img">
</center>

{{% alert context="success"%}}

Jika PC 0 di ping ke PC 3 atau sebaliknya, kemudian menampilkan output <strong>Successful</strong> seperti di atas, maka routing berhasil dikonfigurasi dengan benar.

{{% /alert %}}

{{% alert context="danger"%}}

Jika PC 0 di ping ke PC 3 atau sebaliknya, kemudian menampilkan output <strong>Failed</strong>, maka routing belum dikonfigurasi dengan benar.

{{% /alert %}}

## Tugas

<div class="alert alert-info" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakanlah soal latihan berikut ini:</strong>

<center>
      <img src="/images/babSix/b.36.PNG" alt="Gambar B.36 - Soal" class="img-fluid mb-3 responsive-img">
</center>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">1</div>
<p class="mb-2"><strong>Soal 1:</strong></p>
<p>Buatlah topologi yang telah diberikan, Pada bagian berwarna <strong>Biru</strong>, lakukan 
konfigurasi protokol <strong>OSPF</strong> pada seluruh router (Router 0, 1, 2 dan 3). Pada 
bagian berwarna <strong>Hijau</strong>, lakukan konfigurasi protokol <strong>BGP</strong> pada seluruh router 
(Router 1 dan 2).
</p>
</div>

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">2</div>
<p class="mb-2"><strong>Soal 2:</strong></p>
<p>Pada perangkat <strong>Router 3</strong>, lakukan konfigurasi <strong>DHCP</strong> untuk memberikan 
sebuah IP Address ke komputer secara otomatis.</p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">3</div>
<p class="mb-2"><strong>Soal 3:</strong></p>
<p>Pada topologi yang telah diberikan, lakukan konfigurasi protokol <strong>Redistribute</strong> 
agar semua jaringan dapat saling berkomunikasi. Pastikan setiap PC dapat 
melakukan <strong>ping</strong> ke PC lain di jaringan berbeda.
</p>
</div>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Soal no. 1 merupakan Topologi dengan OSPF dan BGP. Untuk Soal no. 2, gunakan konfigurasi IP secara Dynamic. Untuk Soal no. 3, gunakan Konfigurasi Redistribute.</small>
</div>
</div>
