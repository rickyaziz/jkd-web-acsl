---
weight: 30
title: "Routing Static"
description: "Topologi, Konfigurasi, Dan Tes Konektivitas Routing Static"
icon: "route"
date: "2025-10-20T18:07:58+07:00"
lastmod: "2025-10-20T22:26:58+07:00"
toc: true
---

## Topologi

- <p style="text-align: justify;">
  Membuat Topologi
  </p>

  <center>
  <img src="/images/babFive/b.4.PNG" alt="Gambar B.4 - Topologi" class="img-fluid mb-3 responsive-img">
  </center>

  <p style="text-align: justify;">
  Dibawah ini adalah konfigurasi IP Address dan subnetmask untuk topologi jaringan.
  </p>

  <center>
  <img src="/images/babFive/b.34.PNG" alt="Gambar B.34 - Tabel Konfig" class="img-fluid mb-3 responsive-img">
  </center>

## Konfigurasi Router

- <p style="text-align: justify;">
  Menambahkan IP address pada router di CLI
  </p>

  <p style="text-align: justify;">
  Berikut adalah konfigurasi pada cisco packet tracer :
  </p>

  <center>
  <img src="/images/babFive/b.5.PNG" alt="Gambar B.5 -  Konfig Router" class="img-fluid mb-3 responsive-img">
  </center>

  1.  <strong>Router0</strong>
      <center>
      <img src="/images/babFive/b.6.PNG" alt="Gambar B.6 -  Konfig Router0" class="img-fluid mb-3 responsive-img">
      </center>

  2.  <strong>Router1</strong>
      <center>
      <img src="/images/babFive/b.7.PNG" alt="Gambar B.7 -  Konfig Router1" class="img-fluid mb-3 responsive-img">
      </center>

## Konfigurasi Routing Static

- <p style="text-align: justify;">
  Konfigurasi routing static pada router di CLI agar bisa terhubung
  </p>

  <p style="text-align: justify;">
  Berikut adalah konfigurasi routing static pada aplikasi cisco packet tracer:
  </p>
  <center>
  <img src="/images/babFive/b.8.PNG" alt="Gambar B.8 -  Konfig Router" class="img-fluid mb-3 responsive-img">
  </center>

  1.  <strong>Router0</strong>
      <center>
      <img src="/images/babFive/b.9.PNG" alt="Gambar B.9 -  Konfig Router0" class="img-fluid mb-3 responsive-img">
      </center>

  2.  <strong>Router1</strong>
      <center>
      <img src="/images/babFive/b.10.PNG" alt="Gambar B.10 -  Konfig Router1" class="img-fluid mb-3 responsive-img">
      </center>

## Konfigurasi PC

- <p style="text-align: justify;">
  Masukan IP PC di IP Configuration
  </p>

  1.  <strong>PC 0</strong>
      <center>
      <img src="/images/babFive/b.11.PNG" alt="Gambar B.11 -  Konfig PC0" class="img-fluid mb-3 responsive-img">
      </center>

  2.  <strong>PC 1</strong>
      <center>
      <img src="/images/babFive/b.12.PNG" alt="Gambar B.12 -  Konfig PC1" class="img-fluid mb-3 responsive-img">
      </center>

## Uji Hasil

- <p style="text-align: justify;">
  Lakukan uji konektivitas antar PC
  </p>

  <center>
  <img src="/images/babFive/b.13.PNG" alt="Gambar B.13 -  Ping PC" class="img-fluid mb-3 responsive-img">
  </center>

{{% alert context="success"%}}

<p style="text-align: justify;">
Jika PC0 di ping ke PC 1 menampilkan <strong>Successful</strong> seperti di atas, maka routing berhasil dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="danger"%}}

<p style="text-align: justify;">
Jika PC0 di ping ke PC 1 menampilkan <strong>Failed</strong>, maka routing belum dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="warning"%}}

<p style="text-align: justify;">
Sebelum lanjut, salin dan tempelkan topologi yang sudah dibuat
untuk RIPv2 dan EIGRP, sehingga terdapat tiga topologi yang sama, yakni untuk Static, RIPv2, dan EIGRP!!!!
</p>

<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Jika bingung, silahkan bertanya ke Asisten shift mengajar.</small>
{{% /alert %}}
