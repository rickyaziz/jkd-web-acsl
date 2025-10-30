---
weight: 6
title: "Tipe Arsitektur Jaringan"
description: ""
icon: "device_hub"
date: "2025-08-31T22:10:31+07:00"
lastmod: "2025-08-31T22:10:31+07:00"
toc: true
---

## Arsitektur Jaringan

Arsitektur jaringan mengacu pada cara penyusunan atau struktur jaringan komputer yang dirancang untuk mengatur dan mengelola aliran data, sumber daya, serta komunikasi antara perangkat dalam jaringan. Beberapa tipe arsitektur jaringan yang sering digunakan antara lain:

<h5>
Arsitektur Klien-Server
</h5>

<center>
<img src="/images/briefing/br-14.jpg" alt="Gambar B.14 - Arsitektur Klien-Server" class="img-fluid mb-3 responsive-img">
<p style="text-align: center;"><b>Gambar B.14</b> Arsitektur Klien-Server</p>
</center>

<!-- [Source Gambar](https://id.pinterest.com/pin/626070785729210483/) -->

Dalam arsitektur ini, terdapat dua jenis perangkat utama: server dan klien. Server memiliki peran untuk menyediakan layanan dan sumber daya, seperti file, printer, atau aplikasi, kepada klien. Sebaliknya, klien adalah perangkat yang meminta layanan atau sumber daya tersebut dari server. Komunikasi dalam arsitektur client server terjadi secara terpusat, di mana klien mengirim permintaan kepada server, dan server memberikan respons.

<h5>
Arsitektur Peer-to-Peer
</h5>

<center>
<img src="/images/briefing/br-15.jpg" alt="Gambar B.15 - Arsitektur Peer-to-Peer" class="img-fluid mb-3 responsive-img">
<p style="text-align: center;"><b>Gambar B.15</b> Arsitektur Peer-to-Peer</p>
</center>

<!-- [Source Gambar](https://id.pinterest.com/pin/297870962872923443/) -->

Arsitektur P2P tidak melibatkan server terpusat. Sebaliknya, setiap perangkat dalam jaringan dapat berfungsi sebagai klien sekaligus server, tergantung pada peran yang dijalankannya dalam komunikasi tersebut. Ini berarti setiap perangkat dapat berbagi sumber daya dengan perangkat lainnya tanpa ketergantungan pada server tunggal.

## Topologi Jaringan

Topologi jaringan mengacu pada cara perangkat-perangkat dalam jaringan komputer diatur dan terhubung, baik secara fisik maupun logis. Ini mencakup susunan fisik kabel, titik-titik koneksi, serta aliran data di antara perangkat-perangkat tersebut. Topologi jaringan mempengaruhi cara komunikasi dan pertukaran data antara perangkat dalam jaringan.

### 1. Topologi Bus

<center>
<img src="/images/briefing/br-16.jpg" alt="Gambar B.16 - Topologi Bus" class="img-fluid mb-3 responsive-img">
<p style="text-align: center;"><b>Gambar B.16</b> Topologi Bus</p>
</center>

<!-- [Source Gambar](https://www.sekawanmedia.co.id/wp-content/uploads/2024/01/Bus-Topology-1024x512-1.webp) -->

Topologi bus adalah jenis topologi jaringan yang menggunakan satu kabel
utama yang menghubungkan semua perangkat di jaringan. Keuntungan dari topologi
bus adalah kemudahan dalam memperluas jaringan dengan menambahkan host baru
tanpa mengganggu perangkat lainnya. Namun, kekurangannya adalah jika kabel
utama rusak atau terputus, maka seluruh jaringan akan mengalami gangguan.

### 2. Topologi Cincin (Ring)

<center>
<img src="/images/briefing/br-17.jpg" alt="Gambar B.17 - Topologi Cincin (Ring)" class="img-fluid mb-3 responsive-img">
<p style="text-align: center;"><b>Gambar B.17</b> Topologi Cincin (Ring)</p>
</center>

<!-- [Source Gambar](hhttps://www.sekawanmedia.co.id/wp-content/uploads/2024/01/topologi-ring.webp) -->

Topologi cincin (ring) terbentuk ketika semua perangkat dalam jaringan terhubung membentuk pola lingkaran. Dalam topologi ini, data akan mengalir dari satu perangkat ke perangkat lainnya secara berurutan. Keuntungan dari topologi ring
adalah tidak terjadinya tabrakan data (collision). Namun, kelemahan utama dari
topologi ini adalah jika salah satu perangkat mengalami masalah, maka seluruh
jaringan dapat terpengaruh dan mengalami gangguan.

### 3. Topologi Bintang (Star)

<center>
<img src="/images/briefing/br-18.jpg" alt="Gambar B.18 - Topologi Bintang (Star)" class="img-fluid mb-3 responsive-img">
<p style="text-align: center;"><b>Gambar B.18</b> Topologi Bintang (Star)</p>
</center>

<!-- [Source Gambar](https://www.sekawanmedia.co.id/wp-content/uploads/2024/01/Topologi-Star-.webp) -->

Topologi bintang (Star) adalah topologi di mana setiap perangkat terhubung langsung ke server atau hub. Keuntungan dari topologi ini adalah jika salah satu
perangkat mengalami masalah, jaringan lainnya tidak akan terpengaruh, karena setiap perangkat memiliki jalur atau kabel terpisah. Namun, kelemahan dari topologi ini adalah memerlukan biaya yang cukup tinggi, karena membutuhkan banyak kabel dan sumber daya untuk koneksi antar perangkat.

### 4. Topologi Jala (Mesh)

<center>
<img src="/images/briefing/br-19.jpg" alt="Gambar B.19 - Topologi Jala (Mesh)" class="img-fluid mb-3 responsive-img">
<p style="text-align: center;"><b>Gambar B.19</b> Topologi Jala (Mesh)</p>
</center>

<!-- [Source Gambar](https://www.sekawanmedia.co.id/wp-content/uploads/2024/01/Mesh-Topology-1024x512.webp) -->

Topologi mesh atau jala digunakan ketika diperlukan konektivitas yang tidak terputus antara semua perangkat dalam jaringan komputer. Setiap perangkat akan
terhubung langsung dengan perangkat lainnya selama masih berada dalam jaringan
yang sama. Keuntungan dari topologi mesh adalah komunikasi antar perangkat yang
lebih cepat dan tingkat keamanan yang lebih tinggi. Namun, kelemahannya adalah
biaya yang lebih tinggi untuk penyediaan kabel karena jumlah koneksi yang lebih
banyak antara perangkat.

## Tipe Jaringan

Tipe jaringan merujuk pada klasifikasi jaringan komputer berdasarkan cakupan geografis, teknologi yang digunakan, dan tujuan penggunaan. Terdapat beberapa tipe jaringan yang umum digunakan, antara lain:

{{< table "table-striped" >}}
| <p style="text-align: center;"><b>TUJUAN</b></p> | <p style="text-align: left;"><b>PENJELASAN</b></p> | <p style="text-align: center;"><b>JANGKAUAN</b></p> |
|---------|------|-------------|----|
| <p style="text-align: center;">**PAN**</p> | Personal Area Network (PAN) adalah jaringan kecil yang dirancang untuk menghubungkan perangkat pribadi dalam area terbatas, seperti di sekitar satu individu atau satu lokasi kerja. </p> | <p style="text-align: center;">1-10M</p> |
| <p style="text-align: center;">**LAN**</p> | Local Area Network (LAN) adalah jaringan yang mengaitkan beberapa komputer atau perangkat dalam area terbatas, seperti di kantor, sekolah, atau gedung.</P> | <p style="text-align: Center;">10-100M</p> |
| <p style="text-align: center;">**CAN**</p> | Campus Area Network (CAN) adalah jaringan yang meliputi wilayah yang lebih luas dibandingkan LAN, seperti area kampus universitas atau kawasan besar lainnya. </P> | <p style="text-align: center;">100-1000M</p> |
| <p style="text-align: center;">**MAN**</p> | Metropolitan Area Network (MAN) adalah jaringan yang meliputi area geografis lebih luas dibandingkan dengan LAN dan CAN, sering kali menghubungkan beberapa wilayah dalam satu kota atau metropolitan. </P> | <p style="text-align: center;">Kota</p> |
| <p style="text-align: center;">**WAN**</p> | Wide Area Network (WAN) adalah jaringan yang meliputi area geografis yang sangat besar, menghubungkan berbagai lokasi yang terpisah oleh jarak jauh, seperti antar kota, negara, atau bahkan benua. </P> | <p style="text-align: center;">Negara</p> |
| <p style="text-align: center;">**INTERNET**</p> | Internet merupakan jaringan global yang terdiri dari sejumlah jaringan WAN yang saling terhubung di seluruh dunia. Internet memberikan akses ke berbagai layanan dan sumber daya, seperti situs web, email, dan aplikasi daring. </P> | <p style="text-align: center;">Antar Negara</p> |

{{< /table >}}
