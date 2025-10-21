---
weight: 16
title: "Praktek Ping Dengan Switch Cisco"
description: "Percobaan Melakukan Ping Antar Komputer Dengan Switch Cisco"
icon: "lan"
date: "2025-09-19T17:28:18+07:00"
lastmod: "2025-09-19T17:28:18+07:00"
toc: true
---

## Cara Melakukan Ping

{{% alert context="info" %}}

<p style="text-align: justify;">
Colok kabel jaringan pada patch panel 2 sesuai dengan angka yang anda colokkan pada patch panel 1
</p>
{{% /alert %}}

1.  <p style="text-align: justify;">
    Siapkan Kabel Jaringan
    </p>

    <center>
    <img src="/images/babTwo/b.24.jpg" alt="Gambar B.24 - Ping Antar PC Dengan Switch Cisco" class="img-fluid mb-3 responsive-img-small">
    </center>

2.  <p style="text-align: justify;">
    Hubungkan kabel jaringan kabel komputer dengan patch panel 1
    </p>

    <center>
    <img src="/images/babTwo/b.25.jpg" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3 responsive-img-small">
    </center>

3.  <p style="text-align: justify;">
    Hubungkan kabel crimping anda ke patch panel 2
    </p>

    <center>
    <img src="/images/babTwo/b.26.jpg" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3 responsive-img-small">
    </center>

4.  <p style="text-align: justify;">
    Hubungkan kabel crimping anda ke switch cisco
    </p>

    <center>
    <img src="/images/babTwo/b.27.jpg" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3 responsive-img-small">
    </center>

5.  <p style="text-align: justify;">
    Buka control panel pada windows anda
    </p>

    <center>
    <img src="/images/babTwo/b.28.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

6.  <p style="text-align: justify;">
    Klik Network and Internet
    </p>

    <center>
    <img src="/images/babTwo/b.29.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

7.  <p style="text-align: justify;">
    Klik Network and Sharing Center
    </p>

    <center>
    <img src="/images/babTwo/b.30.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

8.  <p style="text-align: justify;">
    Klik Change Adapter Settings
    </p>

    <center>
    <img src="/images/babTwo/b.31.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

9.  <p style="text-align: justify;">
    Klik 2 kali pada Ethernet
    </p>

    <center>
    <img src="/images/babTwo/b.32.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

10. <p style="text-align: justify;">
    Klik Properties
    </p>

    <center>
    <img src="/images/babTwo/b.33.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

11. <p style="text-align: justify;">
    Klik 2 kali pada Internet Protocol Version 4 (TCP/IPv4)
    </p>

    <center>
    <img src="/images/babTwo/b.34.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

12. <p style="text-align: justify;">
    Isi IP Address di kolom IP Address dan Subnet Mask, lalu klik oke
    </p>

    <center>
    <img src="/images/babTwo/b.35.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

13. <p style="text-align: justify;">
    Buka Command Prompt
    </p>

    <center>
    <img src="/images/babTwo/b.36.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

14. <p style="text-align: justify;">
    Ketik ping dan berikan IP yang ingin dicoba untuk berkomunikasi
    </p>

    <center>
    <img src="/images/babTwo/b.37.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

15. <p style="text-align: justify;">
    Ouput ping akan muncul seperti dibawah ini
    </p>

    <center>
    <img src="/images/babTwo/b.38.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

{{% alert context="success" %}}

<p style="text-align: justify;">
Jika muncul :
</p>
<p style="text-align: justify;">Reply from 192.168.x.x: bytes=32 time<1ms TTL=64</p>
<p style="text-align: justify;">
Maka berhasil melakukan ping antar PC
</p>
{{% /alert %}}

{{% alert context="danger" %}}

<p style="text-align: justify;">
Jika muncul :
</p>
<p style="text-align: justify;">Request Timed Out</p>
<p style="text-align: justify;">
Maka gagal melakukan ping antar PC
</p>
{{% /alert %}}
