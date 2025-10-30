---
weight: 34
title: "Routing Lanjutan"
description: "Pengertian, Cara Kerja, Fungsi dari DHCP, OSPF, BGP Dan Redistribution Routing"
icon: "router"
date: "2025-10-20T18:07:58+07:00"
lastmod: "2025-10-20T22:26:58+07:00"
toc: true
---

Bab ini membahas Routing Lanjutan, termasuk protokol OSPF (Open Shortest Path First) dan
BGP (Border Gateway Protocol), serta penerapan DHCP (Dynamic Host Configuration
Protocol) pada router Cisco. Praktikan akan belajar cara mengatur dan mengonfigurasi
protokol ini untuk mengelola jaringan.

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami konsep OSPF, BGP, dan DHCP pada router Cisco** | Bab ini menjelaskan apa itu OSPF, BGP, dan DHCP, fungsinya, serta bagaimana cara kerjanya dalam jaringan. |
| **Mengonfigurasi OSPF, BGP, dan DHCP pada router Cisco** | Bab ini memandu praktikan langkah demi langkah untuk mengonfigurasi OSPF, BGP, dan DHCP service pada router Cisco menggunakan CLI. |
| **Meningkatkan pengetahuan dan keterampilan teknis routing dan layanan jaringan** | Bab ini membantu praktikan mempelajari cara kerja protokol routing dinamis dan DHCP, yang merupakan keterampilan penting bagi administrator jaringan dalam mengelola jaringan berskala besar. |
{{< /table >}}

## Persyaratan

Disarankan praktikan menggunakan hardware dan software sesuai pada dokumentasi ini.
Apabila terdapat versi yang lumayan lampau dari versi yang direcommendasikan atau
hardware yang lawas maka sebaiknya bertanya kepada Asisten Mengajar Shift.

{{< table "table-striped" >}}
| HARDWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
|---------|---------|
| **PC / Laptop CPU** | ≥ 4 Cores |
| **PC / Laptop RAM** | ≥ 8 GB |
| **PC / Laptop Storage** | ≥ 10 GB |  
{{< /table >}}

{{< table "table-striped" >}}
| SOFTWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
| ------------ | --------------- |
| **Windows OS** | ≥ Versi 7 |
| **Cisco Packet Tracer** | ≥ Versi 8.2 |
{{< /table >}}

## DHCP

<strong>Dynamic Host Configuration Protocol (DHCP) </strong>merupakan protokol jaringan
yang secara otomatis memberikan alamat IP dan informasi konfigurasi lainnya
(seperti subnet mask, gateway default, dan server DNS) kepada perangkat yang
terhubung ke jaringan. Protokol ini mengurangi kebutuhan untuk melakukan
konfigurasi manual pada setiap perangkat yang terhubung.

### Cara Kerja DHCP

DHCP (Dynamic Host Configuration Protocol) bekerja dengan cara
memfasilitasi pengaturan alamat IP secara otomatis dalam jaringan. Ketika perangkat
baru terhubung, ia mengirimkan pesan DHCP Discover untuk mencari server DHCP.
Server yang menerima pesan tersebut akan merespons dengan pesan DHCP Offer,
yang berisi alamat IP yang tersedia dan informasi konfigurasi lainnya. Setelah itu,
perangkat klien mengirimkan pesan DHCP Request kepada server yang menawarkan
alamat IP yang dipilih, meminta untuk mengonfirmasi permintaan tersebut. Akhirnya,
server mengirimkan pesan DHCP Acknowledgment (ACK) untuk mengonfirmasi
bahwa alamat IP telah diberikan, sehingga perangkat dapat mulai berkomunikasi di
jaringan tanpa perlu konfigurasi manual.

### Fungsi DHCP

Fungsi DHCP (Dynamic Host Configuration Protocol) merupakan untuk
memberikan alamat IP dan informasi konfigurasi jaringan secara otomatis kepada
perangkat yang terhubung. Dengan DHCP, perangkat tidak perlu lagi melakukan
pengaturan alamat IP secara manual. Saat menggunakan DHCP, perangkat dapat
mendapatkan pengaturan jaringan tanpa perlu konfigurasi manual, mencegah konflik
alamat IP, dan mendukung mobilitas perangkat antar jaringan. Selain itu, DHCP
mengelola penyewaan alamat IP, di mana alamat yang diberikan memiliki jangka
waktu tertentu, sehingga penggunaan alamat IP dapat dikelola dengan lebih efisien.

## OSPF (Open Shortest Path First)

Open Shortest Path First (OSPF) merupakan protokol routing dinamis yang
dirancang untuk mengelola, mengatur, dan mendistribusikan informasi routing antar
jaringan secara otomatis, dengan menyesuaikan diri terhadap perubahan yang terjadi
dalam jaringan. OSPF menggunakan konsep Autonomous System (AS), yang
merupakan gabungan beberapa jaringan yang memiliki metode routing dan kebijakan
jaringan serupa, yang semua dapat dikelola oleh administrator jaringan. Fitur ini
sangat berguna untuk pengelolaan jaringan skala besar, memungkinkan penambahan
informasi routing yang lebih mudah dan mengurangi risiko kesalahan dalam distribusi
data routing.

Sebagai bagian dari kategori IGP (Interior Gateway Protocol), OSPF
mengandalkan kemampuan Link-State dan algoritma Djikstra, yang lebih efisien
dibandingkan dengan protokol IGP lainnya. Protokol ini bekerja menggunakan
protokol dengan nomor 89.

### Cara Kerja OSPF

Open Shortest Path First (OSPF) bekerja dengan cara router saling bertukar
pesan “Hello” untuk mengenali tetangga. Setelah terhubung, router berbagi
informasi tentang jaringan melalui Link-State Advertisement (LSA). Informasi ini
disimpan dan digunakan untuk menghitung jalur terbaik dengan algoritma Dijkstra,
yang memilih rute paling efisien. Setiap perubahan dalam jaringan langsung
diperbarui ke routing table. OSPF juga bisa membagi jaringan besar menjadi
beberapa area untuk menjaga performa, dengan Area 0 sebagai pusat penghubung
antar-area.

### Fungsi OSPF

Fungsi utama OSPF adalah untuk menemukan dan memilih jalur terbaik bagi
data yang dikirim melalui jaringan. OSPF secara dinamis menyesuaikan dengan
perubahan jaringan, seperti penambahan atau pemutusan jalur, sehingga
memastikan data selalu mengalir melalui rute tercepat dan paling efisien. Selain itu,
OSPF mendukung jaringan yang kompleks dengan membagi jaringan besar menjadi beberapa area untuk mengurangi beban kerja router dan meningkatkan efisiensi
routing.

## BGP Border Gateway Protocol

Border Gateway Protocol (BGP) merupakan protokol routing yang digunakan
untuk menghubungkan antar Autonomous System (AS), serta berfungsi dalam routing
untuk penyedia layanan internet (ISP) dan institusi seperti perbankan. BGP termasuk
dalam kategori protokol routing EGP (Exterior Gateway Protocol).

Dengan menggunakan EGP, router dapat bertukar informasi routing antar AS,
baik untuk jaringan yang keluar maupun yang masuk ke jaringan lokal. BGP dikenal
memiliki skalabilitas yang sangat tinggi, memungkinkan pertukaran rute antar banyak
perusahaan besar. Karena kompleksitasnya, BGP sering disebut sebagai protokol
routing yang canggih dan cukup rumit.

### Cara Kerja BGP

BGP bekerja dengan bertukar informasi rute antar-jaringan (AS) dan
menyimpan rute-rute ini dalam tabel routing. Setiap router BGP memilih jalur terbaik
berdasarkan kebijakan dan preferensi tertentu, bukan hanya jumlah hop. Jika ada
perubahan dalam jaringan, BGP akan memperbarui rute dan menyebarkannya ke
router lain, sehingga trafik selalu diarahkan melalui jalur terbaik yang tersedia.

### Fungsi BGP

BGP berfungsi sebagai protokol routing antar jaringan besar (Autonomous
Systems) yang memastikan data dikirim melalui jalur paling efisien di internet. Dengan
bertukar informasi rute, BGP memungkinkan setiap jaringan untuk mengetahui jalur
yang tersedia dan memilih yang terbaik sesuai kebijakan yang diatur oleh
administrator. Ini membantu mengoptimalkan pengiriman data, menjaga keandalan
dengan menyediakan rute cadangan jika terjadi gangguan, dan memungkinkan
kontrol atas rute yang dipilih atau dihindari, sehingga jaringan tetap stabil dan efisien.

## Redistribution Routing

Redistribution routing adalah proses pengambilan rute dari satu protokol
routing dan menyebarkannya ke protokol lain. Hal ini memungkinkan perangkat untuk
memperluas jangkauan routing dan menyediakan konektivitas antara jaringan yang
sebelumnya terisolasi.

Redistribusi routing digunakan ketika ada beberapa protokol routing dalam
jaringan yang harus saling terhubung. Misalnya, jika suatu jaringan menggunakan
OSPF dan ada perangkat dengan protokol routing BGP yang ingin terhubung, maka
administrator dapat menggunakan redistributed routing untuk membuat konekti
antar protokol routing tersebut.

### Fungsi Redistribute Connected pada routing BGP

Fungsi redistribute connected pada routing BGP adalah sebagai memasukkan
semua jaringan yang statusnya “connected” ke dalam proses BGP, sehingga jaringan-
jaringan yang langsung tersambung oleh router bisa ikut diiklankan ke neighbor BGP
tanpa perlu konfigurasi perintah “network” satu per satu.

### Perbedaan Redistribute Connected dan Network pada BGP

<center>
<img src="/images/babSix/b.1.PNG" alt="Gambar B.1 - Tabel Perbedaan Network dan Redistributed Connected" class="img-fluid mb-3 responsive-img">
</center>
