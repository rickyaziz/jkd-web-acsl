---
weight: 21
title: "Inter-VLAN"
description: "Konfigurasi Inter-VLAN Di Cisco Packet Tracer"
icon: "build"
date: "2025-10-17T22:02:16+07:00"
lastmod: "2025-10-17T22:02:16+07:00"
toc: true
---

## Praktek Inter-VLAN

### Topologi Jaringan

- <p style="text-align: justify;">
  Membuat Topologi
  </p>

  <center>
  <img src="/images/babThree/b.23.PNG" alt="Gambar B.23 - Topologi" class="img-fluid mb-3 responsive-img">
  </center>

### Konfigurasi VLAN Di Tiap Switch

- <p style="text-align: justify;">
  Berikan nama vlan pada switch
  </p>

  <center>
  <img src="/images/babThree/b.24.PNG" alt="Gambar B.24 - Konfig Switch" class="img-fluid mb-3 responsive-img">
  </center>

- <p style="text-align: justify;">
  Konfigurasi Switchport Access Vlan tiap komputer
  </p>

  <center>
  <img src="/images/babThree/b.25.PNG" alt="Gambar B.25 - Konfig Switch" class="img-fluid mb-3 responsive-img">
  </center>

- <p style="text-align: justify;">
  Konfigurasi Switchport Trunk Vlan untuk Router
  </p>

  <center>
  <img src="/images/babThree/b.26.PNG" alt="Gambar B.26 - Konfig Switch" class="img-fluid mb-3 responsive-img">
  </center>

### Konfigurasi Router

- <p style="text-align: justify;">
  Konfigurasi IP Address melalui Router
  </p>

  <center>
  <img src="/images/babThree/b.27.PNG" alt="Gambar B.27 - Konfig Router" class="img-fluid mb-3 responsive-img">
  </center>

- <p style="text-align: justify;">
  Berikan IP Address pada setiap komputer
  </p>

  1.  <p style="text-align: justify;">
      PC0 (192.168.1.2/24)
      </p>

      <center>
      <img src="/images/babThree/b.28.PNG" alt="Gambar B.28 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

  2.  <p style="text-align: justify;">
      PC1 (192.168.1.3/24)
      </p>

      <center>
      <img src="/images/babThree/b.29.PNG" alt="Gambar B.29 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

  3.  <p style="text-align: justify;">
      PC2 (192.168.2.2/24)
      </p>

      <center>
      <img src="/images/babThree/b.30.PNG" alt="Gambar B.30 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

  4.  <p style="text-align: justify;">
      PC3 (192.168.2.3/24)
      </p>

      <center>
      <img src="/images/babThree/b.31.PNG" alt="Gambar B.31 - Konfig Router" class="img-fluid mb-3 responsive-img">
      </center>

### Ping Antar PC

- <p style="text-align: justify;">
  Status ping antar komputer.
  </p>

  <center>
  <img src="/images/babThree/b.32.PNG" alt="Gambar B.32 - Ping Antar PC" class="img-fluid mb-3 responsive-img">
  </center>

{{% alert context="success" %}}

<p style="text-align: justify;">
Jika PC 0 ping ke PC 3 menghasilkan output <b>Reply from/Successful</b> dan PC 1 ping ke PC 2 menghasilkan output <b>Reply from/Successful</b> maka inter-vlan berhasil dikonfigurasi dengan benar.
</p>
{{% /alert %}}

{{% alert context="danger" %}}

<p style="text-align: justify;">
Jika PC 0 ping ke PC 3 menghasilkan output <b>Request timed out/Failed</b> atau PC 1 ping ke PC 2 menghasilkan output <b>Request timed out/Failed</b> maka inter-vlan belum terkonfigurasi dengan benar.
</p>
{{% /alert %}}

## Tugas

<div class="alert alert-success" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakanlah soal latihan berikut ini:</strong></p>

<div class="row">
<p class="mb-2"><strong>Soal 1:</strong></p>
<p style="text-align: justify;">Setup dan konfigurasi jaringan berikut agar saling berkomunikasi antar-VLAN!!!</p>
</div>

<span></span>

<center>
      <img src="/images/babThree/b.33.PNG" alt="Gambar B.33 - Soal" class="img-fluid mb-3 responsive-img">
</center>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>VLAN 10 dengan alamat jaringan 192.168.10.0/24</small>
</div>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>VLAN 20 dengan alamat jaringan 192.168.20.0/24</small>
</div>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>VLAN 30 dengan alamat jaringan 192.168.30.0/24</small>
</div>
</div>
