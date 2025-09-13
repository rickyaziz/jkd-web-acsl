---
weight: 6
title: 'Arsitektur, Topologi Dan Tipe Jaringan'
description: ''
icon: 'device_hub'
date: '2025-08-31T22:10:31+07:00'
lastmod: '2025-08-31T22:10:31+07:00'
toc: true
---

## Arsitektur Jaringan

Arsitektur jaringan mengacu pada cara penyusunan atau struktur jaringan
komputer yang dirancang untuk mengatur dan mengelola aliran data, sumber daya,
serta komunikasi antara perangkat dalam jaringan. Beberapa tipe arsitektur jaringan
yang sering digunakan antara lain:

<h5>
Arsitektur klien-server
</h5>

<center>
<img src="/images/briefing/bf-12.jpg" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3 responsive-img">
</center>

[Source Gambar](https://id.pinterest.com/pin/626070785729210483/)

Dalam arsitektur ini, terdapat dua jenis perangkat utama: server dan klien.
Server memiliki peran untuk menyediakan layanan dan sumber daya, seperti file,
printer, atau aplikasi, kepada klien. Sebaliknya, klien adalah perangkat yang meminta
layanan atau sumber daya tersebut dari server. Komunikasi dalam arsitektur client-
server terjadi secara terpusat, di mana klien mengirim permintaan kepada server, dan
server memberikan respons.

<h5>
Arsitektur peer-to-peer
</h5>

<center>
<img src="/images/briefing/bf-13.jpg" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3 responsive-img">
</center>

[Source Gambar](https://id.pinterest.com/pin/297870962872923443/)

Arsitektur P2P tidak melibatkan server terpusat. Sebaliknya, setiap perangkat
dalam jaringan dapat berfungsi sebagai klien sekaligus server, tergantung pada peran
yang dijalankannya dalam komunikasi tersebut. Ini berarti setiap perangkat dapat
berbagi sumber daya dengan perangkat lainnya tanpa ketergantungan pada server
tunggal.

## Topologi Jarigan

Topologi jaringan mengacu pada cara perangkat-perangkat dalam jaringan
komputer diatur dan terhubung, baik secara fisik maupun logis. Ini mencakup
susunan fisik kabel, titik-titik koneksi, serta aliran data di antara perangkat-perangkat
tersebut. Topologi jaringan mempengaruhi cara komunikasi dan pertukaran data
antara perangkat dalam jaringan.

<h5>
Topologi bus
</h5>

<center>
<img src="/images/briefing/bf-14.jpg" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3 responsive-img">
</center>

[Source Gambar](https://www.sekawanmedia.co.id/wp-content/uploads/2024/01/Bus-Topology-1024x512-1.webp)

Topologi bus adalah jenis topologi jaringan yang menggunakan satu kabel
utama yang menghubungkan semua perangkat di jaringan. Keuntungan dari topologi
bus adalah kemudahan dalam memperluas jaringan dengan menambahkan host baru
tanpa mengganggu perangkat lainnya. Namun, kekurangannya adalah jika kabel
utama rusak atau terputus, maka seluruh jaringan akan mengalami gangguan.

<h5>
Topologi cincin (ring)
</h5>

<center>
<img src="/images/briefing/bf-15.jpg" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3 responsive-img">
</center>

[Source Gambar](hhttps://www.sekawanmedia.co.id/wp-content/uploads/2024/01/topologi-ring.webp)

Topologi cincin (Ring) terbentuk ketika semua perangkat dalam jaringan
terhubung membentuk pola lingkaran. Dalam topologi ini, data akan mengalir dari
satu perangkat ke perangkat lainnya secara berurutan. Keuntungan dari topologi ring
adalah tidak terjadinya tabrakan data (collision). Namun, kelemahan utama dari
topologi ini adalah jika salah satu perangkat mengalami masalah, maka seluruh
jaringan dapat terpengaruh dan mengalami gangguan.

<h5>
Topologi bintang (star)
</h5>

<center>
<img src="/images/briefing/bf-16.jpg" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3 responsive-img">
</center>

[Source Gambar](https://www.sekawanmedia.co.id/wp-content/uploads/2024/01/Topologi-Star-.webp)

Topologi bintang (Star) adalah topologi di mana setiap perangkat terhubung
langsung ke server atau hub. Keuntungan dari topologi ini adalah jika salah satu
perangkat mengalami masalah, jaringan lainnya tidak akan terpengaruh, karena
setiap perangkat memiliki jalur atau kabel terpisah. Namun, kelemahan dari topologi
ini adalah memerlukan biaya yang cukup tinggi, karena membutuhkan banyak kabel
dan sumber daya untuk koneksi antar perangkat.

<h5>
Topologi bus
</h5>

<center>
<img src="/images/briefing/bf-17.jpg" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3 responsive-img">
</center>

[Source Gambar](https://www.sekawanmedia.co.id/wp-content/uploads/2024/01/Mesh-Topology-1024x512.webp)

Topologi mesh atau jala digunakan ketika diperlukan konektivitas yang tidak
terputus antara semua perangkat dalam jaringan komputer. Setiap perangkat akan
terhubung langsung dengan perangkat lainnya selama masih berada dalam jaringan
yang sama. Keuntungan dari topologi mesh adalah komunikasi antar perangkat yang
lebih cepat dan tingkat keamanan yang lebih tinggi. Namun, kelemahannya adalah
biaya yang lebih tinggi untuk penyediaan kabel karena jumlah koneksi yang lebih
banyak antara perangkat.

## Tipe Jaringan

Tipe jaringan merujuk pada klasifikasi jaringan komputer berdasarkan
cakupan geografis, teknologi yang digunakan, dan tujuan penggunaan. Terdapat
beberapa tipe jaringan yang umum digunakan, antara lain:

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN | JANGKAUAN |
|---------|------|-------------|
| **PAN** | Personal Area Network (PAN) adalah jaringan kecil yang dirancang untuk menghubungkan perangkat pribadi dalam area terbatas, seperti di sekitar satu individu atau satu lokasi kerja. | 1-10M |
| **LAN** | Local Area Network (LAN) adalah jaringan yang mengaitkan beberapa komputer atau perangkat dalam area terbatas, seperti di kantor, sekolah, atau gedung. | 10-100M |
| **CAN** | Campus Area Network (CAN) adalah jaringan yang meliputi wilayah yang lebih luas dibandingkan LAN, seperti area kampus universitas atau kawasan besar lainnya. | 100-1000M |
| **MAN** | Metropolitan Area Network (MAN) adalah jaringan yang meliputi area geografis lebih luas dibandingkan dengan LAN dan CAN, sering kali menghubungkan beberapa wilayah dalam satu kota atau metropolitan. | Kota |
| **WAN** | Wide Area Network (WAN) adalah jaringan yang meliputi area geografis yang sangat besar, menghubungkan berbagai lokasi yang terpisah oleh jarak jauh, seperti antar kota, negara, atau bahkan benua. | Negara |
| **INTERNET** | Internet merupakan jaringan global yang terdiri dari sejumlah jaringan WAN yang saling terhubung di seluruh dunia. Internet memberikan akses ke berbagai layanan dan sumber daya, seperti situs web, email, dan aplikasi daring. | Antar Negara |

{{< /table >}}
