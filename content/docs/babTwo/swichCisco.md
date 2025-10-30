---
weight: 16
title: "Praktek Ping Dengan Switch Cisco"
description: "Percobaan Melakukan Ping Antar Komputer Dengan Switch Cisco"
icon: "settop_component"
date: "2025-09-19T17:28:18+07:00"
lastmod: "2025-09-19T17:28:18+07:00"
toc: true
---

## Cara Melakukan Ping

{{% alert context="info" %}}

<p>
Colok kabel jaringan pada patch panel 2 sesuai dengan angka yang anda colokkan pada patch panel 1
</p>
{{% /alert %}}

1.  Siapkan Kabel Jaringan.

    <center>
    <img src="/images/babTwo/b.24.jpg" alt="Gambar B.24 - Ping Antar PC Dengan Switch Cisco" class="img-fluid mb-3 responsive-img-small">
    </center>

2.  Hubungkan kabel jaringan kabel komputer dengan patch panel 1.

    <center>
    <img src="/images/babTwo/b.25.jpg" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3 responsive-img-small">
    </center>

3.  Hubungkan kabel crimping anda ke patch panel 2.

    <center>
    <img src="/images/babTwo/b.26.jpg" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3 responsive-img-small">
    </center>

4.  Hubungkan kabel crimping anda ke switch cisco.

    <center>
    <img src="/images/babTwo/b.27.jpg" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3 responsive-img-small">
    </center>

5.  Buka control panel pada windows anda.

    <center>
    <img src="/images/babTwo/b.28.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

6.  Klik Network and Internet.

    <center>
    <img src="/images/babTwo/b.29.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

7.  Klik Network and Sharing Center.

    <center>
    <img src="/images/babTwo/b.30.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

8.  Klik Change Adapter Settings.

    <center>
    <img src="/images/babTwo/b.31.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

9.  Klik 2 kali pada Ethernet.

    <center>
    <img src="/images/babTwo/b.32.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

10. Klik Properties.

    <center>
    <img src="/images/babTwo/b.33.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

11. Klik 2 kali pada Internet Protocol Version 4 (TCP/IPv4).

    <center>
    <img src="/images/babTwo/b.34.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

12. Isi IP Address di kolom IP Address dan Subnet Mask, lalu klik oke.

    <center>
    <img src="/images/babTwo/b.35.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

13. Buka Command Prompt.

    <center>
    <img src="/images/babTwo/b.36.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

14. Ketik ping dan berikan IP yang ingin dicoba untuk berkomunikasi.

    <center>
    <img src="/images/babTwo/b.37.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

15. Ouput ping akan muncul seperti dibawah ini.

    <center>
    <img src="/images/babTwo/b.38.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3">
    </center>

{{% alert context="success" %}}

<p>
Jika muncul :

Reply from 192.168.x.x: bytes=32 time<1ms TTL=64
Maka berhasil melakukan ping antar PC

</p>
{{% /alert %}}

{{% alert context="danger" %}}

<p>
Jika muncul :
Request Timed Out
Maka gagal melakukan ping antar PC
</p>
{{% /alert %}}
