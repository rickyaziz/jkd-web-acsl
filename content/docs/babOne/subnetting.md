---
weight: 12
title: "Subnetting"
description: "Menghitung subnneting CIDR dan VLSM"
icon: "account_tree"
date: "2025-09-07T19:22:58+07:00"
lastmod: "2025-09-07T19:22:58+07:00"
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

- <p>
  N (Besar) adalah banyaknya jumlah Binary/Bit 1 pada oktet yang memiliki nilai 1 dan 0.\
  </p>

- <p>
  n (Kecil) adalah banyaknya jumlah Binary/Bit 0 pada setiap oktet yang bernilai 0.
  </p>

{{% /alert %}}

1. Menghitung Jumlah Subnet
   {{< alert icon=" " context="info" text="<strong>2^N = Jumlah Subnet</strong>"/>}}

2. Menghitung Jumlah Host Per-Subnet
   {{< alert icon=" " context="info" text="<strong>2^n - 2 = Jumlah Host Per Subnet</strong>"/>}}

3. Menghitung Nilai Blok Subnet
   {{< alert icon=" " context="info" text="<strong>256 – Pada Oktet  Paling Kanan Yang Memiliki Nilai 1 = Blok Subnet</strong>"/>}}

   Nilai oktet terakhir dari subnet mask adalah angka yang terletak pada bagian
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

### 1. Subnetting CIDR kelas C

Alamat IP kelas C memiliki subnet mask default 255.255.255.0 atau prefix /24.
Nilai CIDR untuk kelas C dapat dilihat pada tabel di bawah ini.

<strong>Heksadesimal ke Biner :</strong> Angka 4C(Heksadesimal) akan diubah ke Biner.

   <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;">Subnet Mask</th>
             <th style="border: none; padding: 6px;">Nilai CIDR</th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">255.255.255.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/24</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.255.255.128</td>
             <td style="border: none; padding: 6px; width: 50%;">/25</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.255.255.192</td>
             <td style="border: none; padding: 6px; width: 50%;">/26</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.255.255.224</td>
             <td style="border: none; padding: 6px; width: 50%;">/27</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.255.255.240</td>
             <td style="border: none; padding: 6px; width: 50%;">/28</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.255.255.248</td>
             <td style="border: none; padding: 6px; width: 50%;">/29</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.255.255.252</td>
             <td style="border: none; padding: 6px; width: 50%;">/30</td>
           </tr>
  </table>

<span></span>

{{% alert context="info" %}}
**Contoh Soal**

- <p>
    Diberikan Network address 192.168.2.0/27, tentukanlah:

  a. Jumlah Subnet

  b. Jumlah Host Per-Subnet

  C. Nilai Blok Subnet

  d. Alamat Broadcast & Subnet Map
  </p>
  {{% /alert %}}

**Langkah - Langkah Penyelesaian**

Untuk menjawab soal tersebut, langkah awal yang perlu dilakukan adalah
melakukan analisis atau pemeriksaan secara mendalam.

Dari soal diatas Network address dari 192.168.2.0 adalah ip address kelas C
dengan Subnet Mask /27. Yang artinya memiliki Subnet Mask
255.255.225.224 (11111111.11111111.1111111.11100000).

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11100000</strong></th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">Oktet 1</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 2</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 3</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 4</td>
           </tr>
</table>

<span></span>

- <strong>Menghitung Jumlah Subnet</strong>
  {{% alert icon=" " context="info" %}}
    <p style="text-align: center;">2^N = <strong>Jumlah Subnet</strong> → 2^3 = <strong>8 Subnet</strong></p>
    
    {{% /alert %}}
    <strong>N (Besar)</strong> merujuk pada jumlah bit 1 dalam oktet yang memiliki nilai kurang 
  dari 255. Berdasarkan pembahasan subnet mask /27, dapat disimpulkan bahwa bit 1 
  berada hingga <strong>oktet ke-4</strong>, yang menunjukkan bahwa jumlah bit 1 pada oktet 
  terakhir subnet mask adalah <strong>3 bit</strong>. Oleh karena itu, <strong>N = 3</strong>.

<span></span>

- <strong>Menghitung Jumlah Host Per-Subnet</strong>
{{% alert icon=" " context="info" %}}
  <p style="text-align: center;">2^n - 2 = <strong>Jumlah Host Per Subnet</strong> → 2^5 - 2 = 32 - 2 = <strong>30 Host</strong></p>
  
  {{% /alert %}}
  <strong>n (Kecil)</strong>  merujuk pada jumlah <strong>bit 0</strong> yang terdapat di semua oktet. Berdasarkan 
  penjabaran subnet mask /27, dapat dilihat bahwa bit 0 pada oktet terakhir 
  berjumlah 5. Oleh karena itu, <strong>n = 5</strong>.

<span></span>

- <strong>Menghitung Nilai Blok Subnet</strong>
{{% alert icon=" " context="info" %}}
   <p style="text-align: center;"><strong>256</strong> – <strong>Pada Oktet  Paling Kanan Yang Memiliki Nilai 1</strong> = <strong>Blok Subnet</strong></p>
   
   {{% /alert %}}
   Nilai oktet terakhir dari subnet mask merujuk pada angka yang terletak pada 
bagian akhir dari subnet mask tersebut.

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11100000</strong></th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">255</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">255</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">255</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">224</td>
           </tr>
</table>

<span></span>

Nilai oktet terakhir subnet mask adalah 224, yang berarti nilai blok subnet
dapat dihitung sebagai berikut:

{{% alert icon=" " context="info" %}}

<p style="text-align: center;"><strong>256</strong> – <strong>224</strong> = <strong>32 Blok Subnet</strong></p>
{{% /alert %}}

Dengan demikian, total subnet yang diperoleh adalah<strong> 0, 32, 64, 96, 128, 160,
192, dan 224. </strong>

- <strong>Alamat Broadcast & Subnet Map</strong>

<span></span>

  <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;  width: 10%;">
      <th style="border: none; padding: 6px;  width: 10%;">Blok Subnet</th>
      <th style="border: none; padding: 6px;  width: 20%;">Subnet / Network</th> 
       <th style="border: none; padding: 6px;  width: 52%;">Range Host</th>
       <th style="border: none; padding: 6px;  width: 18%;">Broadcast</th>
   </tr>
   <tr style="border: 1px solid #ffffff21;">
       <td style="border: none; padding: 6px;">1</td>
       <td style="border: none; padding: 6px; ">192.168.2.0/27</td>
       <td style="border: none; padding: 6px;">192.168.2.1 - 192.168.2.30</td>
       <td style="border: none; padding: 6px; ">192.168.2.31 (31 = 32 - 1)</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">2</td>
       <td style="border: none; padding: 6px; ">192.168.2.32/27 (32 = 0 + 32)</td>
       <td style="border: none; padding: 6px;">192.168.2.33 - 192.168.2.62</td>
       <td style="border: none; padding: 6px; ">192.168.2.63 (63 = 64 - 1)</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">3</td>
       <td style="border: none; padding: 6px; \">192.168.2.64/27 (64 = 32 + 32)</td>
       <td style="border: none; padding: 6px;">192.168.2.65 - 192.168.2.94</td>
       <td style="border: none; padding: 6px; ">192.168.2.95 (95 = 96 - 1)</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">4</td>
       <td style="border: none; padding: 6px; ">192.168.2.96/27 (96 = 64 + 32)</td>
       <td style="border: none; padding: 6px;">192.168.2.97 - 192.168.2.126</td>
       <td style="border: none; padding: 6px; ">192.168.2.127 (127 = 128 - 1)</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">5</td>
       <td style="border: none; padding: 6px; ">192.168.2.128/27 (128 = 96 + 32)</td>
       <td style="border: none; padding: 6px;">192.168.2.129 - 192.168.2.158</td>
       <td style="border: none; padding: 6px; ">192.168.2.159 (129 = 160 - 1)</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">6</td>
       <td style="border: none; padding: 6px; ">192.168.2.160/27 (160 = 128 + 32)</td>
       <td style="border: none; padding: 6px;">192.168.2.161 - 192.168.2.190</td>
       <td style="border: none; padding: 6px; ">192.168.2.191 (191 = 192 - 1)</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">7</td>
       <td style="border: none; padding: 6px;">192.168.2.192/27 (192 = 160 + 32)</td>
       <td style="border: none; padding: 6px;">192.168.2.193 - 192.168.2.222</td>
       <td style="border: none; padding: 6px; ">192.168.2.223 (223 = 224 - 1)</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">8</td>
       <td style="border: none; padding: 6px;">192.168.2.224/27 (224 = 192 + 32)</td>
       <td style="border: none; padding: 6px;">192.168.2.225 - 192.168.2.254</td>
       <td style="border: none; padding: 6px; ">192.168.2.255 (255 = 256 - 1)</td>
   </tr>
   </table>

<span></span>

### 2. Subnetting CIDR kelas B

Alamat IP kelas B memiliki subnet mask default 255.255.0.0 atau prefix /16.
Nilai CIDR untuk kelas B dapat ditemukan pada tabel di bawah ini.

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;">Subnet Mask</th>
             <th style="border: none; padding: 6px;">Nilai CIDR</th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">255.255.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/16</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.255.128.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/17</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.255.192.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/18</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.255.224.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/19</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.255.240.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/20</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.255.248.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/21</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.255.252.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/22</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.255.254.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/23</td>
           </tr>
</table>

<span></span>

{{% alert context="info" %}}
**Contoh Soal**

- <p>
    Diberikan Network address 172.25.0.0/19, tentukanlah:

  a. Jumlah Subnet

  b. Jumlah Host Per-Subnet

  C. Nilai Blok Subnet

  d. Alamat Broadcast & Subnet Map
  </p>
  {{% /alert %}}

**Langkah - Langkah Penyelesaian**

Untuk menjawab soal tersebut, langkah awal yang perlu dilakukan adalah
melakukan analisis atau pemeriksaan secara mendalam.

Dari soal diatas Network address dari 172.25.0.0 adalah ip address kelas B dengan Subnet Mask /19. Yang artinya memiliki Subnet Mask 255.255.224.0 (11111111.11111111.11100000.00000000).

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11100000</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>00000000</strong></th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">Oktet 1</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 2</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 3</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 4</td>
           </tr>
</table>

<span></span>

- <strong>Menghitung Jumlah Subnet</strong>
  {{% alert icon=" " context="info" %}}
    <p style="text-align: center;">2^N = <strong>Jumlah Subnet</strong> -> 2^3 = <strong>8 Subnet</strong></p>
    {{% /alert %}}

  <strong>N (Besar)</strong> merujuk pada jumlah bit 1 dalam oktet yang memiliki nilai kurang
  dari 255. Berdasarkan pembahasan subnet mask /19, <strong>bit 1</strong>terletak hingga <strong>oktet ke-3</strong>, yang berarti oktet terakhir subnet mask terdapat <strong>3 bit bernilai 1</strong>. Oleh karena itu, <strong>N = 3</strong>.

- <strong>Menghitung Jumlah Host Per-Subnet</strong>
  {{% alert icon=" " context="info" %}}
  <p style="text-align: center;">2^n - 2 = <strong>Jumlah Host Per Subnet</strong> → 2^13 - 2 = 8192 - 2 = <strong>8190 Host</strong></p>

  {{% /alert %}}

  <strong>n (Kecil)</strong> merujuk pada jumlah <strong>bit 0</strong> yang terdapat di semua oktet. Berdasarkan
  penjabaran subnet mask /19, dapat dilihat bahwa bit 0 pada oktet terakhir
  berjumlah 13. Oleh karena itu, <strong>n = 13</strong>.

- <strong>Menghitung Nilai Blok Subnet</strong>
{{% alert icon=" " context="info" %}}
   <p style="text-align: center;"><strong>256</strong> – <strong>Pada Oktet  Paling Kanan Yang Memiliki Nilai 1</strong> = <strong>Blok Subnet</strong></p>
   
   {{% /alert %}}
   Nilai oktet terakhir dari subnet mask merujuk pada angka yang terletak pada 
bagian akhir dari subnet mask tersebut.

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11100000</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>00000000</strong></th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">255</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">255</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">224</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">0</td>
           </tr>
</table>

<span></span>

Nilai oktet terakhir dari subnet mask tersebut adalah 224, sehingga nilai Blok Subnet
menjadi:

{{% alert icon=" " context="info" %}}

<p style="text-align: center;"><strong>256</strong> – <strong>224</strong> = <strong>32 Blok Subnet</strong></p>
{{% /alert %}}

Dengan demikian, total subnet yang diperoleh adalah<strong> 0, 32, 64, 96, 128, 160,
192, dan 224. </strong>

- <strong>Alamat Broadcast & Subnet Map</strong>

<span></span>

  <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;  width: 10%;">
      <th style="border: none; padding: 6px;  width: 10%;">Blok Subnet</th>
      <th style="border: none; padding: 6px;  width: 20%;">Subnet / Network</th> 
       <th style="border: none; padding: 6px;  width: 52%;">Range Host</th>
       <th style="border: none; padding: 6px;  width: 18%;">Broadcast</th>
   </tr>
   <tr style="border: 1px solid #ffffff21;">
       <td style="border: none; padding: 6px;">1</td>
       <td style="border: none; padding: 6px; ">172.25.0.0/19</td>
       <td style="border: none; padding: 6px;">172.25.0.1 – 172.25.31.254</td>
       <td style="border: none; padding: 6px; ">172.25.31.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">2</td>
       <td style="border: none; padding: 6px; ">172.25.32.0/19</td>
       <td style="border: none; padding: 6px;">172.25.32.1 – 172.25.63.254</td>
       <td style="border: none; padding: 6px; ">172.25.63.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">3</td>
       <td style="border: none; padding: 6px; \">172.25.64.0/19</td>
       <td style="border: none; padding: 6px;">172.25.64.1 – 172.25.95.254</td>
       <td style="border: none; padding: 6px; ">172.25.95.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">4</td>
       <td style="border: none; padding: 6px; ">172.25.96.0/19</td>
       <td style="border: none; padding: 6px;">172.25.96.1 – 172.25.127.254</td>
       <td style="border: none; padding: 6px; ">172.25.127.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">5</td>
       <td style="border: none; padding: 6px; ">172.25.128.0/19</td>
       <td style="border: none; padding: 6px;">172.25.128.1 – 172.25.159.254</td>
       <td style="border: none; padding: 6px; ">172.25.159.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">6</td>
       <td style="border: none; padding: 6px; ">172.25.160.0/19</td>
       <td style="border: none; padding: 6px;">172.25.160.1 – 172.25.191.254</td>
       <td style="border: none; padding: 6px; ">172.25.191.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">7</td>
       <td style="border: none; padding: 6px;">172.25.192.0/19</td>
       <td style="border: none; padding: 6px;">172.25.192.1 – 172.25.223.254</td>
       <td style="border: none; padding: 6px; ">172.25.223.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">8</td>
       <td style="border: none; padding: 6px;">172.25.224.0/19</td>
       <td style="border: none; padding: 6px;">172.25.224.1 – 172.25.255.254</td>
       <td style="border: none; padding: 6px; ">172.25.255.255</td>
   </tr>
   </table>

<span></span>

### 3. Subnetting CIDR kelas A

Alamat IP kelas A memiliki subnet mask default 255.0.0.0 atau prefix /8. Nilai
CIDR untuk kelas A dapat dilihat pada tabel di bawah ini.

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;">Subnet Mask</th>
             <th style="border: none; padding: 6px;">Nilai CIDR</th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">255.0.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/8</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.128.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/9</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.192.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/10</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.224.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/11</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.240.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/12</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.248.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/13</td>
           </tr>
           <tr>
             <td style="border: none; padding: 6px;">255.252.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/14</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;">255.254.0.0</td>
             <td style="border: none; padding: 6px; width: 50%;">/15</td>
           </tr>
</table>

<span></span>

{{% alert context="info" %}}
**Contoh Soal**

<p>
Diberikan Network address 15.0.0.0/11, tentukanlah:

a. Jumlah Subnet

b. Jumlah Host Per-Subnet

C. Nilai Blok Subnet

d. Alamat Broadcast & Subnet Map

</p>
{{% /alert %}}

**Langkah - Langkah Penyelesaian**

Untuk menjawab soal tersebut, langkah awal yang perlu dilakukan adalah
melakukan analisis atau pemeriksaan secara mendalam.

Dari soal diatas Network address dari 15.0.0.0 adalah ip address kelas A dengan Subnet Mask /11. Yang artinya memiliki Subnet Mask 255.224.0.0 (11111111.11100000.00000000.00000000).

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11100000</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>00000000</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>00000000</strong></th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">Oktet 1</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 2</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 3</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">Oktet 4</td>
           </tr>
</table>

<span></span>

- <strong>Menghitung Jumlah Subnet</strong>
  {{% alert icon=" " context="info" %}}
    <p style="text-align: center;">2^N = <strong>Jumlah Subnet</strong> → 2^3 = <strong>8 Subnet</strong></p>
    
    {{% /alert %}}

  <strong>N (Besar)</strong> merujuk pada jumlah <strong>bit 1</strong> dalam oktet yang memiliki nilai kurang
  dari 255. Berdasarkan pembagian subnet mask /11, <strong>bit 1</strong>terletak hingga <strong>oktet ke-3</strong>, yang berarti oktet terakhir subnet mask terdapat <strong>3 bit bernilai 1</strong>. Dengan demikian, <strong>N = 3</strong>.

- <strong>Menghitung Jumlah Host Per-Subnet</strong>
  {{% alert icon=" " context="info" %}}
  <p style="text-align: center;">2^n - 2 = <strong>Jumlah Host Per Subnet</strong> → 2^21 - 2 = 2.097.152 - 2 = <strong>2.097.150 Host</strong></p>

  {{% /alert %}}

  <strong>n (Kecil)</strong> merujuk pada jumlah <strong>bit 0</strong> yang terdapat di semua oktet. Berdasarkan
  pembagian subnet mask /11, dapat dilihat bahwa <strong>bit 0</strong> dari <strong>oktet terakhir</strong>
  berjumlah 21. Oleh karena itu, <strong>n = 21</strong>.

- <strong>Menghitung Nilai Blok Subnet</strong>
{{% alert icon=" " context="info" %}}
   <p style="text-align: center;"><strong>256</strong> – <strong>Pada Oktet  Paling Kanan Yang Memiliki Nilai 1</strong> = <strong>Blok Subnet</strong></p>
   
   {{% /alert %}}
   Nilai oktet terakhir dari subnet mask merujuk pada angka yang terletak pada 
bagian akhir dari subnet mask tersebut.

<span></span>

<table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 6px;"><strong>11111111</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>11100000</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>00000000</strong></th>
             <th style="border: none; padding: 6px;"><strong>.</strong></th>
             <th style="border: none; padding: 6px;"><strong>00000000</strong></th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;">255</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">224</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">0</td>
             <td style="border: none; padding: 6px;"></td>
             <td style="border: none; padding: 6px;">0</td>
           </tr>
</table>

<span></span>

Nilai oktet terakhir dari subnet mask tersebut adalah 224, sehingga nilai Blok Subnet
menjadi:

{{% alert icon=" " context="info" %}}

<p style="text-align: center;"><strong>256</strong> – <strong>224</strong> = <strong>32 Blok Subnet</strong></p>
{{% /alert %}}

Dengan demikian, total subnet yang diperoleh adalah<strong> 0, 32, 64, 96, 128, 160,
192, dan 224. </strong>

- <strong>Alamat Broadcast & Subnet Map</strong>

<span></span>

  <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;  width: 10%;">
      <th style="border: none; padding: 6px;  width: 10%;">Blok Subnet</th>
      <th style="border: none; padding: 6px;  width: 20%;">Subnet / Network</th> 
       <th style="border: none; padding: 6px;  width: 52%;">Range Host</th>
       <th style="border: none; padding: 6px;  width: 18%;">Broadcast</th>
   </tr>
   <tr style="border: 1px solid #ffffff21;">
       <td style="border: none; padding: 6px;">1</td>
       <td style="border: none; padding: 6px; ">15.0.0.0/11 </td>
       <td style="border: none; padding: 6px;">15.0.0.1 – 15.31.255.254 </td>
       <td style="border: none; padding: 6px; ">15.31.255.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">2</td>
       <td style="border: none; padding: 6px; ">15.32.0.0/11</td>
       <td style="border: none; padding: 6px;">15.32.0.1 – 15.53.255.254 </td>
       <td style="border: none; padding: 6px; ">15.63.255.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">3</td>
       <td style="border: none; padding: 6px; \">15.64.0.0/11</td>
       <td style="border: none; padding: 6px;">15.64.0.1 – 15.63.255.254 </td>
       <td style="border: none; padding: 6px; ">15.95.255.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">4</td>
       <td style="border: none; padding: 6px; ">15.96.0.0/11</td>
       <td style="border: none; padding: 6px;">15.96.0.1 – 15.127.255.254 </td>
       <td style="border: none; padding: 6px; ">15.127.255.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">5</td>
       <td style="border: none; padding: 6px; ">15.128.0.0/11</td>
       <td style="border: none; padding: 6px;">15.128.0.1 – 15.159.255.254 </td>
       <td style="border: none; padding: 6px; ">15.159.255.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">6</td>
       <td style="border: none; padding: 6px; ">15.160.0.0/11</td>
       <td style="border: none; padding: 6px;">15.160.0.1 – 15.191.255.254 </td>
       <td style="border: none; padding: 6px; ">15.191.255.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">7</td>
       <td style="border: none; padding: 6px;">15.192.0.0/11</td>
       <td style="border: none; padding: 6px;">15.192.0.1 – 15.223.255.254 </td>
       <td style="border: none; padding: 6px; ">15.223.255.255 </td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">8</td>
       <td style="border: none; padding: 6px;">15.224.0.0/11</td>
       <td style="border: none; padding: 6px;">15.224.0.1 – 15.255.255.254 </td>
       <td style="border: none; padding: 6px; ">15.255.255.255 </td>
   </tr>
   </table>

<span></span>

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

1. <p>
      Diketahui network address 192.168.9.0/27, yang memiliki beberapa subnet dengan kebutuhan jumlah host yang berbeda-beda. Jumlah host untuk masing - masing subnet adalah sebagai berikut:

   - Net A memiliki 28 Host
   - Net B memiliki 60 Host
   - Net C memiliki 20 Host
   - Net D memiliki 20 Host
   - Net E memiliki 2 Host
   </p>
   {{% /alert %}}

**Langkah - Langkah Penyelesaian**

Alamat jaringan 192.168.9.0 adalah alamat IP kelas C dengan prefix /27, yang
berarti subnet mask yang digunakan adalah 255.255.255.224
(11111111.11111111.11111111.11100000).

- Menentukan urutan jaringan berdasarkan jumlah host, yang terbesar hingga yang terkecil:

  1. Net B = 60 Host
  2. Net A = 28 Host
  3. Net C = 20 Host
  4. Net D = 20 Host
  5. Net E = 2 Host

<span></span>

- Menetapkan rentang host sesuai jumlah kebutuhan host.

  1. Net B membutuhkan 60 host : <strong>2^n − 2 ≥ 60 host → 2^6 – 2 = 62 host (n = 6)</strong>
  2. Net A membutuhkan 28 host : <strong>2^n − 2 ≥ 28 host → 2^5 – 2 = 30 host (n = 5)</strong>
  3. Net C membutuhkan 20 host : <strong>2^n − 2 ≥ 29 host → 2^5 – 2 = 30 host (n = 5)</strong>
  4. Net D membutuhkan 20 host : <strong>2^n − 2 ≥ 20 host → 2^5 – 2 = 30 host (n = 5)</strong>
  5. Net E membutuhkan 2 host : <strong>2^n − 2 ≥ 2 host → 2^2 – 2 = 2 host (n = 2)</strong>
     {{% alert context="info" %}}
        <p><strong>Keterangan : 2^n - 2 ≥ kebutuhan host berarti jumlah alamat yang dihitung harus cukup untuk memenuhi kebutuhan host yang diinginkan, tetapi tidak boleh terlalu besar sehingga membuang alamat IP yang tidak diperlukan.</strong>
        </p>
       {{% /alert %}}

- Menetapkan Bit Network

  1.  Net B = 60 host : 32 - n → 32-6 = /26
  2.  Net A = 28 host : 32 - n → 32-5 = /27
  3.  Net C = 20 host : 32 - n → 32-5 = /27
  4.  Net D = 20 host : 32 - n → 32-5 = /27
  5.  Net E = 2 host : 32 - n → 32-2 = /30

<span></span>

{{% alert context="info" %}}

<p><strong>Keterangan : Angka 32 merupakan jumlah bit dari IPv4 address. Dan ( n )
adalah nilai untuk mencari jumlah host. </strong></p>
{{% /alert %}}

- Menetapkan Blok Subnet

  1. Net B = 60 host : 256 - Bit Network → 256 - (/26) → 256 - 192 = 64
  2. Net A = 28 host : 256 - Bit Network → 256 - (/27) → 256 - 224 = 32
  3. Net C = 20 host : 256 - Bit Network → 256 - (/27) → 256 - 224 = 32
  4. Net D = 20 host : 256 - Bit Network → 256 - (/27) → 256 - 224 = 32
  5. Net E = 2 host : 256 - Bit Network → 256 - (/30) → 256 - 252 = 4

{{% alert context="info" %}}

<p><strong>Keterangan : untuk angka Bit Network, cari nilai oktet terakhir subnet mask.
Misalnya ; /27 → (11111111.11111111.11111111.11100000), maka oktet
trakhir bernilai (11100000) → 224 </strong></p>
{{% /alert %}}

- Subnet Map

  <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;  width: 10%;">
      <th style="border: none; padding: 6px;  width: 10%;">Subnet Name</th>
      <th style="border: none; padding: 6px;  width: 20%;">Subnet / Network</th> 
       <th style="border: none; padding: 6px;  width: 52%;">Range Host</th>
       <th style="border: none; padding: 6px;  width: 18%;">Broadcast</th>
   </tr>
   <tr style="border: 1px solid #ffffff21;">
       <td style="border: none; padding: 6px;">Net B</td>
       <td style="border: none; padding: 6px; ">192.168.9.0/26</td>
       <td style="border: none; padding: 6px;">192.168.9.1 – 192.168.9.62</td>
       <td style="border: none; padding: 6px; ">192.168.9.63</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">Net A</td>
       <td style="border: none; padding: 6px; ">192.168.9.64/27</td>
       <td style="border: none; padding: 6px;">1192.168.9.65 – 192.168.9.94</td>
       <td style="border: none; padding: 6px; ">192.168.9.95</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">Net C</td>
       <td style="border: none; padding: 6px; \">192.168.9.96/27</td>
       <td style="border: none; padding: 6px;">192.168.9.97 – 192.168.9.126</td>
       <td style="border: none; padding: 6px; ">192.168.9.127</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">Net D</td>
       <td style="border: none; padding: 6px; ">192.168.9.128/27</td>
       <td style="border: none; padding: 6px;">192.168.9.129 – 192.168.9.158</td>
       <td style="border: none; padding: 6px; ">192.168.9.159</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">Net E</td>
       <td style="border: none; padding: 6px; ">192.168.9.160/30</td>
       <td style="border: none; padding: 6px;">192.168.9.161 – 192.168.9.162</td>
       <td style="border: none; padding: 6px; ">192.168.9.163</td>
   </tr>
   </table>

{{% alert context="info" %}}
**Contoh Soal**

1. <p>
         Diberikan alamat jaringan 25.11.15.0 /18, yang memiliki beberapa subnet 
      dengan kebutuhan jumlah host sebagai berikut:

   - Net F membutuhkan 225 Host
   - Net G membutuhkan 150 Host
   - Net H membutuhkan 180 Host
   - Net I membutuhkan 30 Host
   - Net J membutuhkan 90 Host
   </p>
   {{% /alert %}}

**Langkah - Langkah Penyelesaian**

Alamat jaringan 25.11.15.0 termasuk dalam IP address kelas A dengan prefix
/18,
yang berarti memiliki subnet mask sebesar 255.255.192.0
(11111111.11111111.11000000.00000000).

- Menentukan urutan jaringan berdasarkan jumlah host, yang terbesar hingga yang terkecil:

  1. Net F = 225 Host
  2. Net H = 180 Host
  3. Net G = 150 Host
  4. Net J = 90 Host
  5. Net I = 30 Host

<span></span>

- Menetapkan rentang host sesuai jumlah kebutuhan host.

  1. Net F membutuhkan 225 host : <strong>2^n − 2 ≥ 225 host → 2^8 – 2 = 254 host (n = 8)</strong>
  2. Net H membutuhkan 180 host : <strong>2^n − 2 ≥ 180 host → 2^8 – 2 = 254 host (n = 8)</strong>
  3. Net G membutuhkan 150 host : <strong>2^n − 2 ≥ 150 host → 2^8 – 2 = 254 host (n = 8)</strong>
  4. Net J membutuhkan 90 host : <strong>2^n − 2 ≥ 90 host → 2^7 – 2 = 126 host (n = 7)</strong>
  5. Net I membutuhkan 30 host : <strong>2^n − 2 ≥ 30 host → 2^5 – 2 = 30 host (n = 5)</strong>
     {{% alert context="info" %}}
        <p><strong>Keterangan : 2^n - 2 ≥ kebutuhan host berarti jumlah alamat yang dihitung harus cukup untuk memenuhi kebutuhan host yang diinginkan, tetapi tidak boleh terlalu besar sehingga membuang alamat IP yang tidak diperlukan.</strong></p>
       {{% /alert %}}

- Menetapkan Bit Network

  1.  Network F = 225 host : 32 - n → 32-8 = /24
  2.  Network H = 180 host : 32 - n → 32-8 = /24
  3.  Network G = 150 host : 32 - n → 32-8 = /24
  4.  Network J = 90 host : 32 - n → 32-7 = /25
  5.  Network I = 30 host : 32 - n → 32-5 = /27

<span></span>

{{% alert context="info" %}}

<p><strong>Keterangan : Angka 32 merupakan jumlah bit dari IPv4 address. Dan ( n )
adalah nilai untuk mencari jumlah host. </strong></p>
{{% /alert %}}

- Menentukan Blok Subnet

  1. Network F = 225 host : 256 - Bit Network → 256 - (/24) → 256 - 0 = 256
  2. Network H = 180 host : 256 - Bit Network → 256 - (/24) → 256 - 0 = 256
  3. Network G = 150 host : 256 - Bit Network → 256 - (/24) → 256 - 0 = 256
  4. Network J = 90 host : 256 - Bit Network → 256 - (/25) → 256 - 0 = 128
  5. Network I = 30 host : 256 - Bit Network → 256 - (/27) → 256 - 0 = 32

{{% alert context="info" %}}

<p><strong>Keterangan : untuk angka Bit Network, cari nilai oktet terakhir subnet mask. Misalnya ; /26 → (11111111.11111111.11111111.11000000), maka oktet 
trakhir bernilai (11100000) → 192</strong></p>
{{% /alert %}}

- Subnet Map

  <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;  width: 10%;">
      <th style="border: none; padding: 6px;  width: 10%;">Subnet Name</th>
      <th style="border: none; padding: 6px;  width: 20%;">Subnet / Network</th> 
       <th style="border: none; padding: 6px;  width: 52%;">Range Host</th>
       <th style="border: none; padding: 6px;  width: 18%;">Broadcast</th>
   </tr>
   <tr style="border: 1px solid #ffffff21;">
       <td style="border: none; padding: 6px;">Network F</td>
       <td style="border: none; padding: 6px; ">25.11.15.0/24</td>
       <td style="border: none; padding: 6px;">25.11.15.1 – 25.11.15.254</td>
       <td style="border: none; padding: 6px; ">25.11.15.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">Network H</td>
       <td style="border: none; padding: 6px; ">25.11.15.0/24</td>
       <td style="border: none; padding: 6px;">25.11.15.1 – 25.11.15.254</td>
       <td style="border: none; padding: 6px; ">25.11.15.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">Network G</td>
       <td style="border: none; padding: 6px; \">25.11.16.0/24</td>
       <td style="border: none; padding: 6px;">25.11.16.1 – 25.11.16.254</td>
       <td style="border: none; padding: 6px; ">25.11.16.255</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
       <td style="border: none; padding: 6px;">Network J</td>
       <td style="border: none; padding: 6px; ">25.11.17.0/24</td>
       <td style="border: none; padding: 6px;">25.11.17.1 – 25.11.17.254</td>
       <td style="border: none; padding: 6px; ">25.11.17.255</td>
   </tr>
   <tr>
       <td style="border: none; padding: 6px;">Network I</td>
       <td style="border: none; padding: 6px; ">25.11.18.0/24</td>
       <td style="border: none; padding: 6px;">25.11.18.1 – 25.11.18.126</td>
       <td style="border: none; padding: 6px; ">25.11.18.127</td>
   </tr>
   </table>

## Tugas

<div class="alert alert-info" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakanlah soal latihan berikut ini:</strong></p>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">1</div>
<p class="mb-2"><strong>Soal 1:</strong></p>
Diberikan sebuah network address <code>192.168.20.0/24</code>, dari address tersebut tentukanlah:
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
<p>
Diberikan sebuah network address <code>172.16.0.0/18</code>, dari address tersebut tentukanlah:
</p>
<ul>
<li>IP tersebut merupakan kelas apa?</li>
<li>Berapa jumlah subnetnya?</li>
<li>Berapa jumlah host per subnet?</li>
<li>Apa saja blok-blok subnetnya?</li>
<li>Host pertama, Host terakhir, Network address, dan Alamat broadcast</li>
</ul>
</div>
</div>

<div class="row mt-3">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">3</div>
<p class="mb-2"><strong>Soal 3:</strong></p>
<p>Sebuah perusahaan layanan keuangan memiliki network address <code>192.188.128.0/25</code>. Perusahaan ini terbagi menjadi 5 departemen dengan 
kebutuhan jumlah host yang berbeda, yaitu: 
</p>
<ul>
<li>Departemen Keuangan: 160 host</li>
<li>Departemen Operasional: 120 host</li>
<li>Departemen Teknologi: 140 host</li>
<li>Departemen SDM: 75 host</li>
<li>Departemen Penjualan: 5 host</li>
</ul>
</div>

<!-- <span></span> -->

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">4</div>
<p class="mb-2"><strong>Soal 4:</strong></p>
<p>Perusahaan memiliki network address <code>30.12.20.0/23</code> yang perlu 
dibagi ke dalam beberapa subnet menggunakan metode subnetting VLSM. Adapun jumlah host yang diperlukan setiap subnet sebagai berikut:
</p>
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
<p><small class="text-muted"><i class="material-icons align-middle me-1">info</i>Gunakan metode CIDR untuk soal 1-2, dan metode VLSM untuk soal 3-4. Urutkan subnet menurut kebutuhan host terbesar untuk VLSM.</small></p>
</div>
</div>
