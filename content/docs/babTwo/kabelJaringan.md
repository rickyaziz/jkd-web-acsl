---
weight: 14
title: "Kabel Jaringan"
description: "Jenis dan Bagian-Bagian Kabel Jaringan"
icon: "cable"
date: "2025-09-13T16:54:24+07:00"
lastmod: "2025-09-13T16:54:24+07:00"
toc: true
---

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Membuat koneksi elektris yang stabil** | Mempelajari untuk menghubungkan kabel dengan konektor secara permanen, menghasilkan koneksi yang kuat dan stabil. |
| **Praktikan dapat memahami tentang jenis kabel** | Bagian ini memandu praktikan untuk memahami berbagai jenis kabel. |
| **Praktikan dapat mengerti cara proses crimping yang benar** | Bagian ini membantu praktikan untuk mengerti cara proses crimping yang benar untuk menghubungkan kabel dengan konektor serta dapat memastikan bahwa koneksi yang dihasilkan aman, stabil, dan sesuai standar yang diharapkan. |
| **Praktikan dapat memahami proses menyambungkan antar komputer melalui switch dan proses ping antar komputer** | Bagian ini membantu praktikan bagaimana cara menyambungkan komputer melalui switch dan melakukan proses ping agar bisa berkomunikasi antar komputer. |
{{< /table >}}

## Persyaratan

Disarankan praktikan menggunakan alat crimping yang sesuai serta kabel yang tepat dan
memilih konektor yang cocok untuk kabel baik itu konektor RJ45 untuk jaringan atau
konektor lain untuk keperluan listrik. Berikut peralatan dan bahan yang dibutuhkan ketika
proses crimping:

{{< table "table-striped" >}}
| PERALATAN YANG DIBUTUHKAN PRAKTIKUM |
|---------|
| **Tang Crimping** |
| **Gunting** |
| **Lan tester** |  
{{< /table >}}

{{< table "table-striped" >}}
| BAHAN YANG DIBUTUHKAN PRAKTIKUM | UKURAN DAN JUMLAH YANG DIGUNAKAN |
| ------------------------------- | -------------------------------- |
| **Kabel UTP** | Ukuran (+ -) 2 Meter |
| **Konektor RJ-45** | 8 Buah Konektor RJ-45 |
{{< /table >}}

## Pendahuluan

Ada beberapa penjelasan singkat dari materi Bab 2 ini yang harus dimengerti
oleh praktikan sebelum melanjutkan ke subbab berikutnya.

## Kabel Jaringan

Kabel jaringan yaitu perangkat keras berbentuk kabel panjang yang digunakan
khusus untuk menghubungkan jaringan. Fungsinya terbatas pada koneksi jaringan
dan tidak dapat digunakan untuk kebutuhan lain seperti penghantaran listrik. Kabel
ini menghubungkan berbagai perangkat secara fisik melalui port yang tersedia pada
kartu jaringan (NIC) di laptop atau komputer.

## Jenis Kabel Jaringan Komputer

Kabel jaringan terdiri dari berbagai jenis dengan fungsi yang berbeda sesuai
dengan kebutuhan topologi yang diterapkan. Topologi yang umum digunakan
meliputi topologi ring, bus, star, mesh, tree, dan lainnya. Selain itu, konfigurasi kabel
seperti straight dan cross juga sering digunakan untuk memenuhi kebutuhan koneksi
antara berbagai perangkat jaringan. Berikut adalah beberapa jenis kabel jaringan:

### 1. Kabel Koaksial

Kabel ini memiliki struktur fisik yang terdiri dari kawat tembaga sebagai inti,
dengan lapisan isolator yang dikelilingi oleh konduktor luar. Cara kerja kabel coaxial
adalah dengan menghantarkan arus atau sinyal listrik dari sumber ke tujuan. Kabel
coaxial umumnya digunakan dalam jaringan komputer dengan topologi bus dan ring.
Namun, seiring berjalannya waktu, banyak produk LAN yang tidak lagi menggunakan
kabel coaxial karena keterbatasan

<center>
<img src="/images/babTwo/b.1.png" alt="Gambar B.1 - Jenis Kabel Jaringan" class="img-fluid mb-3 responsive-img">
</center>

<!-- [Source Gambar](https://www.techtarget.com/rms/onlineImages/networking-coaixal_cable_01_mobile.jpg) -->

Bagian-bagian dari kabel Koaksial antara lain:

1. <strong>Outside Insulation (Lapisan Paling Luar)</strong>, Lapisan terluar dari kabel coaxial yang melindungi seluruh bagian dalam kabel dari kerusakan fisik, kelembapan, suhu ekstrem, bahan kimia, dan pengaruh lingkungan lainnya. Jaket luar biasanya terbuat dari bahan plastik fleksibel seperti PVC (Polyvinyl Chloride) atau PE (Polyethylene).

2. <strong>Copper Mesh (Kawat Tembaga)</strong>, Merupakan lapisan yang mengellilingi kawat konduktor tengah, yang memisahkan konduktor tengah dari lapisan pelindung (copper mesh atau
   shielding) dan menjaga sinyal agar tidak bocor ke bagian luar. Bahan isolasi biasanya terbuat dari bahan dielektrik seperti polietilen (PE), PTFE (Teflon), atau bahan lain yang memiliki sifat isolasi listrik yang baik.

3. <strong>Insulation (Lapisan Isolator)</strong>, Berfungsi sebagai pelindung (shielding) yang melindungi sinyal yang mengalir melalui konduktor tengah dari gangguan elektromagnetik (EMI) dan interferensi radio (RFI). Shielding ini juga dapat membantu mencegah kebocoran sinyal dari dalam keluar kabel.

4. <strong>Copper Wire (Kawat Konduktor Tembaga)</strong>, Konduktor pusat (Core Conductor) adalah bagian inti dari kabel coaxial yang terbuat dari tembaga atau aluminium berlapis tembaga. Fungsi utama konduktor ini adalah untuk mentransmisikan sinyal listrik sebagai jalur utama aliran sinyal dalam kabel. Tembaga dipilih karena memiliki konduktivitas listrik yang tinggi, memungkinkan transmisi sinyal yang efisien dengan kerugian minimal.

### 2. Kabel Twisted Pair

Merupakan jenis kabel jaringan yang terdiri dari beberapa pasang kabel yang saling dipilin, dengan total 8 kabel yang memiliki warna berbeda. ara kerja kabel twisted pair mirip dengan kabel koaksial, yaitu mengalirkan arus listrik. Di dalam kabel twisted pair, terdapat kawat tembaga yang berfungsi sebagai konduktor utama untuk mengalirkan sinyal.

Terdapat tiga jenis kabel twisted pair, yaitu:

1. <strong>Kabel UTP (Unshielded Twisted Pair)</strong>, Kabel twisted pair terdiri dari dua kawat yang dipilin sebanyak enam kali per inci untuk melindungi dari gangguan listrik serta menjaga impedansi atau tahanan listrik yang konsisten. Kabel ini sering disebut dengan kategori 3 oleh IBM. Secara umum, kabel UTP memiliki harga yang terjangkau, mudah dipasang, dan cocok untuk digunakan pada jaringan berskala kecil.

    <center>
    <img src="/images/babTwo/b.2.png" alt="Gambar B.2 - Kabel UTP" class="img-fluid mb-3 responsive-img">
    </center>

   <!-- [Source Gambar](https://cdn.ready-market.com.tw/8cb8b269/Templates/pic/m/prime%20utp%20cat6%20lan%20cable%20crxconec.jpg?v=874e14a5) -->

2. <strong>Kabel STP (Shielded Twisted Pair)</strong>, Kabel STP serupa dengan kabel UTP, namun memiliki kawat yang lebih besar dan dilapisi pelindung isolasi untuk mengurangi gangguan interferensi. Kabel STP yang paling sering digunakan pada LAN adalah kategori 1 dari IBM.

    <center>
    <img src="/images/babTwo/b.3.PNG" alt="Gambar B.3 - Kabel STP" class="img-fluid mb-3 responsive-img">
    </center>

   <!-- [Source Gambar](https://cdn.shopify.com/s/files/1/0642/3091/6354/files/5_5e8a094f-5fc9-40f0-8b5c-d53d7c8aee33.jpg?v=1730776906) -->

3. <strong>Kabel FTP (Fiber Foiled Twisted Pair)</strong>, Kabel FTP merupakan jenis kabel yang memiliki pelindung aluminium foil di luar setiap pasangan kabel, memberikan perlindungan yang lebih baik terhadap interferensi gelombang elektromagnetik. Meskipun lebih unggul dibandingkan kabel UTP dalam hal perlindungan, kabel FTP cenderung memiliki harga yang lebih tinggi.

    <center>
    <img src="/images/babTwo/b.4.PNG" alt="Gambar B.4 - Kabel FTP" class="img-fluid mb-3 responsive-img">
    </center>

   <!-- [Source Gambar](https://cdn.shopify.com/s/files/1/0642/3091/6354/files/4_1537ec13-0f7a-4a5f-bdd0-6184984e9086.jpg?v=1730776881) -->

### 3. Kabel Fiber Optik

Kabel serat optik mentransmisikan data dalam bentuk pulsa cahaya melalui
serat kaca atau plastik. Keunggulan utama kabel serat optik dibandingkan kabel
tembaga adalah kemampuannya untuk mentransfer data dengan kecepatan tinggi
dan tingkat keandalan yang lebih baik, karena lebih tahan terhadap interferensi listrik.
Selain itu, kabel serat optik lebih tipis dan fleksibel, menjadikannya lebih mudah
untuk dipasang dan dipindahkan dibandingkan dengan kabel tembaga yang
cenderung lebih berat.

<center>
<img src="/images/babTwo/b.5.PNG" alt="Gambar B.5 - Kabel Fiber Optik" class="img-fluid mb-3 responsive-img">
</center>

<!-- [Source Gambar](https://assets.telkomsel.com/public/2025-01/fiber-optik.jpg?VersionId=iVxGR5OGAME30Vvcygucc3WD5oSLUM0C) -->
