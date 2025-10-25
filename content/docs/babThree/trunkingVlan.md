---
weight: 20
title: "Trunking VLAN"
description: "Konfigurasi Trunking VLAN Di Cisco Packet Tracer"
icon: "device_hub"
date: "2025-10-17T22:00:16+07:00"
lastmod: "2025-10-18T10:19:16+07:00"
toc: true
---

## Praktek Trunking VLAN

### Topologi Jaringan

- Membuat Topologi

   <center>
   <img src="/images/babThree/b.10.PNG" alt="Gambar B.10 - Topologi" class="img-fluid mb-3 responsive-img">
   </center>

### Konfigurasi VLAN Di Tiap Switch

- Berikan nama vlan tiap switch

  1.  Switch0

        <center>
        <img src="/images/babThree/b.11.PNG" alt="Gambar B.11 - Konfig Switch" class="img-fluid mb-3 responsive-img">
        </center>

  2.  Switch1

      <center>
      <img src="/images/babThree/b.12.PNG" alt="Gambar B.12 - Konfig Switch" class="img-fluid mb-3 responsive-img">
      </center>

- Konfigurasi Switchport Access Vlan tiap komputer

  1.  Switch0

      <center>
      <img src="/images/babThree/b.13.PNG" alt="Gambar B.13 - Konfig Switch" class="img-fluid mb-3 responsive-img">
      </center>

  2.  Switch1

      <center>
      <img src="/images/babThree/b.14.PNG" alt="Gambar B.14 - Konfig Switch" class="img-fluid mb-3 responsive-img">
      </center>

- Konfigurasi Switchport Trunking vlan tiap switch

  1.  Switch0

      <center>
      <img src="/images/babThree/b.15.PNG" alt="Gambar B.15 - Konfig Switch" class="img-fluid mb-3 responsive-img">
      </center>

  2.  Switch1

      <center>
      <img src="/images/babThree/b.16.PNG" alt="Gambar B.16 - Konfig Switch" class="img-fluid mb-3 responsive-img">
      </center>

### Konfigurasi PC

- Berikan IP Address pada setiap komputer

  1.  PC 0 (192.168.10.1/24)

      <center>
        <img src="/images/babThree/b.17.PNG" alt="Gambar B.17 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

  2.  PC 1 (192.168.20.1/24)

      <center>
      <img src="/images/babThree/b.18.PNG" alt="Gambar B.18 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

  3.  PC 2 (192.168.10.2/24)

      <center>
      <img src="/images/babThree/b.19.PNG" alt="Gambar B.19 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

  4.  PC 3 (192.168.20.2/24)

      <center>
      <img src="/images/babThree/b.20.PNG" alt="Gambar B.20 - Konfig PC" class="img-fluid mb-3 responsive-img">
      </center>

### Ping Antar PC

- Melakukan ping antar komputer

  1.  Ping PC1 → PC3

      <center>
      <img src="/images/babThree/b.21.PNG" alt="Gambar B.21 - Ping PC" class="img-fluid mb-3 responsive-img">
      </center>

  2.  Ping PC0 → PC3

      <center>
      <img src="/images/babThree/b.22.PNG" alt="Gambar B.22 - Ping PC" class="img-fluid mb-3 responsive-img">
      </center>

{{% alert context="success" %}}

<p>
Jika PC 1 ping ke PC 3 menghasilkan output <strong>Reply from</strong> dan PC 0 ping ke PC 3 menghasilkan output <strong>Request timed out</strong> maka vlan berhasil dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="danger" %}}

<p>
Jika PC 1 ping ke PC 3 menghasilkan output <strong>Request timed out</strong> dan PC 0 ping ke PC 3 menghasilkan output <strong>Request timed out</strong> maka vlan belum terkonfigurasi dengan benar.
</p>
{{% /alert %}}
