---
weight: 40
title: "NAT"
description: "Pengertian, Tujuan, Dan Jenis - Jenis NAT"
icon: "swap_horiz"
date: "2025-10-25T10:42:58+07:00"
lastmod: "2025-10-25T10:42:58+07:00"
toc: true
---

Pada bab ini, praktikan akan belajar tentang NAT (Network Address Translation) dan jenis
jenisnya seperti SNAT, DNAT, dan PAT. Bab ini juga akan menjelaskan bagaimana NAT
mengatasi kekurangan alamat IP publik dan meningkatkan keamanan jaringan. Selain itu,
praktikan akan memahami cara kerja DNS server yang mengubah nama domain menjadi
alamat IP untuk menghubungkan perangkat ke internet.

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami konsep NAT (SNAT, DNAT, PAT)** | Bab ini menjelaskan apa itu NAT, fungsi dari masing-masing jenis NAT (SNAT, DNAT, PAT), dan bagaimana cara kerjanya dalam penerjemahan alamat IP di jaringan komputer. |
| **Mengkonfigurasi NAT dan DNS server pada router** | Bab ini memandu praktikan langkah demi langkah untuk mengonfigurasi NAT pada router serta menambahkan DNS server untuk menghubungkan perangkat ke internet. |
| **Meningkatkan pengetahuan keterampilan dan teknis jaringan** | Bab ini membantu praktikan mempelajari cara kerja NAT dan DNS server serta bagaimana cara mengonfigurasinya pada jaringan, yang merupakan keterampilan penting bagi admin jaringan. |
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

## Network Address Translation (NAT)

Network Address Translation (NAT) merupakan teknik yang digunakan untuk
mengubah alamat IP privat menjadi alamat IP publik, atau sebaliknya, dalam jaringan
komputer. Dengan NAT, banyak perangkat yang menggunakan alamat IP privat di
jaringan lokal dapat terhubung ke internet atau jaringan luar menggunakan satu atau
lebih alamat IP publik. Selain itu, NAT juga berfungsi untuk meningkatkan keamanan
dengan menyembunyikan alamat IP privat dari pihak luar.

## Tujuan NAT

NAT (Network Address Translation) dirancang untuk mengatasi keterbatasan
jumlah alamat IP pada IPv4. Dengan NAT, sejumlah perangkat di dalam jaringan lokal
dapat berbagi satu alamat IP publik untuk mengakses internet, yang tidak hanya
menghemat penggunaan alamat IP yang terbatas, tetapi juga meningkatkan
keamanan dengan menyembunyikan alamat IP perangkat asli dari jaringan eksternal.
Proses ini bekerja dengan cara mengganti alamat IP sumber pada paket data yang
dikirim dari perangkat lokal ke alamat IP publik milik gateway jaringan. Ketika respons
dari internet diterima, NAT kemudian mengembalikan alamat IP tujuan ke alamat IP
lokal perangkat yang memulai permintaan.

## Tujuan NAT

### SNAT (Source NAT)

NAT Statis, juga dikenal sebagai One-to-One NAT, adalah bentuk NAT di mana
satu alamat IP lokal dihubungkan secara tetap dengan satu alamat IP publik. Ini berarti
bahwa setiap kali paket data dikirim dari alamat IP lokal tertentu, NAT akan melakukan
pengubahan alamat IP secara statis ke alamat IP publik yang sesuai. Proses ini tidak
berubah seiring waktu, sehingga memungkinkan untuk koneksi yang konsisten dan
dapat diprediksi. Ciri-ciri dari metode ini adalah setiap perangkat dalam jaringan lokal diberikan alamat IP lokal yang bersifat statis, dan ketika perangkat di dalam jaringan
lokal ingin terhubung ke Internet, NAT mengganti alamat IP lokal menjadi alamat IP
publik yang sesuai.

1.  <strong>Fungsi :</strong> Static NAT (NAT statis) adalah metode yang secara tetap mencocokkan satu alamat IP privat dengan satu alamat IP publik.
2.  <strong>Cara Kerja :</strong> Dalam Static NAT, alamat IP privat tertentu selalu diterjemahkan ke alamat IP publik yang sama. Ini berguna untuk perangkat di jaringan internal yang harus diakses secara publik secara terus-menerus, seperti server web atau server email. Setiap kali ada permintaan ke alamat IP publik yang telah dipetakan, NAT akan selalu eneruskannya ke perangkat yang memiliki IP privat tersebut.
3.  <strong>Kegunaan :</strong> Static NAT biasanya digunakan untuk server yang membutuhkan alamat IP tetap agar dapat diakses dari luar jaringan, seperti server yang meng-host aplikasi web atau file server.

### Dynamic NAT

NAT Dinamis bekerja dengan cara memanfaatkan kumpulan alamat IP publik
yang tersedia untuk digunakan secara bergantian oleh perangkat di jaringan
lokal. Ketika perangkat di jaringan lokal ingin terhubung ke internet, NAT
secara otomatis memilih salah satu alamat IP publik dari pool yang tersedia
untuk menggantikan alamat IP lokal perangkat tersebut. Setelah koneksi
selesai, alamat IP publik tersebut akan dikembalikan ke pool untuk digunakan
oleh perangkat lain. Metode ini ditandai dengan penggunaan pool alamat IP
publik yang fleksibel, di mana perangkat lokal meminjam alamat IP publik saat
diperlukan, dan alamat tersebut kembali ke pool setelah koneksi berakhir.

1.  <strong>Fungsi :</strong> Dynamic NAT (NAT dinamis) menghubungkan banyak alamat IP privat ke sejumlah alamat IP publik yang tersedia, dengan alokasi yang dilakukan secara fleksibel sesuai kebutuhan.
2.  <strong>Cara Kerja :</strong> Berbeda dengan Static NAT, Dynamic NAT tidak menggunakan peta statis. Sebaliknya, perangkat di jaringan lokal dengan IP privat secara dinamis dipetakan ke Alamat IP publik yang diambil dari kumpulan yang telah ditetapkan. Setiap kali perangkat memulai komunikasi dengan jaringan eksternal, router mencari alamat IP publik yang belum digunakan dari kumpulan yang tersedia dan menerjemahkannya untuk perangkat tersebut.
3.  <strong>Kegunaan :</strong> Dynamic NAT digunakan dalam jaringan dengan banyak perangkat internal, tetapi hanya sejumlah kecil IP publik yang tersedia. Meskipun lebih fleksibel dibanding Static NAT, Dynamic NAT memerlukan cukup banyak IP publik dalam kumpulannya, dan tidak selalu bisa melayani semua perangkat secara bersamaan jika kumpulan IP habis.

### Dynamic NAT Overloading/ Port Address Translation (PAT)

NAT Overload, atau yang sering disebut Port Address Translation (PAT),
merupakan jenis NAT yang paling banyak digunakan. Dalam NAT Overload,
satu alamat IP publik digunakan untuk mewakili beberapa alamat IP lokal,
tetapi juga menggunakan port sumber untuk membedakan koneksi dari
berbagai perangkat. Setiap paket yang dikirim dari perangkat lokal diberi
nomor port unik ketika keluar ke Internet. Ciri-ciri dari metode ini adalah satu
alamat IP publik digunakan untuk mewakili beberapa alamat IP lokal, ketika
paket data keluar dari jaringan lokal, NAT kemudian mengonversi alamat IP
lokal menjadi alamat IP publik, sambil menggunakan nomor port untuk
membedakan koneksi, dan Port yang berbeda digunakan untuk setiap koneksi
yang keluar dari jaringan lokal, sehingga memungkinkan banyak perangkat
menggunakan satu alamat IP publik secara bersamaan.

1.  <strong>Fungsi :</strong> Dynamic NAT Overloading, atau Port Address Translation (PAT), adalah jenis Dynamic NAT yang memungkinkan banyak perangkat dengan alamat IP privat menggunakan satu alamat IP publik. Identifikasi perangkat dilakukan berdasarkan nomor port.
2.  <strong>Cara Kerja :</strong> Saat perangkat dalam jaringan privat mengirimkan data ke internet, PAT mengubah semua alamat IP privat menjadi satu atau beberapa alamat IP publik, dengan membedakan sesi komunikasi melalui nomor port. Hal ini memungkinkan banyak perangkat di jaringan lokal
    menggunakan satu alamat IP publik tanpa konflik, karena router memetakan setiap sesi berdasarkan kombinasi alamat IP publik dan nomor port.
3.  <strong>Kegunaan :</strong> Dynamic NAT Overloading sangat efektif dan menjadi jenis NAT yang paling sering digunakan di jaringan rumah atau kantor kecil, karena memungkinkan banyak perangkat berbagi satu atau beberapa alamat IP publik.
