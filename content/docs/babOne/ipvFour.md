---
weight: 10
title: "Internet Protocol Version 4 (IPv4)"
description: "Struktur, Kelas, dan Alamat khusus dalam IPv4"
icon: "settings_ethernet"
date: "2025-09-07T17:46:03+07:00"
lastmod: "2025-09-07T17:46:03+07:00"
toc: true
---

<p style="text-align: justify;">
IPv4 adalah metode pengalamatan dalam protokol TCP/IP versi 4, 
dikembangkan pada tahun 1981 dan telah menjadi standar utama untuk 
mengidentifikasi perangkat di jaringan komputer. Dengan panjang 32-bit, IPv4 
mampu mengalamati sekitar 4 miliar perangkat di seluruh dunia. Masing -masing 
alamat IPv4 ditulis menggunakan format desimal dengan pemisah titik, yang terdiri 
dari empat oktet, dimana setiap oktet berukuran 8-bit dan memiliki nilai antara 0 
hingga 255. 
</p>

<p style="text-align: justify;">
Meskipun demikian, sejumlah alamat IPv4 memiliki fungsi khusus, seperti 
alamat untuk broadcast, yang dipakai untuk mengirim data ke setiap perangkat dalam 
jaringan, serta alamat jaringan, yang digunakan untuk mengidentifikasi jaringan itu 
sendiri. IPv4 juga memiliki beberapa keterbatasan, terutama dalam hal kapasitas 
alamat, yang menyebabkan pengembangan IPv6 untuk mengatasi kekurangan ini. 
</p>

<p style="text-align: justify;">
Hierarki pengalamatan pada IPv4 seperti gambar dibawah ini :</p>

<div class="d-flex justify-content-center w-100">
<img src="/images/babOne/b.1.png" alt="Gambar 1.1 - Hierarki Pengalamatan IPv4" class="img-fluid mb-3 responsive-img">
</div>

<p style="text-align: center;"><b>
Gambar 1.1 Hierarki Pengalamatan IPv4</b></p>

### Struktur Alamat IPv4

<h5>1. 32-bit Address</h5>

<p style="text-align: justify;">
Alamat IPv4 dibentuk oleh 32 bit yang dibagi menjadi dua bagian utama: 
Network ID dan Host ID. Dalam gambar, 32 bit ini terbagi menjadi empat oktet, 
dengan masing - masing oktet memiliki panjang 8 bit.
</p>

<h5>2. Network ID</h5>
<p style="text-align: justify;">Network ID adalah komponen dalam alamat IP yang berfungsi untuk 
mengenali jaringan tempat perangkat terhubung. Pada gambar, Network ID 
mencakup tiga oktet pertama, yaitu "192.168.121". Ini menunjukkan bahwa 
semua perangkat yang memiliki Network ID yang serupa terhubung dalam 
jaringan yang sama. Network ID ini krusial untuk menjamin bahwa data yang 
dikirimkan melalui jaringan dapat diteruskan ke jaringan yang tepat sebelum 
sampai ke perangkat yang dituju. 
</p>

<h5>3. Host ID</h5>
<p style="text-align: justify;">Host ID merupakan bagian dalam alamat IP yang mengidentifikasi perangkat 
tertentu dalam jaringan yang sama. Dalam gambar, Host ID adalah oktet 
terakhir "16". Ini berarti perangkat yang bersangkutan memiliki alamat host 
"16" dalam jaringan "192.168.121".</p>

<h5>4. Oktet (Octet)</h5>
<p style="text-align: justify;">Setiap oktet terdiri dari 8 bit, dengan nilai yang dapat bervariasi antara 0 
hingga 255 dalam notasi desimal. Pada gambar, empat oktet adalah "192", 
"168", "121", dan "16", yang menunjukkan struktur standar dari alamat IPv4.</p>

<h5>Pembagian Network dan Host</h5>

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; overflow: hidden; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21">
           <tr style="background-color: #7928ca2e; ">
             <th style="border: none; padding: 6px; width: 22%;"><b>Class A</b></th>
             <th style="border:  1px solid #ffffff21;; padding: 6px; background-color: #724d972e; width: 19.5%"><b>Network</b></th>
             <th colspan="4" style="border: 1px solid #7928ca2e; padding: 6px; width: 58.5%;"><b>Host</b></th>
           </tr>
           <tr style="border: 1px solid #ffffff21"> 
             <td style="border: none; padding: 6px;"><b>Octet</b></td>
             <td style="border:  1px solid #ffffff21;; padding: 6px;"><b>1</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px;">2</td>
             <td style="border: 1px solid #ffffff21; padding: 6px;">3</td>
             <td style="border: 1px solid #ffffff21; padding: 6px;">4</td>
           </tr>
         </table>

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; overflow: hidden; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21">
           <tr style="background-color: #7928ca2e; ">
             <th style="border: none; padding: 6px; width: 22%;"><b>Class B</b></th>
             <th colspan="2" style="border:  1px solid #ffffff21;; padding: 6px; background-color: #724d972e; width: 39%"><b>Network</b></th>
             <th colspan="2" style="border: 1px solid #7928ca2e; padding: 6px; width: 39%;"><b>Host</b></th>
           </tr>
           <tr style="border: 1px solid #ffffff21"> 
             <td style="border: none; padding: 6px;"><b>Octet</b></td>
             <td style="border:  1px solid #ffffff21;; padding: 6px;  width: 100px;"><b>1</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;"><b>2</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;">3</td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;">4</td>
           </tr>
         </table>

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; overflow: hidden; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21">
           <tr style="background-color: #7928ca2e; ">
             <th style="border: none; padding: 6px; width: 22%;"><b>Class C</b></th>
             <th colspan="3" style="border:  1px solid #ffffff21;; padding: 6px; background-color: #724d972e; width: 58.5%"><b>Network</b></th>
             <th style="border: 1px solid #7928ca2e; padding: 6px; width: 19.5%;"><b>Host</b></th>
           </tr>
           <tr style="border: 1px solid #ffffff21"> 
             <td style="border: none; padding: 6px;"><b>Octet</b></td>
             <td style="border:  1px solid #ffffff21;; padding: 6px;  width: 100px;"><b>1</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;"><b>2</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;"><b>3</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;">4</td>
           </tr>
         </table>

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; overflow: hidden; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21">
           <tr style="background-color: #7928ca2e; ">
             <th style="border: none; padding: 6px; width: 22%;"><b>Class D</b></th>
             <th colspan="4" style="border:  1px solid #7928ca2e;; padding: 6px; width: 78%;"><b>Host</b></th>
           </tr>
           <tr style="border: 1px solid #ffffff21"> 
             <td style="border: none; padding: 6px;"><b>Octet</b></td>
             <td style="border:  1px solid #ffffff21;; padding: 6px;  width: 100px;"><b>1</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;">2</td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;">3</td>
             <td style="border: 1px solid #ffffff21; padding: 6px; width: 100px;">4</td>
           </tr>
         </table>

<span></span>

<p style="text-align: justify;">
Tabel diatas menunjukkan pembagian <b>Network</b> dan <b>Host</b> dalam berbagai kelas IP: 
</p>

1.  <p style="text-align: justify;">
    Kelas A: Oktet pertama digunakan untuk Network, sementara tiga oktet sisanya dialokasikan untuk Host.</p>

2.  <p style="text-align: justify;">
    Kelas B: Dua oktet pertama dialokasikan untuk Network, sementara dua
    oktet terakhir untuk Host.</p>

3.  <p style="text-align: justify;">
    Kelas C: Tiga oktet pertama diperuntukkan bagi Network, sementara oktet
    terakhir digunakan untuk Host.
    </p>
4.  <p style="text-align: justify;">
    Kelas D: Tidak ada pembagian antara Network dan Host, digunakan untuk multicast.
    </p>

<p style="text-align: justify;">Pembagian ini penting untuk routing dan pengalamatan IP, di mana router 
di jaringan lokal akan menggunakan Network ID untuk mengarahkan data ke 
jaringan yang tepat, dan Host ID untuk memastikan bahwa data mencapai 
perangkat yang benar di dalam jaringan. </p>

### Kelas - Kelas IP

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; overflow: hidden; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21">
           <tr style="background-color: #7928ca2e; ">
             <th style="border: 1px solid #ffffff21; padding: 6px; width: 150px;"><b>IP Address Class </b></th>
             <th style="border:  1px solid #ffffff21; padding: 6px; width: 120px;"><b>High Orders Bits</b></th>
             <th  style="border: 1px solid #ffffff21; padding: 6px; width: 200px;"><b>Fist Octet Address Range</b></th>
             <th  style="border: 1px solid #ffffff21; padding: 6px;"><b>Number Of Bits In The Network Address</b></th>
           </tr>
           <tr style="border: 1px solid #ffffff21;"> 
             <td style="border: 1px solid #ffffff21; padding: 6px;"><b>Class A</b></td>
             <td style="border:  1px solid #ffffff21;; padding: 6px;  "><b>0</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">0 - 126 <p>(00000001 - 01111110)</p> </td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">8</td>
           </tr>
            <tr style="border: 1px solid #ffffff21; background-color: #7928ca2e;"> 
             <td style="border: 1px solid #ffffff21; padding: 6px;"><b>Class B</b></td>
             <td style="border:  1px solid #ffffff21; padding: 6px;  "><b>10</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">128 - 191 <p>(10000000 - 10111111)</p> </td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">16</td>
           </tr> <tr style="border: 1px solid #ffffff21;"> 
             <td style="border: 1px solid #ffffff21; padding: 6px;"><b>Class C</b></td>
             <td style="border:  1px solid #ffffff21; padding: 6px;  "><b>110</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">192 - 233 <p>(11000000 - 11011111)</p> </td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">24</td>
           </tr> <tr style="border: 1px solid #ffffff21; background-color: #7928ca2e;"> 
             <td style="border: 1px solid #ffffff21; padding: 6px;"><b>Class D</b></td>
             <td style="border:  1px solid #ffffff21; padding: 6px;  "><b>1110</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; w">224 - 239 <p>(11100000 - 11101111)</p> </td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">28</td>
           </tr>
           </tr> <tr style="border: 1px solid #ffffff21;"> 
             <td style="border: 1px solid #ffffff21; padding: 6px;"><b>Class E</b></td>
             <td style="border:  1px solid #ffffff21; padding: 6px;  ;"><b>1111</b></td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">240 - 255 <p>(11110000 - 11111111)</p> </td>
             <td style="border: 1px solid #ffffff21; padding: 6px; ">32</td>
           </tr>
         </table>

<span></span>

<p style="text-align: justify;">
kelas IP dibagi menjadi lima kategori utama berdasarkan rentang alamat yang 
tersedia, yang dikenal sebagai Kelas A, B, C, D, dan E. Dibawah ini penjelasan 
singkat tentang masing-masing kelas: </p>

<h5>Kelas A</h5>

1. <p style="text-align: left;">Range Alamat : 1.0.0.0 sampai 126.0.0.0.</p>

2. <p style="text-align: left;">Pembagian    : Oktet pertama untuk Network, tiga oktet berikutnya untuk Host.</p>

3. <p style="text-align: left;">Penggunaan   : Untuk jaringan besar dengan banyak host.</p>

4. <p style="text-align: left;">Contoh       : 10.0.0.1 (IP Address Kelas A menggunakan subnet mask 255.0.0.0).</p>

<h5>Kelas B</h5>

1. <p style="text-align: left;">Range Alamat : 128.0.0.0 sampai 191.255.0.0.</p>

2. <p style="text-align: left;">Pembagian : Dua oktet awal dialokasikan untuk Network, sedangkan dua oktet sisanya diperuntukkan bagi Host.</p>

3. <p style="text-align: left;">Penggunaan : Untuk jaringan skala menengah, seperti pada perusahaan besar.</p>

4. <p style="text-align: left;">Contoh : 172.16.0.1 (IP Address Kelas B menggunakan subnet mask 255.255.0.0).</p>

<h5>Kelas C</h5>

1. <p style="text-align: left;">Range Alamat : 192.0.0.0 sampai 223.255.255.0.</p>

2. <p style="text-align: left;">Pembagian : Tiga oktet awal dialokasikan untuk Network, sedangkan oktet terakhir ditujukan untuk Host.</p>

3. <p style="text-align: left;">Penggunaan : Untuk jaringan kecil, seperti jaringan rumah atau kantor kecil.<p>

4. <p style="text-align: left;">Contoh : 192.168.1.1 (IP Address Kelas C menggunakan subnet mask 255.255.255.0).</p>

<h5>Kelas D</h5>

1. <p style="text-align: left;">Range Alamat : 224.0.0.0 sampai 239.255.255.255.</p>

2. <p style="text-align: left;">Penggunaan : Untuk multicast, tidak dibagi antara Network dan Host.</p>

3. <p style="text-align: left;">Contoh : 224.0.0.1 (Alamat multicast untuk protokol routing tertentu).</p>

<h5>Kelas E</h5>

1. <p style="text-align: left;">Range Alamat : 240.0.0.0 hingga 255.255.255.255. </p>

2. <p style="text-align: left;">Penggunaan : Reserved untuk keperluan eksperimen serta jarang dipakai secara luas.</p>

3. <p style="text-align: left;">Contoh : 250.0.0.1 (IP Address Kelas E, umumnya tidak digunakan dalam jaringan publik).</p>

<p style="text-align: justify;">Pembagian ini memungkinkan pengalokasian alamat IP yang efisien sesuai 
dengan kebutuhan jaringan. Alamat 127.x.x.x diperuntukkan bagi loopback, yang 
berfungsi untuk memungkinkan perangkat mengirim data ke dirinya sendiri. Alamat 
127.0.0.1 adalah yang paling sering digunakan dan dikenal sebagai localhost. Ini 
berguna untuk menguji dan memvalidasi jaringan atau aplikasi lokal tanpa melibatkan 
jaringan eksternal.
</p>

### Alamat Khusus Dalam IPv4

<p style="text-align: justify;">
Dalam IPv4, ada beberapa jenis alamat khusus yang memiliki fungsi dan 
penggunaan tertentu. Berikut adalah penjelasan untuk beberapa kategori utama, yaitu: 
</p>

<h5>1. Alamat Pribadi (Private)</h5>
<p style="text-align: justify;">Alamat pribadi adalah alamat IP yang khusus diperuntukkan bagi penggunaan 
di jaringan lokal dan tidak dapat diakses langsung melalui internet publik. Alamat ini digunakan untuk mengidentifikasi perangkat dalam jaringan lokal 
dan biasanya diterjemahkan ke alamat publik menggunakan teknik Network 
Address Translation (NAT).

<p style="text-align: justify;">Contoh:</p>

1. 192.168.1.1
2. 10.0.0.5
3. 172.16.0.10

</p>

<h5>2. Alamat Public</h5>
<p style="text-align: justify;">
Alamat publik adalah alamat IP yang dapat dijangkau secara langsung melalui 
internet. Alamat ini digunakan untuk identifikasi global di internet dan harus 
unik di seluruh dunia. Alamat public biasanya diberikan oleh penyedia layanan 
internet (ISP).
<p style="text-align: justify;">Contoh:</p>

1. 8.8.8.8 (Alamat DNS Google).
2. 172.217.1.14 (Alamat IP salah satu server Google).
</p>

<h5>3. Alamat Brodcast</h5>
<p style="text-align: justify;">Alamat broadcast diperuntukan untuk mentransmisikan paket ke semua 
perangkat di jaringan lokal. Ada dua jenis broadcast: broadcast terbatas dan 
broadcast global.

1. <p style="text-align: justify;"><b>Broadcast Terbatas :</b> Alamat broadcast untuk jaringan tertentu, misalnya
   untuk subnet 192.168.1.0/24, alamat broadcast adalah 192.168.1.255.

2. <p style="text-align: justify;"><b>Broadcast Global :</b> Biasanya tidak digunakan di IPv4 karena broadcast
   terbatas sudah mencakup sebagian besar kebutuhan. Broadcast global
   adalah 255.255.255.255 yang dapat mentransmisikan untuk mengirimkan
   pesan broadcast ke seluruh perangkat di jaringan lokal yang sama.
   </p>

<h5>4. Alamat Loopback</h5>
<p style="text-align: justify;">Alamat loopback adalah alamat yang dipakai oleh perangkat untuk 
mengirimkan data ke dirinya sendiri. Ini biasanya digunakan untuk pengujian 
dan debugging. Rentang Alamat Loopback di kelas A dari 127.0.0.0 hingga 
127.255.255.255.
</p>

Contoh :

1. <p style="text-align: justify;">127.0.0.1 (Alamat loopback standar, sering disebut sebagai "localhost").</p>

<h5>5. Alamat Multicast</h5>
<p style="text-align: justify;">Alamat multicast digunakan untuk mengirimkan paket ke sekelompok 
perangkat yang telah bergabung dalam grup multicast tertentu. Rentang 
Alamat Multicast di kelas D dari 224.0.0.0 sampai 239.255.255.255.
</p>

Contoh :

1. <p style="text-align: justify;">
   224.0.0.1 (Digunakan untuk semua host dalam jaringan lokal).
   </p>

<h5>6. Alamat Reserved</h5>
<p style="text-align: justify;">Alamat reserved adalah alamat yang dikhususkan untuk penggunaan tertentu dan tidak digunakan dalam jaringan umum. Contoh termasuk alamat untuk percobaan dan penelitian. Rentang Alamat Reserved di Kelas E dari 240.0.0.0 hingga 255.255.255.255. 
</p>
