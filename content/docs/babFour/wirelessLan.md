---
weight: 23
title: "Wireless"
description: "Latar Belakang, Media, Komponen, Dan Implementasi Keamanan Wireless"
icon: "wifi"
date: "2025-10-18T21:46:58+07:00"
lastmod: "2025-10-18T21:46:58+07:00"
toc: true
---

Bab ini membahas dasar jaringan wireless, termasuk media, teknologi, keamanan, dan konfigurasi dasar menggunakan Cisco Packet Tracer untuk membantu praktikan mengelola dan mengamankan jaringan wireless.

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami jenis media wireless** | Bab ini membahas berbagai jenis media wireless yang digunakan dalam jaringan, termasuk Wi-Fi, Bluetooth, dan teknologi nirkabel lainnya. |
| **Memahami dasar teori standar wireless dan teknologi komponen jaringan wireless** | Praktikan akan mempelajari standar jaringan wireless, teknologi yang mendukung jaringan wireless, serta komponen jaringan. |
| **Memahami keamanan jaringan wireless** | Bab ini menjelaskan tentang berbagai metode untuk mengamankan jaringan wireless, termasuk enkripsi, otentikasi, dan teknik keamanan lainnya untuk melindungi jaringan dari ancaman. |
| **Melakukan konfigurasi dasar wireless di Cisco Packet Tracer** | Praktikan akan belajar bagaimana melakukan konfigurasi dasar perangkat wireless dalam Cisco Packet Tracer, termasuk pengaturan access point, SSID, dan keamanan jaringan. |
{{< /table >}}

## Persyaratan

Disarankan praktikan menggunakan hardware dan software sesuai pada dokumentasi ini.
Apabila terdapat versi yang lumayan lampau dari versi yang direcommendasikan atau
hardware yang lawas maka sebaiknya bertanya kepada Asisten Mengajar Shift.

{{< table "table-striped" >}}
| HARDWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
|---------|---------|
| **PC / Laptop CPU** | ≥ 4 Cores |
| **PC / Laptop RAM** | ≥ 4 GB |
| **PC / Laptop Storage** | ≥ 10 GB |  
{{< /table >}}

{{< table "table-striped" >}}
| SOFTWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
| ------------ | --------------- |
| **Windows OS** | ≥ Versi 7 |
| **Cisco Packet Tracer** | ≥ Versi 8.2 |
{{< /table >}}

## Latar Belakang

Jaringan wireless atau nirkabel merupakan teknologi yang mampu membuat
perangkat terhubung dan berkomunikasi tanpa menggunakan kabel fisik.
Menggunakan gelombang radio sebagai media transmisi, jaringan wireless
memberikan fleksibilitas dan mobilitas yang esensial di era digital, jaringan nirkabel
memfasilitasi berbagai aplikasi, mulai dari jaringan rumah hingga bisnis. Dengan
perkembangan pesat teknologi dan meningkatnya kebutuhan akan mobilitas, jaringan
wireless telah menjadi komponen penting dalam infrastruktur IT modern. Standar
IEEE 802.11, atau Wi-Fi, menjadi dasar teknologi ini, memungkinkan komunikasi antar
perangkat dengan kecepatan dan jangkauan yang terus berkembang.

## Jenis Media Wireless

Media wireless, atau media nirkabel, meliputi berbagai jenis teknologi yang
memungkinkan pengiriman data tanpa kabel fisik. Beberapa jenis media nirkabel yang
sering digunakan adalah:

### 1. Standar IEEE 802.11 (Wi-Fi)

Teknologi nirkabel yang memungkinkan perangkat seperti komputer,
smartphone, dan tablet untuk terhubung ke internet melalui jaringan lokal tanpa
menggunakan kabel.

### 2. Standar Cellular (Seluler)

Teknologi jaringan nirkabel yang memungkinkan komunikasi suara dan data
antara perangkat seluler (seperti ponsel) dan jaringan dengan menggunakan menara
seluler.

### 3. Bluetooth

Teknologi nirkabel untuk komunikasi jarak pendek antara perangkat seperti
headset, keyboard, dan ponsel, memungkinkan transfer data dan streaming audio
dengan konsumsi daya rendah.

### 4. NFC (Near Field Communication)

Teknologi komunikasi nirkabel untuk pertukaran data antara perangkat dalam
jarak sangat dekat, biasanya beberapa sentimeter, digunakan dalam pembayaran
nirkontak dan identifikasi.

### 5. Long Range Wide Area Network (LoRaWAN)

Teknologi jaringan nirkabel yang memungkinkan komunikasi jarak jauh
dengan konsumsi daya minimal, terutama untuk aplikasi IoT dan sensor yang tersebar.

## Standar Wireless dan Teknologi

Pada wireless diperlukan standar-standar dalam implementasinya untuk bisa
diterapkan secara universal pada perangkat-perangkat elektronik dengan aman.
Berikut merupakan standar-standar pada IEEE 802.11 atau biasa disebut dengan WIFI.

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;  width: 10%;">
      <th style="border: none; padding: 6px;  width: 10%;">Standar WiFi</th>
      <th style="border: none; padding: 6px;  width: 10%;">Tahun Rilis</th> 
       <th style="border: none; padding: 6px;  width: 15%;">Frekuensi</th>
       <th style="border: none; padding: 6px;  width: 20%;">Kecepatan Maksimum</th>
       <th style="border: none; padding: 6px;  width: 20%;">Jangkauan</th>
       <th style="border: none; padding: 6px;  width: 25%;">Karakteristik Utama</th>
   </tr>
   <tr style="border: 1px solid #7928ca2e;">
       <td style="border: none; padding: 6px;">IEEE 802.11a</td>
       <td style="border: none; padding: 6px; ">1999</td>
       <td style="border: none; padding: 6px;">5 GHz</td>
       <td style="border: none; padding: 6px; ">54 Mbps</td>
       <td style="border: none; padding: 6px;">Pendek</td>
       <td style="border: none; padding: 6px; ">OFDM, tahan interferensi, tidak kompatibel dengan 802.11b/g</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">IEEE 802.11b</td>
       <td style="border: none; padding: 6px; ">1999</td>
       <td style="border: none; padding: 6px;">2.4 GHz</td>
       <td style="border: none; padding: 6px; ">11 Mbps</td>
       <td style="border: none; padding: 6px;">Sama dengan 802.11b</td>
       <td style="border: none; padding: 6px; ">OFDM, kompatibel dengan 802.11b, kecepatan lebih tinggi</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">IEEE 802.11n</td>
       <td style="border: none; padding: 6px; ">2009</td>
       <td style="border: none; padding: 6px;">2.4 GHz & 5 GHz</td>
       <td style="border: none; padding: 6px; ">Hingga 600 Mbps</td>
       <td style="border: none; padding: 6px;">Lebih baik</td>
       <td style="border: none; padding: 6px; ">MIMO, dual-band, kompatibel dengan 802.11a/b/g</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">IEEE 802.11ac</td>
       <td style="border: none; padding: 6px; ">2013</td>
       <td style="border: none; padding: 6px;">5 GHz</td>
       <td style="border: none; padding: 6px; ">Hingga 1 Gbps</td>
       <td style="border: none; padding: 6px;">Lebih baik dari 802.11a</td>
       <td style="border: none; padding: 6px; ">MU-MIMO, kanal lebar, kompatibel dengan 802.11a/n</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">IEEE 802.11ax (WiFi 6)</td>
       <td style="border: none; padding: 6px; ">2019</td>
       <td style="border: none; padding: 6px;">2.4 GHz & 5 GHz (WiFi 6E support 6 GHz)</td>
       <td style="border: none; padding: 6px; ">Hingga 9.6 Gbps</td>
       <td style="border: none; padding: 6px;">Meningkat</td>
       <td style="border: none; padding: 6px; ">OFDMA, MIMO, efisiensi tinggi, kompatibel dengan 802.11a/b/g/n/ac</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">IEEE 802.11be (WiFi 7)</td>
       <td style="border: none; padding: 6px; ">Sedang dikembangkan</td>
       <td style="border: none; padding: 6px;">2.4 GHz, 5 GHz & 6 GHz (Tri-band)</td>
       <td style="border: none; padding: 6px; ">Hingga 30 Gbps (perkiraan)</td>
       <td style="border: none; padding: 6px;">-</td>
       <td style="border: none; padding: 6px; ">Peningkatan MU MIMO, OFDMA, target kecepatan lebih tinggi dan latensi rendah</td>
   </tr>
   </table>

<span></span>

Berikut merupakan terminologi beradasarkan standar IEEE 802.11.

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;  width: 10%;">
      <th style="border: none; padding: 6px;  width: 20%;">TERMINOLOGI</th>
      <th style="border: none; padding: 6px;  width: 35%;">DESKRIPSI</th> 
       <th style="border: none; padding: 6px;  width: 35%;">FUNGSI</th>
       <th style="border: none; padding: 6px;  width: 10%;">DIGUNAKAN DALAM</th>
   </tr>
   <tr style="border: 1px solid #7928ca2e;">
       <td style="border: none; padding: 6px;">OFDM</td>
       <td style="border: none; padding: 6px; ">Modulasi yang membagi sinyal data menjadi banyak sinyal kecil dan mentransmisikannya melalui frekuensi berdekatan.</td>
       <td style="border: none; padding: 6px;">Meningkatkan kecepatan transmisi data dan ketahanan terhadap interferensi.</td>
       <td style="border: none; padding: 6px; ">802.11a, 802.11g, 802.11n, 802.11ac</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">OFDMA</td>
       <td style="border: none; padding: 6px; ">Pengembangan OFDM yang membagi kanal menjadi sub-kanal lebih kecil untuk banyak perangkat.</td>
       <td style="border: none; padding: 6px;">Meningkatkan efisiensi spektrum dan memungkinkan komunikasi simultan.</td>
       <td style="border: none; padding: 6px; ">802.11ax (WiFi 6)</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">MIMO</td>
       <td style="border: none; padding: 6px; ">Teknologi dengan beberapa antena untuk mengirim dan menerima data secara bersamaan.</td>
       <td style="border: none; padding: 6px;">Meningkatkan throughput dan jangkauan jaringan.</td>
       <td style="border: none; padding: 6px; ">802.11n, 802.11ac, 802.11ax</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">MU-MIMO</td>
       <td style="border: none; padding: 6px; ">Versi MIMO yang memungkinkan beberapa perangkat berkomunikasi secara bersamaan.</td>
       <td style="border: none; padding: 6px;">Meningkatkan efisiensi dalam lingkungan dengan banyak perangkat.</td>
       <td style="border: none; padding: 6px; ">802.11ac, 802.11ax</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">DSSS</td>
       <td style="border: none; padding: 6px; ">Modulasi yang menyebarkan sinyal melalui spektrum frekuensi lebih luas.</td>
       <td style="border: none; padding: 6px;">Meningkatkan keandalan komunikasi dan mengurangi interferensi.</td>
       <td style="border: none; padding: 6px; ">802.11b</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">Dual-Band</td>
       <td style="border: none; padding: 6px; ">Operasi pada frekuensi 2.4 GHz dan 5 GHz.</td>
       <td style="border: none; padding: 6px;">Memungkinkan fleksibilitas dalam memilih frekuensi untuk kecepatan atau jangkauan</td>
       <td style="border: none; padding: 6px; ">802.11n, 802.11ac, 802.11ax</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">Tri-Band</td>
       <td style="border: none; padding: 6px; ">Operasi pada frekuensi 2.4 GHz, 5 GHz, dan 6 GHz.</td>
       <td style="border: none; padding: 6px;">Mengurangi kemacetan jaringan dan meningkatkan kecepatan.</td>
       <td style="border: none; padding: 6px; ">802.11ax (WiFi 6E), 802.11be (WiFi 7)</td>
   </tr>
   </table>
