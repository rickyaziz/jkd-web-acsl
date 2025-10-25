---
weight: 19
title: "Access VLAN"
description: "Konfigurasi VLAN Di Cisco Packet Tracer"
icon: "cable"
date: "2025-10-17T21:58:16+07:00"
lastmod: "2025-10-17T21:58:16+07:00"
toc: true
---

## Praktek Access VLAN

### Topologi Jaringan

- Membuat Topologi

   <center>
   <img src="/images/babThree/b.1.PNG" alt="Gambar B.1 - Topologi" class="img-fluid mb-3 responsive-img">
   </center>

### Konfigurasi Switch0

- Berikan nama vlan tiap switch

   <center>
   <img src="/images/babThree/b.2.PNG" alt="Gambar B.2 - Access VLAN" class="img-fluid mb-3 responsive-img">
   </center>

- Konfigurasi Switchport Access Vlan tiap komputer

   <center>
   <img src="/images/babThree/b.3.PNG" alt="Gambar B.3 - Access VLAN" class="img-fluid mb-3 responsive-img">
   </center>

### Konfigurasi PC

- Berikan IP Address pada setiap komputer

  1.  PC 0 (192.168.10.1)

      <center>
      <img src="/images/babThree/b.4.PNG" alt="Gambar B.4 - Konfigurasi PC" class="img-fluid mb-3 responsive-img">
      </center>

  2.  PC 1 (192.168.20.1)

      <center>
      <img src="/images/babThree/b.5.PNG" alt="Gambar B.5 - Konfigurasi PC" class="img-fluid mb-3 responsive-img">
      </center>

  3.  PC 2 (192.168.20.2)

      <center>
      <img src="/images/babThree/b.6.PNG" alt="Gambar B.6 - Konfigurasi PC" class="img-fluid mb-3 responsive-img">
      </center>

  4.  PC 3 (192.168.10.2)

      <center>
      <img src="/images/babThree/b.7.PNG" alt="Gambar B.7 - Konfigurasi PC" class="img-fluid mb-3 responsive-img">
      </center>

### Ping Antar PC

- Melakukan ping antar komputer

  1.  Ping PC 0 → PC 3

      <center>
      <img src="/images/babThree/b.8.PNG" alt="Gambar B.8 - Ping PC" class="img-fluid mb-3 responsive-img">
      </center>

  2.  Ping PC 1 → PC 3

      <center>
      <img src="/images/babThree/b.9.PNG" alt="Gambar B.9 - Ping PC" class="img-fluid mb-3 responsive-img">
      </center>

{{% alert context="success" %}}

<p>
Jika PC 0 ping ke PC 3 menghasilkan output <strong>Reply from</strong> dan PC 1 ping ke PC 3 menghasilkan output <strong>Request timed out</strong> maka vlan berhasil dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="danger" %}}

<p>
Jika PC 0 ping ke PC 3 menghasilkan output <strong>Request timed out</strong> dan PC 1 ping ke PC 3 menghasilkan output <strong>Request timed out</strong> maka vlan belum terkonfigurasi dengan benar.
</p>
{{% /alert %}}
