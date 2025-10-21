---
weight: 26
title: "Konfigurasi Dasar Wireless"
description: "Latar Belakang, Media, Dan Komponen Pada Wireless"
icon: "account_tree"
date: "2025-10-18T21:46:58+07:00"
lastmod: "2025-10-19T21:38:58+07:00"
toc: true
---

## Konfigurasi Dasar Wireless di Cisco Packet Tracer

<p style="text-align: justify;">
Berikut merupakan panduan konfigurasi wireless pada aplikasi cisco packet tracer:
</p>

### Topologi

<center>
<img src="/images/babFour/b.7.PNG" alt="Gambar B.7 - Topologi" class="img-fluid mb-3 responsive-img">
</center>

### Konfigurasi Router 0

1.  <p style="text-align: justify;">
    Hal pertama yang harus dilakukan dalam konfigurasi router 0 adalah 
    memasukan ip pada port Gig0/0 sebagai gateway untuk AP, disini kita 
    masukkan ip address pada router0 yaitu 192.168.1.1 dengan subnet mask 
    255.255.255.0
    </p>

    <center>
    <img src="/images/babFour/b.8.PNG" alt="Gambar B.8 - Konfig Router 0" class="img-fluid mb-3 responsive-img">
    </center>

2.  <p style="text-align: justify;">
    Kedua kita buat IP DHCP Pool agar memberikan IP secara otomatis untuk perangkat 
    yang nantinya akan terhubung ke AP, disini kita buat dengan nama rumah1 dengan 
    network address yaitu 192.168.1.0 dan gateway yang akan terhubung ke AP yaitu 
    192.168.1.1 
    </p>

    <center>
    <img src="/images/babFour/b.9.PNG" alt="Gambar B.9 - Konfig Router 0" class="img-fluid mb-3 responsive-img">
    </center>

### Konfigurasi AP

1.  <p style="text-align: justify;">
    Konfigurasi pertama yang kita lakukan pada AP ialah menghubungkan AP dengan router 0 menggunakan kabel cross.
    </p>

    <center>
    <img src="/images/babFour/b.10.PNG" alt="Gambar B.10 - Konfig Access Point" class="img-fluid mb-3 responsive-img">
    </center>

2.  <p style="text-align: justify;">
    Konfigurasi kedua ialah kita membuat ssid dan mengaplikasikan metode keamanan WPA2PSK agar aman pada AP.
    </p>

    <center>
    <img src="/images/babFour/b.11.PNG" alt="Gambar B.11 - Konfig Access Point" class="img-fluid mb-3 responsive-img">
    </center>

### Konfigurasi PC

<p style="text-align: justify;">
Untuk konfigurasi PC pertama kita harus mengganti slot interface pada PC dengan WIfi adapter agar PC bisa mendeteksi sinyal yang dikeluarkan oleh AP.
</p>

1.  <p style="text-align: justify;">
    Matikan PC atau device lain jika keadaanya sedang menyala, dengan cara menekan tombol merah sampai indikator lampu diatasnya mati.
    </p>

      <center>
      <img src="/images/babFour/b.12.PNG" alt="Gambar B.12 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

2.  <p style="text-align: justify;">
    Lalu ganti interface dengan cara mendrag slot interface kearah bagian kosong di dalam list modules yang nantinya akan dihighlight dengan warna kuning.
    </p>

      <center>
      <img src="/images/babFour/b.13.PNG" alt="Gambar B.13 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

3.  <p style="text-align: justify;">
    Ketiga, cari di modules interface WMP300N dan pasang pada PC dengan cara drag dan drop pada slot interface yang kosong.
    </p>

      <center>
      <img src="/images/babFour/b.14.PNG" alt="Gambar B.14 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

4.  <p style="text-align: justify;">
    Terakhir nyalakan Kembali pc dengan menekan tombol merah seperti sebelumnya.
    </p>

5.  <p style="text-align: justify;">
    Setelah PC sudah terintegrasi dengan interface wifi, maka selanjutnya pergi ke tab desktop lalu pilih PC wireless untuk menghubungkan ke WIFI.
    </p>

      <center>
      <img src="/images/babFour/b.15.PNG" alt="Gambar B.15 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

6.  <p style="text-align: justify;">
    Selanjutnya didalam mode pc wireless pergi ke tab connect lalu tekan tombol refresh lalu tunggu sampai ssid wifi keluar.
    </p>

      <center>
      <img src="/images/babFour/b.16.PNG" alt="Gambar B.16 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

7.  <p style="text-align: justify;">
    Setelah itu, pilih list ssid yang ingin kita hubungkan, lalu masukkan password jika diperlukan.
    </p>

      <center>
      <img src="/images/babFour/b.17.PNG" alt="Gambar B.17 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

8.  <p style="text-align: justify;">
    Terakhir, keluar dari mode pc wireless dan cek kedalam mode IP configuration untuk mengecek apakah PC sudah mendapatkan IP dari router.
    </p>

      <center>
      <img src="/images/babFour/b.18.PNG" alt="Gambar B.18 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

{{% alert context="success" %}}

<p style="text-align: justify;">
Jika PC menampilkan <b>host IP dari 192.168.1.0/24</b> maka DHCP berhasil dikonfigurasi benar.
</p>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>192.168.1.0/24 adalah alamat IP yang digunakan pada modul ini. Pastikan alamat IP yang kamu gunakan sesuai dengan yang kamu berikan di DHCP pool pada Router 0</small>
</div>
{{% /alert %}}

{{% alert context="danger" %}}

<p style="text-align: justify;">
Jika PC tidak menampilkan <b>host IP dari 192.168.1.0/24</b> maka DHCP belum dikonfigurasi benar.
</p>

{{% /alert %}}
