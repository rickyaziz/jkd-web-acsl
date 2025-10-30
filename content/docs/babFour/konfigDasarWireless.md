---
weight: 26
title: "Konfigurasi Dasar Wireless"
description: "Latar Belakang, Media, Dan Komponen Pada Wireless"
icon: "settings_input_antenna"
date: "2025-10-18T21:46:58+07:00"
lastmod: "2025-10-19T21:38:58+07:00"
toc: true
---

## Konfigurasi Dasar Wireless di Cisco Packet Tracer

Berikut merupakan panduan konfigurasi wireless pada aplikasi cisco packet tracer:

### Topologi

<center>
<img src="/images/babFour/b.7.PNG" alt="Gambar B.7 - Topologi" class="img-fluid mb-3 responsive-img">
</center>

### Konfigurasi Router 0

1.  Hal pertama yang harus dilakukan dalam konfigurasi router 0 adalah
    memasukan ip pada port Gig0/0 sebagai gateway untuk AP, disini kita
    masukkan ip address pada router0 yaitu 192.168.1.1 dengan subnet mask
    255.255.255.0

    <center>
    <img src="/images/babFour/b.8.PNG" alt="Gambar B.8 - Konfig Router 0" class="img-fluid mb-3 responsive-img">
    </center>

2.  Kedua kita buat IP DHCP Pool agar memberikan IP secara otomatis untuk perangkat
    yang nantinya akan terhubung ke AP, disini kita buat dengan nama rumah1 dengan
    network address yaitu 192.168.1.0 dan gateway yang akan terhubung ke AP yaitu
    192.168.1.1

    <center>
    <img src="/images/babFour/b.9.PNG" alt="Gambar B.9 - Konfig Router 0" class="img-fluid mb-3 responsive-img">
    </center>

### Konfigurasi AP

1.  Konfigurasi pertama yang kita lakukan pada AP ialah menghubungkan AP dengan router 0 menggunakan kabel cross.

    <center>
    <img src="/images/babFour/b.10.PNG" alt="Gambar B.10 - Konfig Access Point" class="img-fluid mb-3 responsive-img">
    </center>

2.  Konfigurasi kedua ialah kita membuat ssid dan mengaplikasikan metode keamanan WPA2PSK agar aman pada AP.

    <center>
    <img src="/images/babFour/b.11.PNG" alt="Gambar B.11 - Konfig Access Point" class="img-fluid mb-3 responsive-img">
    </center>

### Konfigurasi PC

Untuk konfigurasi PC pertama kita harus mengganti slot interface pada PC dengan WIfi adapter agar PC bisa mendeteksi sinyal yang dikeluarkan oleh AP.

1.  Matikan PC atau device lain jika keadaanya sedang menyala, dengan cara menekan tombol merah sampai indikator lampu diatasnya mati.

      <center>
      <img src="/images/babFour/b.12.PNG" alt="Gambar B.12 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

2.  Lalu ganti interface dengan cara mendrag slot interface kearah bagian kosong di dalam list modules yang nantinya akan dihighlight dengan warna kuning.

      <center>
      <img src="/images/babFour/b.13.PNG" alt="Gambar B.13 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

3.  Ketiga, cari di modules interface WMP300N dan pasang pada PC dengan cara drag dan drop pada slot interface yang kosong.

      <center>
      <img src="/images/babFour/b.14.PNG" alt="Gambar B.14 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

4.  Terakhir nyalakan Kembali pc dengan menekan tombol merah seperti sebelumnya.

5.  Setelah PC sudah terintegrasi dengan interface wifi, maka selanjutnya pergi ke tab desktop lalu pilih PC wireless untuk menghubungkan ke WIFI.

      <center>
      <img src="/images/babFour/b.15.PNG" alt="Gambar B.15 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

6.  Selanjutnya didalam mode pc wireless pergi ke tab connect lalu tekan tombol refresh lalu tunggu sampai ssid wifi keluar.

      <center>
      <img src="/images/babFour/b.16.PNG" alt="Gambar B.16 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

7.  Setelah itu, pilih list ssid yang ingin kita hubungkan, lalu masukkan password jika diperlukan.

      <center>
      <img src="/images/babFour/b.17.PNG" alt="Gambar B.17 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

8.  Terakhir, keluar dari mode pc wireless dan cek kedalam mode IP configuration untuk mengecek apakah PC sudah mendapatkan IP dari router.

      <center>
      <img src="/images/babFour/b.18.PNG" alt="Gambar B.18 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

{{% alert context="success" %}}

<p>
Jika PC menampilkan <strong>host IP dari 192.168.1.0/24</strong> maka DHCP berhasil dikonfigurasi benar.
</p>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>192.168.1.0/24 adalah alamat IP yang digunakan pada modul ini. Pastikan alamat IP yang kamu gunakan sesuai dengan yang kamu berikan di DHCP pool pada Router 0</small>
</div>
{{% /alert %}}

{{% alert context="danger" %}}

<p>
Jika PC tidak menampilkan <strong>host IP dari 192.168.1.0/24</strong> maka DHCP belum dikonfigurasi benar.
</p>

{{% /alert %}}
