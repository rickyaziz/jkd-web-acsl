---
weight: 10
title: 'INTERNET PROTOCOL VERSION 4(IPv4)'
description: 'Struktur, kelas, Alamat khusus dalam IPv4'
icon: 'article'
date: '2025-09-07T17:46:03+07:00'
lastmod: '2025-09-07T17:46:03+07:00'
toc: true
---

IPv4 adalah metode pengalamatan dalam protokol TCP/IP versi 4,
dikembangkan pada tahun 1981 dan telah menjadi standar utama untuk
mengidentifikasi perangkat di jaringan komputer. Dengan panjang 32-bit, IPv4
mampu mengalamati sekitar 4 miliar perangkat di seluruh dunia. Masing -masing
alamat IPv4 ditulis menggunakan format desimal dengan pemisah titik, yang terdiri
dari empat oktet, dimana setiap oktet berukuran 8-bit dan memiliki nilai antara 0
hingga 255.

Meskipun demikian, sejumlah alamat IPv4 memiliki fungsi khusus, seperti
alamat untuk broadcast, yang dipakai untuk mengirim data ke setiap perangkat dalam
jaringan, serta alamat jaringan, yang digunakan untuk mengidentifikasi jaringan itu
sendiri. IPv4 juga memiliki beberapa keterbatasan, terutama dalam hal kapasitas
alamat, yang menyebabkan pengembangan IPv6 untuk mengatasi kekurangan ini.
Hierarki pengalamatan pada IPv4 seperti gambar dibawah ini :

<div class="d-flex justify-content-center w-100">
<img src="/images/babOne/bf-1.jpg" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3" style="width: 70%; max-width: 100%; height: auto;">
</div>

[Source Gambar](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEirxw1MttiQiY2Qul8eferTtLbNLRCkN6_acBtGlYzG7g65I-fqgwlBY9sXXKPnYY0iboPetzlxnzitg4wK5qRyBrJko9Quc4YvVy0ra3wB6s5PS4Rklf9ZNNnute88Z3KrzjbfImzs5Vk/s640/7.jpg)

## Struktur Alamat IPv4

1. 32-bit Address:
   Alamat IPv4 dibentuk oleh 32 bit yang dibagi menjadi dua bagian utama:
   Network ID dan Host ID. Dalam gambar, 32 bit ini terbagi menjadi empat oktet,
   dengan masing - masing oktet memiliki panjang 8 bit.
2. Nework ID:
   Network ID adalah komponen dalam alamat IP yang berfungsi untuk
   mengenali jaringan tempat perangkat terhubung. Pada gambar, Network ID
   mencakup tiga oktet pertama, yaitu "192.168.121". Ini menunjukkan bahwa
   semua perangkat yang memiliki Network ID yang serupa terhubung dalam
   jaringan yang sama. Network ID ini krusial untuk menjamin bahwa data yang
   dikirimkan melalui jaringan dapat diteruskan ke jaringan yang tepat sebelum
   sampai ke perangkat yang dituju.
3. Host ID:
   Host ID merupakan bagian dalam alamat IP yang mengidentifikasi perangkat
   tertentu dalam jaringan yang sama. Dalam gambar, Host ID adalah oktet
   terakhir "16". Ini berarti perangkat yang bersangkutan memiliki alamat host
   "16" dalam jaringan "192.168.121".
4. Oktet:
   Setiap oktet terdiri dari 8 bit, dengan nilai yang dapat bervariasi antara 0
   hingga 255 dalam notasi desimal. Pada gambar, empat oktet adalah "192",
   "168", "121", dan "16", yang menunjukkan struktur standar dari alamat IPv4.
5. Pembagian Network dan Host:

<div class="d-flex justify-content-center w-100">
<img src="/images/babOne/bf-2.png" alt="Gambar B.2" class="img-fluid mb-3" style="width: 70%; max-width: 100%; height: auto;">
</div>

[Source Gambar](https://findmytechome.wordpress.com/wp-content/uploads/2019/05/266db-image004.png?w=400&h=201)

Gambar diatas menunjukkan pembagian Network dan Host dalam berbagai
kelas IP:

- Kelas A: Oktet pertama digunakan untuk Network, sementara tiga oktet sisanya dialokasikan untuk Host.
- Kelas B: Dua oktet pertama dialokasikan untuk Network, sementara dua oktet terakhir untuk Host.
- Kelas C: Tiga oktet pertama diperuntukkan bagi Network, sementara oktet terakhir digunakan untuk Host.
- Kelas D: Tidak ada pembagian antara Network dan Host, digunakan untuk multicast.

Pembagian ini penting untuk routing dan pengalamatan IP, di mana router
di jaringan lokal akan menggunakan Network ID untuk mengarahkan data ke
jaringan yang tepat, dan Host ID untuk memastikan bahwa data mencapai
perangkat yang benar di dalam jaringan.

## Kelas - Kelas IP

<div class="d-flex justify-content-center w-100">
<img src="/images/babOne/bf-3.png" alt="Gambar B.2" class="img-fluid mb-3" style="width: 70%; max-width: 100%; height: auto;">
</div>

[Source Gambar](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgUYGOR4TFIDFoylnOrz8KoJpN_dEqNU5fqPmuxRYEqZ2-XgPytrwhihUaWtSUdg_gtqiXNbADfBjlwwcF7QIfsUhjhF20ENtAhyphenhyphenAv9-5zWJaxc7rRr4cm4M_mEBInodHEL_QvyzxAzppeHYvq6Uz-3rKvLklgPSuh6z1uFb-dWou-TxKaLnzsXg_qymkoM/w640-h438-rw/ip-address-classes.webp)

kelas IP dibagi menjadi lima kategori utama berdasarkan rentang alamat yang
tersedia, yang dikenal sebagai Kelas A, B, C, D, dan E. Dibawah ini penjelasan
singkat tentang masing-masing kelas:

1. Kelas A:

   - Range Alamat: 1.0.0.0 sampai 126.0.0.0
   - Pembagian: Oktet pertama untuk Network, tiga oktet berikutnya untuk Host.
   - Penggunaan: Untuk jaringan besar dengan banyak host.
   - Contoh: 10.0.0.1 (IP Address Kelas A menggunakan subnet mask
     255.0.0.0)

2. Kelas B:

   - Range Alamat: 128.0.0.0 sampai 191.255.0.0
   - Pembagian: Dua oktet awal dialokasikan untuk Network, sedangkan dua
     oktet sisanya diperuntukkan bagi Host.
   - Penggunaan: Untuk jaringan skala menengah, seperti pada perusahaan
     besar.
   - Contoh: 172.16.0.1 (IP Address Kelas B menggunakan subnet mask
     255.255.0.0)

3. Kelas C:

   - Range Alamat: 192.0.0.0 sampai 223.255.255.0
   - Pembagian: Tiga oktet awal dialokasikan untuk Network, sedangkan oktet
     terakhir ditujukan untuk Host.
   - Penggunaan: Untuk jaringan kecil, seperti jaringan rumah atau kantor
     kecil.
   - Contoh: 192.168.1.1 (IP Address Kelas C menggunakan subnet mask
     255.255.255.0)

4. Kelas D:

   - Range Alamat: 224.0.0.0 sampai 239.255.255.255
   - Penggunaan: Untuk multicast, tidak dibagi antara Network dan Host.
   - Contoh: 224.0.0.1 (Alamat multicast untuk protokol routing tertentu)

5. Kelas E:

   - Rentang Alamat: 240.0.0.0 hingga 255.255.255.255
   - Penggunaan: Reserved untuk keperluan eksperimen serta jarang dipakai
     secara luas.
   - Contoh: 250.0.0.1 (IP Address Kelas E, umumnya tidak digunakan dalam
     jaringan publik)

Pembagian ini memungkinkan pengalokasian alamat IP yang efisien sesuai
dengan kebutuhan jaringan. Alamat 127.x.x.x diperuntukkan bagi loopback, yang
berfungsi untuk memungkinkan perangkat mengirim data ke dirinya sendiri. Alamat
127.0.0.1 adalah yang paling sering digunakan dan dikenal sebagai localhost. Ini
berguna untuk menguji dan memvalidasi jaringan atau aplikasi lokal tanpa melibatkan
jaringan eksternal.

## Alamat Khusus dalam IPv4

Dalam IPv4, ada beberapa jenis alamat khusus yang memiliki fungsi dan
penggunaan tertentu. Berikut adalah penjelasan untuk beberapa kategori utama:

1. Alamat Pribadi (Private): Alamat pribadi adalah alamat IP yang khusus diperuntukkan bagi penggunaan
   di jaringan lokal dan tidak dapat diakses langsung melalui internet publik. Alamat ini digunakan untuk mengidentifikasi perangkat dalam jaringan lokal
   dan biasanya diterjemahkan ke alamat publik menggunakan teknik Network
   Address Translation (NAT). Contoh:

   - 192.168.1.1
   - 10.0.0.5
   - 172.16.0.10

2. Alamat publik: Alamat publik adalah alamat IP yang dapat dijangkau secara langsung melalui
   internet. Alamat ini digunakan untuk identifikasi global di internet dan harus
   unik di seluruh dunia. Alamat public biasanya diberikan oleh penyedia layanan
   internet (ISP).
   Contoh:

   - 8.8.8.8 (Alamat DNS Google)
   - 172.217.1.14 (Alamat IP salah satu server Google)

3. Alamat Boroadcast: Alamat broadcast diperuntukan untuk mentransmisikan paket ke semua
   perangkat di jaringan lokal. Ada dua jenis broadcast: broadcast terbatas dan
   broadcast global.

   - Broadcast Terbatas: Alamat broadcast untuk jaringan tertentu, misalnya
     untuk subnet 192.168.1.0/24, alamat broadcast adalah 192.168.1.255.
   - Broadcast Global: Biasanya tidak digunakan di IPv4 karena broadcast
     terbatas sudah mencakup sebagian besar kebutuhan. Broadcast global
     adalah 255.255.255.255 yang dapat mentransmisikan untuk mengirimkan
     pesan broadcast ke seluruh perangkat di jaringan lokal yang sama.

4. Alamat Loopback: Alamat loopback adalah alamat yang dipakai oleh perangkat untuk
   mengirimkan data ke dirinya sendiri. Ini biasanya digunakan untuk pengujian
   dan debugging. Rentang Alamat Loopback di kelas A dari 127.0.0.0 hingga
   127.255.255.255. Contoh:

   - 127.0.0.1 (Alamat loopback standar, sering disebut sebagai "localhost")

5. Alamat Multicast: Alamat multicast digunakan untuk mengirimkan paket ke sekelompok
   perangkat yang telah bergabung dalam grup multicast tertentu. Rentang
   Alamat Multicast di kelas D dari 224.0.0.0 sampai 239.255.255.255.
   Contoh:

   - 224.0.0.1 (Digunakan untuk semua host dalam jaringan lokal)

6. Alamat Reserved: Alamat reserved adalah alamat yang dikhususkan untuk penggunaan tertentu
   dan tidak digunakan dalam jaringan umum. Contoh termasuk alamat untuk
   percobaan dan penelitian. Rentang Alamat Reserved di Kelas E dari 240.0.0.0
   hingga 255.255.255.255.
