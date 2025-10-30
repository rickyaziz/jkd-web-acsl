---
weight: 29
title: "Routing"
description: "Konsep, Hirarki, Dan Jenis Routing"
icon: "router"
date: "2025-10-20T18:07:58+07:00"
lastmod: "2025-10-20T18:07:58+07:00"
toc: true
---

Bab ini membahas routing jaringan mulai dari hirarki jaringan untuk efisiensi dan skalabilitas,
metode routing statis dan dinamis, serta algoritma distance vector dan link state. Praktikan
juga akan mempelajari konfigurasi protokol RIPv2 dan EIGRP.

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami hirarki jaringan** | Bab ini menjelaskan pengenalan hirarki jaringan, termasuk bagaimana perangkat jaringan disusun secara bertingkat untuk meningkatkan efisiensi, manajemen, dan skalabilitas. |
| **Memahami metode routing (static & dynamic)** | Praktikan akan mempelajari metode routing statis dan dinamis, termasuk perbedaan cara kerja keduanya dalam mengarahkan lalu lintas jaringan serta kapan masing-masing metode digunakan. |
| **Memahami konsep distance vector dan link state** | Bab ini membahas dua jenis algoritma routing, yakni distance
vector yang menggunakan jarak sebagai metrik, dan link state yang mempertimbangkan keseluruhan topologi jaringan untuk membuat keputusan routing. |
| **Memahami protokol RIPv2 dan EIGRP** | Praktikan akan mempelajari dan membandingkan protokol RIPv2 dan EIGRP, termasuk cara kerja, dan implementasi masing-masing dalam jaringan. |
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

## Konsep Routing

Routing adalah proses menentukan jalur atau rute terbaik untuk mengirimkan
data dari satu titik ke titik tujuan lainnya dalam sebuah jaringan komputer atau sistem
komunikasi. Ini melibatkan penggunaan algoritma dan protokol khusus untuk
mengarahkan paket data atau informasi ke arah yang optimal melalui jaringan yang
kompleks.

<center>
<img src="/images/babFive/b.1.PNG" alt="Gambar B.1 - Konsep Routing" class="img-fluid mb-3 responsive-img">
</center>

## Hirarki Jaringan

Hirarki jaringan komputer merujuk pada struktur hierarkis yang digunakan
untuk merancang dan mengelola jaringan komputer. Struktur ini mengorganisir
seperti perangkat lunak, perangkat keras dan sumber daya jaringan ke dalam lapisan
atau tingkatan yang berbeda, yang masing-masing memiliki tanggung jawab dan
fungsi tertentu.
Berikut adalah definisi rinci tentang hirarki jaringan computer;

<center>
<img src="/images/babFive/b.2.PNG" alt="Gambar B.2 - Hirarki Jaringan" class="img-fluid mb-3 responsive-img">
</center>

1.  <h5 style="text-align: justify;">
    Level 1: Perangkat Akhir (End Devices)
    </h5>

    Level ini terdiri dari perangkat-perangkat akhir yang digunakan oleh pengguna
    untuk mengakses jaringan, seperti komputer pribadi, laptop, smartphone, printer,
    dan perangkat lainnya. Perangkat akhir berfungsi sebagai titik awal dan akhir dari
    komunikasi dalam jaringan, mengirim dan menerima data dari jaringan.

2.  <h5 style="text-align: justify;">
    Level 2: Access Network
    </h5>

    Level ini mencakup perangkat jaringan yang terletak di ujung jaringan, dekat
    dengan perangkat akhir. Ini termasuk switch, access point (untuk jaringan nirkabel),
    dan kadang-kadang hub. Access network bertanggung jawab untuk menghubungkan
    perangkat akhir ke jaringan dengan menyediakan akses ke jaringan lokal atau internet.

3.  <h5 style="text-align: justify;">
    Level 3: Distribution Network 
    </h5>

    Level ini adalah tingkat perantara antara access network dan core network. Ini
    mencakup perangkat jaringan seperti router yang menghubungkan beberapa access
    networks ke dalam satu jaringan yang lebih besar. Distribution network mengatur lalu
    lintas data antara access networks, melakukan pengaturan dan kontrol akses, serta
    menyediakan rute ke jaringan tujuan.

4.  <h5>
    Level 4: Core Network
    </h5>


    Core network merupakan inti dari jaringan komputer. Ini terdiri dari perangkat
    jaringan yang memiliki kapasitas besar dan kinerja tinggi, seperti router kelas carrier
    dan switch core. Jaringan inti (core network) memiliki tugas untuk mentransfer lalu
    lintas data antar berbagai bagian jaringan, termasuk jaringan akses dan jaringan
    eksternalseperti internet atau jaringan pribadi perusahaan.

## Jenis Routing

Terdapat berbagai jenis routing yang digunakan dalam jaringan komputer.
Berikut ini adalah beberapa jenis routing beserta penjelasan mendalam tentang
masing-masing:

<center>
<img src="/images/babFive/b.3.PNG" alt="Gambar B.3 - Jenis Routing" class="img-fluid mb-3 responsive-img">
</center>

### Dynamic Routing

Dynamic routing memanfaatkan algoritma routing yang aktif secara dinamis
menghitung jalur terbaik untuk mengirimkan paket data berdasarkan informasi
topologi jaringan dan status koneksi saat itu. Ini mengurangi beban administratif,
terutama dalam jaringan besar atau sering berubah. Dynamic routing dibagi lagi
menjadi dua kategori:

1.  <h5>
    Interior Gateway Protocol (IGP)
    </h5>

    IGP berfungsi sebagai routing dalam satu
    sistem otonom atau biasa disebut AS (Autonomous system). Sistem ini diperuntukan untuk organisasi atau jaringan yang dikendalikan oleh satu
    entitas. Ada dua tipe utama IGP:

    - <b>Distance Vector Routing:</b> Distance Vector Routing adalah metode routing
      di mana setiap router menggunakan informasi jarak (jumlah hop) untuk
      menentukan jalur terbaik ke tujuan. Setiap router hanya mengetahui jarak
      ke tujuan berdasarkan informasi yang diterima dari tetangga terdekatnya.
      Contoh protokol yang menggunakan metode ini adalah RIP.

    - <b>Link State Routing:</b>: Dalam Link State Routing, setiap router
      mengetahui pemahaman menyeluruh tentang topologi jaringan.
      Router mengirimkan informasi status link ke semua router lainnya di
      jaringan. Dengan demikian, setiap router membangun peta lengkap
      jaringan dan menghitung jalur terbaik menggunakan algoritma
      Shortest Path First (SPF), biasanya berbasis algoritma Dijkstra.
      Protokol utama yang menggunakan metode ini adalah OSPF.

2.  <h5>
    EGP (Exterior Gateway Protocol)
    </h5>

    EGP adalah protokol routing yang
    digunakan untuk menghubungkan sistem otonom, yaitu jaringan yang
    dikelola oleh entitas yang berbeda. EGP biasanya digunakan oleh perusahaan
    untuk berkomunikasi dengan Internet atau antar jaringan yang dikelola oleh
    penyedia layanan berbeda. Salah satu contoh utama dari EGP adalah BGP.

    - Path vector routing adalah metode yang dipakai oleh Border Gateway
      Protocol (BGP). Di path vector routing, setiap rute membawa informasi
      tentang jalur lengkap yang dilalui paket untuk mencapai tujuan. Ini
      memungkinkan sistem untuk membuat keputusan routing berdasarkan
      kebijakan dan bukan hanya jarak atau biaya. BGP digunakan untuk routing
      antar sistem otonom di Internet, dan mengelola jalur-jalur antar jaringan
      global.

### Static Routing

Static routing adalah metode pengalihan paket data di jaringan komputer yang
menggunakan tabel rute yang diset secara manual oleh administrator jaringan.
Berbeda dengan routing dinamis yang menggunakan protokol routing untuk
berkomunikasi dengan router lain dan memperbarui tabel rute secara otomatis, static
routing memerintahkan router untuk mengarahkan lalu lintas jaringan berdasarkan
informasi yang telah ditetapkan sebelumnya.
