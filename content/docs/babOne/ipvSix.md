---
weight: 11
title: "Internet Protocol Version 6 (IPv6)"
description: "Struktur, Notasi, Tipe dan Keunggulan Alamat IPv6"
icon: "settings_ethernet"
date: "2025-09-07T17:46:03+07:00"
lastmod: "2025-09-07T17:46:03+07:00"
toc: true
---

IPv6 merupakan sistem pengalamatan dalam protokol TCP/IP yang menggunakan panjang 128-bit, memungkinkan pengalamatan hingga 3,4 x 10^38
perangkat di seluruh dunia. Sebagai contoh, alamat IPv6 yang dapat digunakan adalah 2001:0DB8:AC10:FE01:0000:0000:0000:0001, menggunakan notasi heksadesimal kolom. Struktur ini terdiri dari 8 bagian, dengan total 32 digit heksadesimal yang dipisahkan oleh tanda kolon (:), di mana setiap bagian memiliki panjang 2 byte. Notasi ini dirancang untuk mendukung skala dan fleksibilitas jaringan modern.

IPv6 dikembangkan sebagai respons terhadap keterbatasan IPv4, yang hanya mendukung sekitar 4,3 miliar alamat IP. Dengan pertumbuhan pesat internet dan perangkat yang terhubung, kekurangan alamat IP mulai terasa saat awal tahun 1990an. Pada tahun 1994, IETF (Internet Engineering Task Force) mulai bekerja pada spesifikasi IPv6 sebagai pengganti IPv4.

IPv6 secara resmi diperkenalkan pada tahun 1998 dengan tujuan mengatasi keterbatasan alamat IPv4, serta memperkenalkan peningkatan dalam routing, keamanan, dan konfigurasi otomatis. IPv6 dirancang untuk menjadi lebih efisien dan dapat mendukung perkembangan internet di masa depan melalui pemberian jumlah alamat yang hampir tidak terbatas.

Hingga saat ini, IPv6 secara bertahap diadopsi di seluruh dunia, meskipun IPv4 masih banyak digunakan.

### Struktur Alamat IPv6

<div class="d-flex justify-content-center w-100">
<img src="/images/babOne/b.2.png" alt="Gambar B.1 - Struktur Alamat IPv6" class="img-fluid mb-3 responsive-img">
</div>

<h5>1. Panjang Alamat 128-bit</h5>
   
   - <p>   Alamat IPv6 memiliki panjang total 128-bit, yang setara dengan 16 byte atau 32 digit heksadesimal. Setiap digit heksadesimal mewakili 4 bit dari alamat, sehingga keseluruhan alamat terdiri dari 32 digit.
   </p>

<h5>2. Penjelasan Hexadecimal Notation</h5>

- <p>Alamat IPv6 dituliskan dalam format notasi heksadesimal titik dua, dimana alamat 128-bit dibagi  menjadi 8 kelompok, dan setiap segmenterdiri dari 4 digit heksadesimal, yang dipisahkan oleh tanda kolon (:). Contoh dari struktur alamat ini adalah <strong>FDEC : 0074 : 0000 : 0000 : 0000 : B0FF : 0000.</strong>
  </p>
- Notasi heksadesimal ini memungkinkan alamat IPv6 untuk lebih ringkas
  dan mudah dibaca dibandingkan dengan representasi biner yang panjang.

<h5>3. Tipe Alamat IPv6 </h5>

<span></span>

1. <strong>Unicast</strong>

   Alamat Unicast digunakan untuk mengidentifikasi satu perangkat unik dalam jaringan. Paket data akan dikirim ke alamat Unicast lalu dikirimkan langsung ke tujuan tertentu. Ini adalah tipe alamat yang paling umum digunakan dalam komunikasi satu-ke-satu.

2. <strong>Multicast</strong>
   Alamat Multicast diperuntukan mengirimkan paket data ke sejumlah perangkat sekaligus. Ketika sebuah paket dikirimkan ke alamat Multicast, itu akan diterima oleh semua perangkat dalam grup Multicast yang berlangganan alamat tersebut. Ini efisien untuk komunikasi satu-ke banyak.

3. <strong>Anycast</strong>
   Alamat Anycast mengizinkan beberapa perangkat yang memiliki alamat yang sama untuk menerima paket. Namun, paket data akan dikirimkan ke perangkat yang paling dekat (dari sudut pandang routing) dengan pengirim. Ini digunakan untuk meningkatkan efisiensi dan kecepatan
   pengiriman data, terutama dalam layanan yang bersifat distribusi seperti DNS.

<h5>4. Tipe Alamat IPv6 </h5>

Beberapa keunggulan IPv6 dibandingkan IPv4, yaitu:

1.  Alamat IPv6 dituliskan dalam format notasi heksadesimal titik dua, dimana alamat 128-bit dibagi menjadi 8 kelompok, dan setiap segmen terdiri dari 4 digit heksadesimal, yang dipisahkan oleh tanda kolon (:). Contoh dari struktur alamat ini adalah <strong>FDEC : 0074 : 0000 : 0000 : 0000 : B0FF : 0000.</strong>

2.  Notasi heksadesimal ini memungkinkan alamat IPv6 untuk lebih ringkas dan mudah dibaca dibandingkan dengan representasi biner yang panjang.

<h5>3. Tipe Alamat IPv6 </h5>

<span></span>

1. <strong>Ruang Alamat Lebih Besar</strong>
   IPv6 menggunakan alamat 128-bit, yang memungkinkan dukungan hingga 3,4 × 10^38 alamat, jumlah yang jauh lebih besar dibandingkan dengan IPv4 yang hanya dapat mendukung sekitar 4,3 miliar alamat.

2. <strong>Efisiensi Routing</strong>
   IPv6 memiliki struktur header yang lebih sederhana, meningkatkan kinerja routing dan mengurangi ukuran tabel routing.

3. <strong>Otomatisasi Konfigurasi</strong>
   IPv6 mendukung SLAAC (Stateless Address Autoconfiguration), yang membuat perangkat menyediakan alamat IP sendiri tanpa server DHCP.

4. <strong>Konektivitas Peer-to-Peer</strong>
   IPv6 menghilangkan kebutuhan NAT, memungkinkan konektivitas langsung antar perangkat, yang meningkatkan efisiensi aplikasi seperti
   VoIP.

5. <strong>Keamanan Lebih Baik</strong>
   IPv6 mendukung IPsec secara default, menawarkan enkripsi dan otentikasi yang lebih kuat.

6. <strong>Mobilitas yang Lebih Baik</strong>
   IPv6 memungkinkan perangkat mempertahankan koneksi saat berpindah jaringan tanpa mengubah alamat IP.
