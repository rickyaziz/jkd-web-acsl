---
weight: 3
title: 'Sejarah Dan Evolusi Jaringan'
description: ''
icon: 'captive_portal'
date: '2025-08-31T17:27:28+07:00'
lastmod: '2025-08-31T17:27:28+07:00'
toc: true
---

Pada Briefing ini, praktikan akan diperkenal sejarah, distro, filesystem pada linux. Agar praktikum berjalan sesuai prosedur maka Asisten Mengajar Shift atau Praktikan dapat membaca tujuan praktikum bab ini sebelum memulai ke bab teori.

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami sejarah jaringan komputer** | Brefing ini membahas perkembangan jaringan komputer dari masa ke masa, bagaimana konsepnya terbentuk, dan pengaruh pentingnya dalam dunia teknologi saat ini. |
| **Memahami tujuan dari jaringan komputer** | Brefing ini membahas tujuan pentingnya jaringan komputer. |
| **Memahami OSI Layer** | Brefing ini membahas model OSI, sebuah kerangka kerja yang digunakan untuk memamahami bagaimana komunikasi data terjadi melalui berbagai lapisan, mulai dari pengiriman hingga penerimaan dalam jaringan.|
| **Memahami konversi bilangan** | Brefing ini akan mempelajari cara melakukan konversi bilangan dari desimal ke biner, biner ke desimal, serta basis bilangan lainnya yang sering digunakan dalam sistem jaringan komputer. |
| **Mengetahui perangkat-perangkat jaringan komputer** | Praktikan akan mempelajari berbagai perangkat yang digunakan dalam jaringan komputer, termasuk router, switch, dan server, serta bagaimana masing-masing perangkat berperan dalam mengelola dan menghubungkan jaringan.|
| **Memahami cara kerja jaringan** | Bab ini membahas cara kerja jaringan komputer, termasuk bagaimana data dikirim dari satu perangkat ke perangkat lain, bagaimana perangkat terhubung, serta bagaimana protokol komunikasi bekerja dalam jaringan. |
{{< /table >}}

## Sejarah Jaringan

<span class=""> </span>
Gagasan jaringan komputer pertama kali muncul pada 1940-an di Amerika Serikat, berawal dari proyek penelitian di Harvard University yang dipimpin oleh Profesor H. Aiken. Proyek ini bertujuan mengembangkan komputer MODEL I di laboratorium Bell. Pada awalnya penelitian ini hanya ingin mengggunakan perangkat komputer yang dapat digunakan bersama. Proses beruntun, atau yang dikenal sebagai batch processing, dirancang untuk menjalankan banyak proses secara efisien dalam satu waktu tanpa membuang waktu. Dengan standar antrian, beberapa program dapat dijalankan secara bersamaan pada sebuah komputer.

Pada tahun 1950-an, ketika ukuran komputer semakin besar sehingga
terciptanya super komputer, muncul kebutuhan agar satu komputer dapat
mendukung beberapa perangkat sekaligus (lihat Gambar B.1). Dari sini lahirlah
konsep distribusi proses berbasis waktu yang dikenal sebagai TSS (Time Sharing
System), yang menjadi awal penerapan jaringan komputer (network). Dalam sistem
TSS, beberapa terminal dihubungkan secara seri ke satu host komputer. Konsep ini
memperlihatkan awal perpaduan antara teknologi komputer dan telekomunikasi,
yang sebelumnya berkembang secara terpisah.

<div class="d-flex justify-content-center w-100">
<img src="/images/briefing/gambar-b1.png" alt="Gambar B.1 - Time Sharing System" class="img-fluid mb-3" style="width: 100%; max-width: 100%; height: auto;">
</div>

[Source Gambar](https://course-net.com/wp-content/uploads/2025/03/THUMBNAIL-ARTIKEL-24_12_11zon.jpg)

## Evolusi Jaringan

### Komputer besar (Mainframe) Pada Periode 1960-1970an

Pada sekitar tahun 1940-an, komputer masih berupa mesin besar yang mudah mengalami kesalahan atau error. Penemuan transistor semikonduktor pada tahun
1947 memberikan peluang untuk menciptakan komputer yang lebih mini dan lebih
andal. Di tahun 1950-an, institusi besar mulai memanfaatkan komputer mainframe
yang dijalankan dengan program berbasis punched card. Menjelang akhir dekade
1950-an, ditemukan Integrated Circuit (IC), yang menggabungkan beberapa transistor
dalam satu semikonduktor kecil. Di tahun 1960-an, penggunaan mainframe yang
terhubung dengan terminal dan IC mulai tersebar luas.

### Local Area Network (LAN) Pada Periode 1970-1980an

Di akhir tahun 1960-an hingga 1970-an, minikomputer, yaitu komputer yang
lebih kecil bermunculan, walaupun masih tergolong besar jika dibandingkan dengan
standar masa kini. Di tahun 1977, perusahaan Apple Computer Company
menghadirkan mikrokomputer, yang dikenal sebagai MAC. Di tahun 1981, IBM
menampilkan PC pertama mereka. Kesuksesan MAC yang mudah digunakan oleh
pengguna dan PC IBM yang cenderung terbuka, ditambah dengan kemajuan dalam
miniaturisasi IC, mendorong penggunaan PC secara luas seperti dalam rumah dan
kantor. Pada masa ini, pengembangan jaringan lokal mulai dilakukan dengan berbagai
teknologi.

### Wide Area Network (WAN) Pada Periode 1980-1990an

Di pertengahan tahun 1980-an, pengguna PC mulai memanfaatkan modem
untuk membagikan file antar komputer, yang biasa disebut sebagai komunikasi titik-
ke-titik(dial-up). Konsep ini berkembang dengan adanya penggunaan bulletin boards,
tempat pengguna dapat terhubung, meninggalkan pesan, dan
mengunggah/mengunduh file. Tetapi, ada keterbatasan seperti komunikasi real-time
yang aksesnya yang terbatas. Sejalan dengan meningkatnya jumlah pengguna,
bulletin boards tidak lagi mampu mengimbangi peningkatan permintaan. Sebagai
gambaran, bila 500 orang ingin tersambung secara bersamaan,
maka diperlukan lima modem yang terhubung ke lima jalur telepon yang berbeda.

### Internet Pada Era 1990 an

Pada tahun 1960-an sampai 1990-an, Departemen Pertahanan Amerika
Serikat (DoD) merancang WANs (Wide-Area Networks) yang luas dan handal untuk
kepentingan militer serta penelitian ilmiah. Teknologi ini memilik perbedaan
mendasar dengan komunikasi titik ke titik yang dipakai dalam bulletin boards, karena
memberikan peluang beberapa komputer terhubung secara bersamaan melalui
berbagai jalur berbeda Jaringan tersebut mampu menentukan metode pengiriman
data antara komputer, sehingga satu koneksi dapat digunakan untuk melayani banyak
komputer sekaligus. Pada akhirnya, jaringan yang dikembangkan oleh Departemen
Pertahanan AS ini berevolusi menjadi jaringan global yang saat ini dikenal sebagai
Internet.
