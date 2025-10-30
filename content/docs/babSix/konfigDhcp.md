---
weight: 35
title: "DHCP (Dynamic Host Configuration Protocol)"
description: "Topologi, Konfigurasi, Dan Setting IP Static ke DHCP"
icon: "autorenew"
date: "2025-10-23T21:11:58+07:00"
lastmod: "2025-10-24T21:11:58+07:00"
toc: true
---

## Topologi

<center>
<img src="/images/babSix/b.2.PNG" alt="Gambar B.2 - Topologi" class="img-fluid mb-3 responsive-img">
</center>

Adapun konfigurasi IP Address dan Subnetmask untuk topologi jaringan dapat dilihat melalui tabel di bawah ini.

<center>
<img src="/images/babSix/b.3.PNG" alt="Gambar B.3 - Tabel IP" class="img-fluid mb-3 responsive-img">
</center>

## Konfigurasi Router

- Menambahkan IP address pada router di CLI.

  Berikut adalah konfigurasi pada cisco packet tracer :

  <center>
  <img src="/images/babSix/b.4.PNG" alt="Gambar B.4 - Konfig Router" class="img-fluid mb-3 responsive-img">
  </center>

  1.  Router 0:
      <center>
      <img src="/images/babSix/b.5.PNG" alt="Gambar B.5 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

  2.  Router 1:
      <center>
      <img src="/images/babSix/b.6.PNG" alt="Gambar B.6 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

  3.  Router 2:
      <center>
      <img src="/images/babSix/b.7.PNG" alt="Gambar B.7 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

  4.  Router 3:
      <center>
      <img src="/images/babSix/b.8.PNG" alt="Gambar B.8 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

  5.  Router 4:
      <center>
      <img src="/images/babSix/b.9.PNG" alt="Gambar B.9 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

## Konfigurasi DHCP

1.  Router 1:
    <center>
    <img src="/images/babSix/b.10.png" alt="Gambar B.10 - Konfig DHCP" class="img-fluid mb-3 responsive-img">
    </center>

2.  Router 3:
    <center>
    <img src="/images/babSix/b.11.PNG" alt="Gambar B.11 - Konfig DHCP" class="img-fluid mb-3 responsive-img">
    </center>

## Konfigurasi PC

- Ubah IP Configuration di PC dari Static ke DHCP.

  1.  PC 1 :

      <center>
      <img src="/images/babSix/b.12.PNG" alt="Gambar B.12 - Setting IP" class="img-fluid mb-3 responsive-img">
      </center>

  2.  PC 3 :

      <center>
      <img src="/images/babSix/b.13.PNG" alt="Gambar B.13 - Setting IP" class="img-fluid mb-3 responsive-img">
      </center>

{{% alert context="success"%}}

<p>
Jika PC 1 menampilkan output <strong>192.168.20.2</strong> dan PC 3 menampilkan output <strong>192.168.40.11</strong> seperti di atas, DHCP dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="danger"%}}

<p>
Jika PC 1 tidak menampilkan output <strong>192.168.20.0/24</strong> dan PC 3 tidak menampilkan output <strong>192.168.40.0/24</strong> seperti di atas, DHCP belum dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="warning"%}}

<p>
Sebelum lanjut, salin dan tempelkan topologi yang sudah dibuat
untuk OSPF dan BGP, sehingga terdapat tiga topologi yang sama, yakni untuk DHCP, OSPF, dan BGP!!!!
</p>
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Jika bingung, silahkan bertanya ke Asisten shift mengajar.</small>
{{% /alert %}}
