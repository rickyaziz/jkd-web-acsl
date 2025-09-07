---
weight: 12
title: 'Subnetting'
description: 'Menghitung subnneting CIDR dan VLSM'
icon: 'account_tree'
date: '2025-09-07T19:22:58+07:00'
lastmod: '2025-09-07T19:22:58+07:00'
toc: true
---

Subnetting merupakan prosedur untuk membagi jaringan besar menjadi
beberapa subnetwork yang lebih kecil, yang disebut sebagai subnet. Subnetting
merupakan aspek penting dalam desain jaringan yang baik, karena memungkinkan
pengoptimalan penggunaan alamat IP dengan meminimalkan alamat yang tidak
terpakai atau terbuang. Selain itu, subnetting juga mempermudah pengelolaan dan
meningkatkan kinerja jaringan.

Dalam melakukan perhitungan subnetting, terdapat dua metode utama yang
dapat digunakan, yaitu Classless Inter-Domain Routing (CIDR) dan Variable Length
Subnet Mask (VLSM). CIDR memungkinkan alokasi alamat IP yang lebih fleksibel tanpa
terikat pada kelas IP tertentu, sedangkan VLSM memungkinkan penggunaan subnet
mask dengan panjang yang bervariasi dalam satu jaringan. Pemahaman tentang
konsep dan definisi subnetting sangat penting sebelum melakukan perhitungan
dengan kedua metode ini. Untuk lebih mendalam, pembahasan mengenai CIDR dan
VLSM dapat ditemukan dalam Modul Panduan Jaringan Komputer Dasar.

## Classless Inter-Domain Routing (CIDR)

CIDR (Classless Inter-Domain Routing) merupakan metode alternatif untuk
Mengelompokkan alamat-alamat IP yang berlawanan dengan sistem
pengkelompokan tradisional yang membagi alamat IP didalam kelas A, B, C, D, dan E.
Diperkenalkan pertama kali pada tahun 1992 oleh Internet Engineering Task Force
(IETF), CIDR sering disebut juga sebagai supernetting. CIDR juga dikenal sebagai
supernetting. CIDR menyediakan mekanisme routing yang lebih efisien dibandingkan
dengan metode klasifikasi IP berbasis kelas yang lama.

CIDR memakai penulisan prefix dengan panjang spesifik untuk menentukan
Network ID, yang menunjukkan jumlah bit di sisi kiri yang digunakan untuk
mengidentifikasi jaringan. Notasi ini memungkinkan pengalokasian alamat IP yang
lebih fleksibel dan bisa digunakan untuk berbagai kelas alamat IP, sehingga
mempermudah pengelolaan jaringan dan meningkatkan efisiensinya. Berikut adalah
penerapan notasi CIDR pada alamat classful:

- Kelas A mencakup rentang /8 hingga /15
- Kelas B mencakup rentang /16 hingga /23
- Kelas C mencakup rentang /24 hingga /28

### Perhitungan Subnetting CIDR

{{% alert context="info" %}}
**CATATAN**

- N (Besar) adalah banyaknya jumlah Binari/Bit 1 pada oktet yang memiliki nilai 1 dan 0.
- n (Kecil) adalah banyaknya jumlah Binari/Bit 0 pada semua oktet yang memiliki nilai 0.

{{% /alert %}}

1. Menghitung Jumlah Subnet
   {{< alert icon=" " context="info" text="<strong>2^N = Jumlah Subnet</strong>"/>}}

2. Menghitung Jumlah Host Per-Subnet
   {{< alert icon=" " context="info" text="<strong>2^n - 2 = Jumlah Host Per Subnet</strong>"/>}}

3. Menghitung Nilai Blok Subnet
   {{< alert icon=" " context="info" text="<strong>2^n = Blok Subnet</strong>"/>}}

   - Nilai oktet terakhir dari subnet mask adalah angka yang terletak pada bagian
     akhir subnet mask, contohnya:
     - Subnet mask 255.128.0.0 memiliki nilai oktet terakhir 128
     - Subnet mask 255.255.192.0 memiliki nilai oktet terakhir 192
     - Subnet mask 255.255.255.252 memiliki nilai oktet terakhir 252

4. Menghitung Alamat Broadcast
   {{< alert icon=" " context="info" text="<strong>Ip Address Paling Akhir = Alamat Broadcast</strong>"/>}}
   - Merupakan alamat IP yang berada di ujung akhir dalam suatu jaringan. Alamat
     broadcast ini tidak boleh memiliki kesamaan dengan alamat subnet pada blok
     berikutnya atau dengan alamat host terakhir pada blok subnet tersebut.

Sesudah memahami metode perhitungan subnetting CIDR, langkah
berikutnya adalah menerapkan perhitungan subnetting pada setiap kelas IP
menggunakan CIDR.

<h3>Subnetting CIDR kelas C</h3>

Alamat IP kelas C memiliki subnet mask default 255.255.255.0 atau prefix /24.
Nilai CIDR untuk kelas C dapat dilihat pada Tabel 1.2 di bawah ini.

{{< table "table-striped" >}}
| Subnet Mask | CIDR | Jumlah IP | Host Bisa Dipakai |
|-----------------|------|-----------|-------------------|
| 255.255.255.0 | /24 | 256 | 254 |
| 255.255.255.128 | /25 | 128 | 126 |
| 255.255.255.192 | /26 | 64 | 62 |
| 255.255.255.224 | /27 | 32 | 30 |
| 255.255.255.240 | /28 | 16 | 14 |
| 255.255.255.248 | /29 | 8 | 6 |
| 255.255.255.252 | /30 | 4 | 2 |
| 255.255.255.254 | /31 | 2 | 0 (Point-to-Point)|
| 255.255.255.255 | /32 | 1 | 0 (Host tunggal) |
{{< /table >}}

{{% alert context="info" %}}
**Contoh Soal**

Diberikan Network address 192.168.2.0/27, tetukanlah

a. Jumlah Subnet

b. Jumlah Host Per-Subnet

C. Nilai Blok Subnet

d. Alamat Broadcast & Subnet Map

{{% /alert %}}

**Langkah - Langkah Penyelesaian**

Dari soal diatas Network address dari 192.168.2.0 adalah ip address kelas C
dengan Subnet Mask /27. Yang artinya memiliki Subnet Mask

{{< table "table-striped" >}}
| 1111 1111 | 1111 1111 | 1111 1111 | 1100 0000 |
|-----------------|------| ----- | ------ |
| Oktet 1 | Oktet 2 | Oktet 3 | Oktet 4 |
{{< /table >}}

1. Menghitung Jumlah Subnet
   {{< alert icon=" " context="info" text="<strong>2^N = Jumlah Subnet -> 2^3 = 8 Subnet</strong>"/>}}

2. Menghitung Jumlah Host Per-Subnet
   {{< alert icon=" " context="info" text="<strong>2^n - 2 = Jumlah Host Per-Subnet -> (2^5) - 2 = 30 Host Per-Subnet</strong>"/>}}

3. Menghitung Nilai Blok Subnet
   {{< alert icon=" " context="info" text="<strong>2^n = Blok Subnet -> 2^5 = 32 Blok Subnet</strong>"/>}}
   Jadi, total subnetnya adalah 0, 32, 64, 96, 128, 160, 192, 224

4. Alamat Broadcast & Subnet Map
   {{< table "table-striped" >}}
   | Blok Subnet | Subnet | Range Host | Broadcast |
   |-------------|---------------|----------------------|----------------|
   | 1 | 192.168.2.0 | 192.168.2.1 - 192.168.2.30 | 192.168.2.31 |
   | 2 | 192.168.2.32 | 192.168.2.33 - 192.168.2.62 | 192.168.2.63 |
   | 3 | 192.168.2.64 | 192.168.2.65 - 192.168.2.94 | 192.168.2.95 |
   | 4 | 192.168.2.96 | 192.168.2.97 - 192.168.2.126| 192.168.2.127 |
   | 5 | 192.168.2.128 | 192.168.2.129 - 192.168.2.158| 192.168.2.159 |
   | 6 | 192.168.2.160 | 192.168.2.161 - 192.168.2.190| 192.168.2.191 |
   | 7 | 192.168.2.192 | 192.168.2.193 - 192.168.2.222| 192.168.2.223 |
   | 8 | 192.168.2.224 | 192.168.2.225 - 192.168.2.254| 192.168.2.255 |
   {{< /table >}}

<h3>Subnetting CIDR kelas B</h3>
Alamat IP kelas B memiliki subnet mask default 255.255.0.0 atau prefix /16.
Nilai CIDR untuk kelas B dapat ditemukan pada tabel 1.4 di bawah ini.

{{< table "table-striped" >}}
| Subnet Mask | CIDR | Jumlah IP | Host Bisa Dipakai |
|-------------------|------|-----------|-------------------|
| 255.255.0.0 | /16 | 65,536 | 65,534 |
| 255.255.128.0 | /17 | 32,768 | 32,766 |
| 255.255.192.0 | /18 | 16,384 | 16,382 |
| 255.255.224.0 | /19 | 8,192 | 8,190 |
| 255.255.240.0 | /20 | 4,096 | 4,094 |
| 255.255.248.0 | /21 | 2,048 | 2,046 |
| 255.255.252.0 | /22 | 1,024 | 1,022 |
| 255.255.254.0 | /23 | 512 | 510 |
{{< /table >}}

{{% alert context="info" %}}
**Contoh Soal**

Diberikan Network address 172.25.0.0 /19, tetukanlah

a. Jumlah Subnet

b. Jumlah Host Per-Subnet

C. Nilai Blok Subnet

d. Alamat Broadcast & Subnet Map

{{% /alert %}}

**Langkah - Langkah Penyelesaian**

Dari soal diatas Network address dari 172.25.0.0 adalah ip address kelas B
dengan Subnet Mask /19. Yang artinya memiliki Subnet Mask

{{< table "table-striped" >}}
| 1111 1111 | 1111 1111 | 1110 0000 | 0000 0000 |
|-----------------|------| ----- | ------ |
| Oktet 1 | Oktet 2 | Oktet 3 | Oktet 4 |
{{< /table >}}

1. Menghitung Jumlah Subnet
   {{< alert icon=" " context="info" text="<strong>2^N = Jumlah Subnet -> 2^3 = 8 Subnet</strong>"/>}}

2. Menghitung Jumlah Host Per-Subnet
   {{< alert icon=" " context="info" text="<strong>2^n - 2 = Jumlah Host Per-Subnet -> (2^13) - 2 = 8192 - 2 = 8190 Host Per-Subnet</strong>"/>}}

3. Menghitung Nilai Blok Subnet
   {{< alert icon=" " context="info" text="<strong>2^n = Blok Subnet -> 2^5 = 32 Blok Subnet</strong>"/>}}
   Jadi, total subnetnya adalah 0, 32, 64, 96, 128, 160, 192, 224

4. Alamat Broadcast & Subnet Map
   {{< table "table-striped" >}}
   | Blok Subnet | Subnet | Range Host | Broadcast |
   |-------------|----------------|--------------------------|-----------------|
   | 1 | 172.25.0.0 | 172.25.0.1 - 172.25.31.254 | 172.25.31.255 |
   | 2 | 172.25.32.0 | 172.25.32.1 - 172.25.63.254| 172.25.63.255 |
   | 3 | 172.25.64.0 | 172.25.64.1 - 172.25.95.254| 172.25.95.255 |
   | 4 | 172.25.96.0 | 172.25.96.1 - 172.25.127.254| 172.25.127.255 |
   | 5 | 172.25.128.0 | 172.25.128.1 - 172.25.159.254| 172.25.159.255 |
   | 6 | 172.25.160.0 | 172.25.160.1 - 172.25.191.254| 172.25.191.255 |
   | 7 | 172.25.192.0 | 172.25.192.1 - 172.25.223.254| 172.25.223.255 |
   | 8 | 172.25.224.0 | 172.25.224.1 - 172.25.255.254| 172.25.255.255 |
   {{< /table >}}

## Variable Length Subnet Mask (VLSM)

Variable Length Subnet Mask (VLSM) adalah metode dalam subnetting yang
memungkinkan penggunaan subnet mask dengan panjang yang bervariasi dalam satu
alamat jaringan, sehingga sebuah jaringan dapat dibagi menjadi beberapa subnet
dengan ukuran yang berbeda sesuai kebutuhan. Dengan VLSM, administrator
jaringan dapat mengalokasikan alamat IP secara lebih efisien dan fleksibel,
meminimalkan pemborosan alamat IP, dan memungkinkan pembuatan subnet yang
lebih kecil dalam satu jaringan. Contohnya, sebuah network address bisa
menggunakan subnet mask yang lebih besar (/24) untuk jaringan dengan banyak
host, dan subnet mask yang lebih kecil (/28) untuk jaringan dengan sedikit host.

VLSM (Variable Length Subnet Mask) diperkenalkan pada akhir tahun 1980an
dan awal tahun 1990an sebagai solusi untuk mengatasi keterbatasan dari metode
subnetting konvensional, yang hanya mengizinkan satu subnet mask per network
address. Teknologi ini menjadi penting dalam pengembangan jaringan karena
mendukung desain jaringan yang lebih kompleks dan efisien. VLSM juga
memungkinkan desain jaringan hierarkis, di mana beberapa subnet dapat
digabungkan menjadi satu rute agregasi, sehingga mengurangi jumlah entri dalam
tabel routing dan menyederhanakan pengelolaan jaringan.

### Perhitungan Subnetting VLSM

VLSM (Variable Length Subnet Mask) menggunakan pendekatan yang berbeda
dengan memberikan lebih dari satu subnet mask pada satu network address.
Network address yang menggunakan berbagai subnet mask ini disebut sebagai VLSM.
Berikut adalah contoh yang lebih jelas untuk menggambarkan konsep ini.

{{% alert context="info" %}}
**Contoh Soal**

1. Diketahui network address 192.168.9.0, yang memiliki beberapa subnet
   dengan kebutuhan jumlah host yang berbeda-beda. Jumlah host untuk
   masing-masing subnet adalah sebagai berikut:
   - Net A memiliki 28 Host
   - Net B memiliki 60 Host
   - Net C memiliki 20 Host
   - Net D memiliki 20 Host
   - Net E memiliki 2 Host

{{% /alert %}}

**Langkah - Langkah Penyelesaian**

Dari soal diatas Network address dari 192.168.9.0, yang memiliki beberapa subnet.

1. Menentukan urutan jaringan berdasarkan jumlah host, yang terbesar hingga yang terkecil:

   - Net B = 60 Host
   - Net A = 28 Host
   - Net C = 20 Host
   - Net D = 20 Host
   - Net E = 2 Host

2. Menetapkan rentang host sesuai jumlah kebutuhan host.

   - Net B membutuhkan 60 host : 2^n − 2 ≥ 60 host → 2^6 – 2 = 62 host (n = 6)
   - Net A membutuhkan 28 host : 2^n − 2 ≥ 28 host → 2^5 – 2 = 30 host (n = 5)
   - Net C membutuhkan 20 host : 2^n − 2 ≥ 29 host → 2^5 – 2 = 30 host (n = 5)
   - Net D membutuhkan 20 host : 2^n − 2 ≥ 20 host → 2^5 – 2 = 30 host (n = 5)
   - Net E membutuhkan 2 host : 2^n − 2 ≥ 2 host → 2^2 – 2 = 2 host (n = 2)

   {{< alert icon=" " context="info" text="<strong>Keterangan : 2^n - 2 ≥ kebutuhan host berarti jumlah alamat yang dihitung harus cukup untuk memenuhi kebutuhan host yang diinginkan, tetapi tidak boleh terlalu besar sehingga membuang alamat IP yang tidak diperlukan.</strong>"/>}}

3. Menetapkan Bit Network

   - Net B = 60 host : 32 - n → 32-6 = /26
   - Net A = 28 host : 32 - n → 32-5 = /27
   - Net C = 20 host : 32 - n → 32-5 = /27
   - Net D = 20 host : 32 - n → 32-5 = /27
   - Net E = 2 host : 32 - n → 32-2 = /30

   {{< alert icon=" " context="info" text="<strong>Keterangan : Angka 32 merupakan jumlah bit dari IPv4 address. Dan ( n ) adalah nilai untuk mencari jumlah host.</strong>"/>}}

4. Menetapkan Blok Subnet

   - Net B = 60 host : 2^n → 2^6 = 64
   - Net A = 28 host : 2^n → 2^5 = 32
   - Net C = 20 host : 2^n → 2^5 = 32
   - Net D = 20 host : 2^n → 2^5 = 32
   - Net E = 2 host : 2^n → 2^2 = 4

   {{< alert icon=" " context="info" text="<strong>Keterangan : Untuk mencari hitung (n) kecil adalah banyaknya jumlah Binari/Bit 0 pada semua oktet yang memiliki nilai 0 </strong>"/>}}

5. Subnet Map
   {{< table "table-striped" >}}
   | Blok Subnet | Subnet | Range Host | Broadcast |
   |-------------|------------------|-----------------------------|------------------|
   | 1 (60 host) | 192.168.9.0/26 | 192.168.9.1 - 192.168.9.62 | 192.168.9.63 |
   | 2 (28 host) | 192.168.9.64/27 | 192.168.9.65 - 192.168.9.94 | 192.168.9.95 |
   | 3 (20 host) | 192.168.9.96/27 | 192.168.9.97 - 192.168.9.126 | 192.168.9.127 |
   | 4 (20 host) | 192.168.9.128/27 | 192.168.9.129 - 192.168.9.158| 192.168.9.159 |
   | 5 (2 host) | 192.168.9.160/30 | 192.168.9.161 - 192.168.9.162| 192.168.9.163 |
   {{< /table >}}

{{% alert context="info" %}}
**Contoh Soal**

2. Diketahui network address 25.11.15.0/18, yang memiliki beberapa subnet dengan kebutuhan jumlah host yang berbeda-beda. Jumlah host untuk masing-masing subnet adalah sebagai berikut:
   - Net F membutuhkan 225 host
   - Net G membutuhkan 150 host
   - Net H membutuhkan 180 host
   - Net I membutuhkan 30 host
   - Net J membutuhkan 90 host

{{% /alert %}}

**Langkah - Langkah Penyelesaian**

Dari soal diatas Network address dari 25.11.15.0 /18, yang memiliki beberapa subnet.

1. Menentukan urutan jaringan berdasarkan jumlah host, yang terbesar hingga yang terkecil:

   - Net F = 225 Host
   - Net H = 180 Host
   - Net G = 150 Host
   - Net J = 90 Host
   - Net I = 30 Host

2. Menetapkan rentang host sesuai jumlah kebutuhan host.

   - Net F membutuhkan 225 host : 2^n − 2 ≥ 225 host → 2^8 – 2 = 254 host (n = 8)
   - Net H membutuhkan 180 host : 2^n − 2 ≥ 180 host → 2^8 – 2 = 254 host (n = 8)
   - Net G membutuhkan 150 host : 2^n − 2 ≥ 150 host → 2^8 – 2 = 254 host (n = 8)
   - Net J membutuhkan 90 host : 2^n − 2 ≥ 90 host → 2^7 – 2 = 126 host (n = 7)
   - Net I membutuhkan 30 host : 2^n − 2 ≥ 30 host → 2^5 – 2 = 30 host (n = 5)

   {{< alert icon=" " context="info" text="<strong>Keterangan : 2^n - 2 ≥ kebutuhan host berarti jumlah alamat yang dihitung harus cukup untuk memenuhi kebutuhan host yang diinginkan, tetapi tidak boleh terlalu besar sehingga membuang alamat IP yang tidak diperlukan.</strong>"/>}}

3. Menetapkan Bit Network

   - Net F = 225 host : 32 - n → 32-8 = /24
   - Net H = 180 host : 32 - n → 32-8 = /24
   - Net G = 150 host : 32 - n → 32-8 = /24
   - Net J = 90 host : 32 - n → 32-7 = /25
   - Net I = 30 host : 32 - n → 32-5 = /27

   {{< alert icon=" " context="info" text="<strong>Keterangan : Angka 32 merupakan jumlah bit dari IPv4 address. Dan ( n ) adalah nilai untuk mencari jumlah host.</strong>"/>}}

4. Menetapkan Blok Subnet

   - Net F = 225 host : 2^n → 2^8 = 256
   - Net H = 180 host : 2^n → 2^8 = 256
   - Net G = 150 host : 2^n → 2^8 = 256
   - Net J = 90 host : 2^n → 2^7 = 128
   - Net I = 30 host : 2^n → 2^5 = 32

   {{< alert icon=" " context="info" text="<strong>Keterangan : Untuk mencari hitung (n) kecil adalah banyaknya jumlah Binari/Bit 0 pada semua oktet yang memiliki nilai 0 </strong>"/>}}

5. Subnet Map
   {{< table "table-striped" >}}
   | Blok Subnet | Subnet | Range Host | Broadcast |
   |-------------|------------------|-----------------------------|------------------|
   | 1 (225 host) | 25.11.0.0/24 | 25.11.0.1 - 25.11.0.254 | 25.11.0.255 |
   | 2 (180 host) | 25.11.1.0/24 | 25.11.1.1 - 25.11.1.254 | 25.11.1.255 |
   | 3 (150 host) | 25.11.2.0/24 | 25.11.2.1 - 25.11.2.254 | 25.11.2.255 |
   | 4 (90 host) | 25.11.3.0/25 | 25.11.3.1 - 25.11.3.126 | 25.11.3.127 |
   | 5 (30 host) | 25.11.3.128/27 | 25.11.3.129 - 25.11.3.158| 25.11.3.159 |
   {{< /table >}}

## Tugas

<div class="alert alert-success" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakanlah soal latihan berikut ini:</strong></p>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">1</div>
<p class="mb-2"><strong>Soal 1:</strong></p>
<p>Diberikan network address <code>192.168.20.0/24</code>, tentukan:</p>
<ul>
<li>Berapa Jumlah Subnet</li>
<li>Berapa Jumlah Host Per-Subnet</li>
<li>Nilai dari Blok Subnet</li>
<li>Alamat Broadcast & Subnet Map</li>
</ul>
</div>

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">2</div>
<p class="mb-2"><strong>Soal 2:</strong></p>
<p>Diberikan network address <code>172.16.0.0/18</code>, tentukan:</p>
<ul>
<li>IP kelas apakah dan berapa jumlah subnetnya?</li>
<li>Berapa jumlah host per subnet?</li>
<li>Apa saja blok-blok subnetnya?</li>
<li>Host pertama, Host terakhir, Network address, Alamat broadcast</li>
</ul>
</div>
</div>

<div class="row mt-3">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">3</div>
<p class="mb-2"><strong>Soal 3:</strong></p>
<p>Perusahaan layanan keuangan dengan network address <code>192.188.128.0/25</code> terbagi menjadi 5 departemen:</p>
<ul>
<li>Departemen Keuangan: 160 host</li>
<li>Departemen Operasional: 120 host</li>
<li>Departemen Teknologi: 140 host</li>
<li>Departemen SDM: 75 host</li>
<li>Departemen Penjualan: 5 host</li>
</ul>
<p><small>Buatlah subnetting menggunakan metode VLSM</small></p>
</div>

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">4</div>
<p class="mb-2"><strong>Soal 4:</strong></p>
<p>Perusahaan dengan network address <code>30.12.20.0/23</code> perlu dibagi menggunakan VLSM dengan kebutuhan:</p>
<ul>
<li>Net X: 200 host</li>
<li>Net Y: 100 host</li>
<li>Net Z: 150 host</li>
<li>Net W: 60 host</li>
</ul>
<p><small>Susun subnet map lengkap dengan range host dan broadcast address</small></p>
</div>
</div>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Gunakan metode CIDR untuk soal 1-2, dan metode VLSM untuk soal 3-4. Urutkan subnet berdasarkan kebutuhan host terbesar untuk VLSM.</small>
</div>
</div>
