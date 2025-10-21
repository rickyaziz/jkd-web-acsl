---
weight: 27
title: "Implementasi Metode Keamanan"
description: "MAC Filtering Dan SSID Hiding Wireless"
icon: "account_tree"
date: "2025-10-18T21:46:58+07:00"
lastmod: "2025-10-20T18:05:58+07:00"
toc: true
---

<p style="text-align: justify;">
Panduan berikut menjelaskan cara mengimplementasikan metode keamanan
seperti MAC Filtering dan SSID Hiding di Cisco Packet Tracer.
</p>

## Topologi

<center>
<img src="/images/babFour/b.19.PNG" alt="Gambar B.19 - Topologi" class="img-fluid mb-3 responsive-img">
</center>

## Konfigurasi MAC Filtering

<p style="text-align: justify;">
Metode MAC filtering membatasi client yang dapat terhubung ke jaringan
berdasarkan alamat MAC. Berikut adalah langkah-langkahnya:
</p>

### Konfigurasi WirelesRouter (WRT300N)

- Setup IP & DHCP

  1.  <p style="text-align: justify;">
      Buka wireless router, pergi ke tab GUI, lalu ke tab Setup untuk mengatur IP dan DHCP.
      </p>

      <center>
      <img src="/images/babFour/b.20.PNG" alt="Gambar B.20 - Setup DHCP" class="img-fluid mb-3 responsive-img">
      </center>

  2.  <p style="text-align: justify;">
      Berikan alamat ip yaitu 192.168.1.1 pada Router IP sesuai dengan gateway topologi.
      </p>

      <center>
      <img src="/images/babFour/b.21.PNG" alt="Gambar B.21 - Setup DHCP" class="img-fluid mb-3 responsive-img">
      </center>

  3.  <p style="text-align: justify;">
      Konfigurasikan DHCP untuk memberikan IP secara otomatis kepada perangkat yang terhubung.
      </p>

      <center>
      <img src="/images/babFour/b.22.PNG" alt="Gambar B.22 - Setup DHCP" class="img-fluid mb-3 responsive-img">
      </center>

  4.  <p style="text-align: justify;">
      Terakhir tekan save pada bagian bawah, maka hasilnya nanti akan seperti ini.
      </p>

      <center>
      <img src="/images/babFour/b.23.PNG" alt="Gambar B.23 - Setup DHCP" class="img-fluid mb-3 responsive-img">
      </center>

- Konfigurasi Wireless

  1.  <p style="text-align: justify;">
      Pertama pergi ke tab wireless maka nanti tampilannya akan seperti ini.
      </p>

      <center>
      <img src="/images/babFour/b.24.PNG" alt="Gambar B.24 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

  2.  <p style="text-align: justify;">
      Selanjutnya kita ubah SSID sesuai dengan notes pada topologi diatas yaitu lablanjut121 dan save.
      </p>

      <center>
      <img src="/images/babFour/b.25.PNG" alt="Gambar B.25 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

  3.  <p style="text-align: justify;">
      Selanjutnya, pergi ke tab wireless security maka nanti tampilanya akan seperti ini.
      </p>

      <center>
      <img src="/images/babFour/b.26.PNG" alt="Gambar B.26 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

  4.  <p style="text-align: justify;">
      Ubah security modenya menjadi WPA2-Personal dan isi passwordnya dengan acsl2024 lalu save.
      </p>

      <center>
      <img src="/images/babFour/b.27.PNG" alt="Gambar B.27 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

  5.  <p style="text-align: justify;">
      Selanjutnya pergi ke tab wireless mac filter untuk memasukkan mac address yang Ingin kita blokir aksesnya.
      </p>

      <center>
      <img src="/images/babFour/b.28.PNG" alt="Gambar B.28 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

  6.  <p style="text-align: justify;">
      Selanjutnya, kita perlu mengetahui MAC address dari PC yang ingin kita blokir dalam jaringan. Sebagai contoh, kita akan memblokir PC1. Untuk mendapatkan MAC address, buka Command Prompt dan ketik perintah ipconfig /all, kemudian akan tampil physical address-nya.
      </p>

      <center>
      <img src="/images/babFour/b.29.PNG" alt="Gambar B.29 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

  7.  <p style="text-align: justify;">
      Terakhir copy physical address yang sudah tampil. Lalu pergi ke wireless mac filter pada wireless router lagi, lalu nyalakan dan masukkan physical address pada MAC 1 lalu save.
      </p>

      <center>
      <img src="/images/babFour/b.30.PNG" alt="Gambar B.30 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

  8.  <p style="text-align: justify;">
      Hasil Akhir.
      </p>

      <center>
      <img src="/images/babFour/b.31.PNG" alt="Gambar B.31 - Konfig Wireless" class="img-fluid mb-3 responsive-img">
      </center>

{{% alert context="success" %}}

<p style="text-align: justify;">
Jika PC 1 <b>tidak bisa terkoneksi</b> maka MAC Filtering berhasil dikonfigurasi benar.
</p>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Pastikan MAC Address yang kamu daftarkan di MAC Filter sesuai dengan PC yang sedang kamu coba blokir.</small>
</div>
{{% /alert %}}

## Konfigurasi SSID Hiding

<p style="text-align: justify;">
Konfigurasi ssid hiding ini hamper sama dengan mac filtering tetapi yang
berbeda hanyalah kita tidak mengaktifkan mac filtering serta SSID broadcast agar
client tidak bisa melihat ssid kita.
</p>

### Konfigurasi Wireless Router

1.  <p style="text-align: justify;">
    Pertama buka wireless router lalu pergi ke gui dan ke tab wireless.
    </p>

    <center>
    <img src="/images/babFour/b.32.PNG" alt="Gambar B.32 - Konfig Wireless Router" class="img-fluid mb-3 responsive-img">
    </center>

2.  <p style="text-align: justify;">
    Pada bagian ini kita ubah ssid broadcastnya menjadi disabled lalu save.
    </p>

    <center>
    <img src="/images/babFour/b.33.PNG" alt="Gambar B.33 - Konfig Wireless Router" class="img-fluid mb-3 responsive-img">
    </center>

### Konfigurasi PC

<p style="text-align: justify;">
Untuk konfigurasi pada pc juga hamper sama seperti kita mengkoneksikan
wireless seperti sebelumnya yang menjadi pembeda ialah kita harus memasukan ssid
secara manual karena ssid yang kita sudah nonaktifkan pada wireless router tidak
akan muncul pada list.
</p>

1.  <p style="text-align: justify;">
    Pertama buka pc lalu pergi ke tab desktop dan ke pc wireless.
    </p>

    <center>
    <img src="/images/babFour/b.34.PNG" alt="Gambar B.34 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

2.  <p style="text-align: justify;">
    Pergi ke tab profiles lalu pada bagian bawah tekan new untuk membuat profile baru dan isi nama profilenya acsl.
    </p>

    <center>
    <img src="/images/babFour/b.35.PNG" alt="Gambar B.35 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

3.  <p style="text-align: justify;">
    Selanjutnya tekan advanced setup untuk memasukkan manual ssid yang tadi wireless router sembunyikan.
    </p>

    <center>
    <img src="/images/babFour/b.36.PNG" alt="Gambar B.36 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

4.  <p style="text-align: justify;">
    Lalu masukkan ssid nya dan tekan next.
    </p>

    <center>
    <img src="/images/babFour/b.37.PNG" alt="Gambar B.37 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

5.  <p style="text-align: justify;">
    Untuk halaman ini kita next saja karena dari router kita sudah mendapatkan IP DHCP.
    </p>

    <center>
    <img src="/images/babFour/b.38.PNG" alt="Gambar B.38 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

6.  <p style="text-align: justify;">
    Untuk wireless security pilih wpa2-personal dan isi acsl2024.
    </p>

    <center>
    <img src="/images/babFour/b.39.PNG" alt="Gambar B.39 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

7.  <p style="text-align: justify;">
    Pada halaman ini kita klik save untuk menyimpan profile yang baru.
    </p>

    <center>
    <img src="/images/babFour/b.40.PNG" alt="Gambar B.40 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

8.  <p style="text-align: justify;">
    Jika sudah klita akan diarahkan Kembali pada halaman awal, maka kita harus pergi ke tab profiles dan kita pilih profile baru yang tadi sudah kita buat lalu klik connect.
    </p>

    <center>
    <img src="/images/babFour/b.41.PNG" alt="Gambar B.41 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

9.  <p style="text-align: justify;">
    Terakhir cek ip pada ip configuration pada tab desktop, jika berhasil terhubung makai ip address tertampil disana yang masih masuk kedalam network 192.168.1.0/24.
    </p>

    <center>
    <img src="/images/babFour/b.42.PNG" alt="Gambar B.42 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

10. <p style="text-align: justify;">
    Hasil Akhir.
    </p>

    <center>
    <img src="/images/babFour/b.43.PNG" alt="Gambar B.43 - Konfig PC" class="img-fluid mb-3 responsive-img">
    </center>

{{% alert context="success" %}}

<p style="text-align: justify;">
Jika PC 1 <b>terkoneksi</b> dan menampilkan IP secara otomatis. Maka, SSID Hiding berhasil dikonfigurasi benar.
</p>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Pastikan Wireless Network Name dan Password yang kamu buat sesuai.</small>
</div>
{{% /alert %}}

{{% alert context="danger" %}}

<p style="text-align: justify;">
Jika PC 1 <b> tidak terkoneksi</b> dan tidak menampilkan IP secara otomatis. Maka, SSID / Password yang diberikan belum benar.
</p>

{{% /alert %}}

## Tugas

<div class="alert alert-info" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakanlah soal latihan berikut ini:</strong></p>

<div class="row">
<p class="mb-2"><strong>Soal 1:</strong></p>
<p style="text-align: justify;">Buatlah sebuah topologi jaringan sederhana menggunakan Cisco Packet Tracer yang terdiri dari:</p>
</div>
<ul>
<li>1 Router Wireless (WRT300N)</li>
<li>2 PC</li>
<li>1 Access Point</li>
</ul>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Langkah-langkah yang harus Anda lakukan:</small>
</div>

1.  <div class="mt-3">
    <p style="text-align: justify;">
    <small class="text-muted" >Konfigurasikan SSID pada access point dengan nama <b>SSID: NAMA_ANDA</b> dan gunakan <b>WPA2-Personal</b> dengan password <b>NPM_Anda</b>.</small>
    </p>
    </div>

2.  <div class="mt-3">
    <p style="text-align: justify;">
    <small class="text-muted">Atur router untuk memberikan alamat IP secara <b>dinamis (DHCP)</b> kepada perangkat yang terhubung.</small>
    </p>
    </div>

3.  <div class="mt-3">
    <p style="text-align: justify;">
    <small class="text-muted">Hubungkan kedua PC ke jaringan wireless, kemudian cek konektivitas dengan melakukan <b>ping</b> antar PC.</small>
    </p>
    </div>
