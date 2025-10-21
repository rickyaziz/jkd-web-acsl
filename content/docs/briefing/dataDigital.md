---
weight: 7
title: "Data Digital"
description: ""
icon: "123"
date: "2025-08-31T23:20:07+07:00"
lastmod: "2025-08-31T23:20:07+07:00"
toc: true
---

<p style="text-align: justify;">
Data digital adalah representasi dari informasi dalam bentuk yang terdiri dari angka-angka biner (1 dan 0) yang banyak dikenal sebagai bit atau binary digit. Di dunia komputer, data digital adalah bentuk yang paling umum dari data, dan hampir semua perangkat elektronik modern menggunakan data digital. Setiap bit dalam data digital merepresentasikan satu dari dua keadaan, biasanya disebut sebagai "0" atau "1". Dengan menggabungkan sejumlah besar bit ini, kita dapat merepresentasikan informasi yang lebih kompleks, termasuk teks, gambar, suara, video, dan lainnya. Proses pengkodean dan penguraian (encoding dan decoding) digunakan untuk mengubah informasi dari bentuk aslinya menjadi data digital dan sebaliknya. Proses ini melibatkan penggunaan metode khusus untuk mewakili informasi dalam bentuk serangkaian bit yang dapat dipahami oleh komputer atau perangkat elektronik lainnya.
</p>

## Jenis Sistem Bilangan

<p style="text-align: justify;">
Jenis sistem bilangan merujuk pada cara berbeda untuk merepresentasikan 
dan memahami angka. Berikut adalah beberapa contoh sistem bilangan yang sering 
digunakan:
</p>

1. <p style="text-align: justify;">
   <b>Desimal : </b>
   Sistem bilangan decimal adalah yang paling sering digunakan dalam kehidupan sehari-hari. Sistem ini berbasis 10, dengan angka-angka yang terdiri dari 0 hingga 9. Setiap digit memiliki nilai yang bervariasi tergantung pada posisinya dalam bilangan tersebut.
   </p>

2. <p style="text-align: justify;">
   <b>Biner :</b>
   Biner adalah sistem bilangan yang digunakan dalam teknologi digital dan komputer. Berbasis 2, dengan hanya dua angka: 0 dan 1. Setiap digit merepresentasikan keadaan saklar elektronik (on/off) dalam perangkat digital. 
   </p>

3. <p style="text-align: justify;">
   <b>Oktal :</b> 
   Oktal adalah sistem bilangan yang kurang umum, namun digunakan dalam 
   beberapa aplikasi komputer. Berbasis 8, dengan angka-angka dari 0 hingga 7. Setiap digit merepresentasikan kombinasi dari tiga bit biner.
   </p>

4. <p style="text-align: justify;">
   <b>Heksadesimal :</b> 
   Heksadesimal adalah sistem bilangan yang umum dipakai dalam pemrograman komputer dan representasi warna. Berbasis 16, menggunakan angka 0 hingga 9 dan huruf A hingga F (yang mewakili nilai 10 hingga 15). Setiap digit 
   merepresentasikan kombinasi dari empat bit biner. 
   </p>

## Konversi Bilangan

<p style="text-align: justify;">
Pada dasarnya perangkat elektronik tidak dapat menerima peritah begitu saja, karena perangkat elektronik hanya mengerti perintah dalam bit. Semisal bila pengguna ingin mengetikan huruf pada keyboard maka, erintah tersebut harus diubah dulu dari huruf menjadi angka yang terdapat pada kode ASCII, lalu dikirimkan ke prosesor yang sudah dalam bentuk bit. Sebagai contoh angka 42(desimal) akan dikonversikan ke berbagai jenis sistem bilangan. 
</p>

{{< alert context="info" text="bila bilangan dari desimal ke jenis sitem lain maka bagi dengan jumlah basisnya dan bila biner ke oktal ataupun heksadesimal lihat representasi bitnya." />}}

1. <p style="text-align: justify;"><b>Desimal ke Biner :</b> Angka 42(desimal) akan diubah ke biner dengan cara membagi angka tersebut dengan angka 2.</p>
   {{< table "table-striped" >}}
   |  |  |  |  |
   |--|------|--|--|
   | <p style="text-align: center;"><b>JUMLAH</b></p> | <p style="text-align: center;"><b>HASIL</b></p> | <p style="text-align: center;"><b>SISA</b></p> | <p style="text-align: center;"><b>BIT PALING KANAN</b></p>
   | <p style="text-align: center;">42/2</p> | <p style="text-align: center;">21</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">0</p>
   | <p style="text-align: center;">21/2</p> | <p style="text-align: center;">10</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">1</p>
   | <p style="text-align: center;">10/2</p> | <p style="text-align: center;">5</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">2</p>
   | <p style="text-align: center;">5/2</p> | <p style="text-align: center;">2</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">3</p>
   | <p style="text-align: center;">2/2</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">4</p>
   | <p style="text-align: center;">1/2</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">5</p>
   {{< /table >}}

   maka hasil yang didapat adalah **101010(biner)**.

2. <p style="text-align: justify;"><b>Biner ke Desimal :</b> Angka 101010(biner) akan diubah ke desimal.</p>
   {{< table "table-striped" >}}
   | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- |
   | <p style="text-align: center;"><b>ANGKA BINER</b></p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> |
   | <p style="text-align: center;"><b>PANGKAT 2</b></p> | <p style="text-align: center;">2^5</p> | <p style="text-align: center;">2^4</p> | <p style="text-align: center;">2^3</p> | <p style="text-align: center;">2^2</p> | <p style="text-align: center;">2^1</p> | <p style="text-align: center;">2^0</p> |
   | <p style="text-align: center;"><b>HASIL</b></p> | <p style="text-align: center;">32</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">8</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">2</p> | <p style="text-align: center;">0</p> |
   {{< /table >}}

   Hasil yang didapat adalah = 32+0+8+0+2+0 **42(desimal)**.

3. <p style="text-align: justify;"><b>Biner ke Oktal :</b> Angka 110010(biner) akan diubah ke oktal.</p>
   {{< table "table-striped" >}}
   | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- |
   | <p style="text-align: center;"><b>ANGKA BINER</b></p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> |
   | <p style="text-align: center;"><b>PANGKAT 2</b></p> | <p style="text-align: center;">2^2</p> | <p style="text-align: center;">2^1</p> | <p style="text-align: center;">2^0</p> | <p style="text-align: center;">2^2</p> | <p style="text-align: center;">2^1</p> | <p style="text-align: center;">2^0</p> |
   | <p style="text-align: center;"><b>HASIL</b></p> | <p style="text-align: center;">4</p> | <p style="text-align: center;">2</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">2</p> | <p style="text-align: center;">0</p> |
   {{< /table >}}

   <p style="text-align: justify;">Hasil yang didapat adalah 4+2+0 = 6 dan 0+2+0 = 2. Maka oktal yang didapatkan adalah 62</p>

4. <p style="text-align: justify;"><b>Oktal ke Biner  :</b> Angka 47(oktal) akan diubah ke Biner.</p>
   {{< table "table-striped" >}}
   | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- |
   | <p style="text-align: center;"><b>ANGKA OKTAL</b></p> |  | <p style="text-align: center;"><b>ANGKA BINER</b></p> |  | 
   | <p style="text-align: center;"><b>4</b></p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">0</p> | 
   | <p style="text-align: center;"><b>7</b></p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">1</p> | 
   {{< /table >}}

   <p style="text-align: justify;">Maka hasil yang didapat adalah 100111(biner).</p>

5. <p style="text-align: justify;"><b>Biner ke Heksadesimal  :</b> Angka 10110101(Biner) akan diubah ke Heksadesimal.</p>
   {{< table "table-striped" >}}
   | | | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- | --- | --- |
   | <p style="text-align: center; border: "><b>ANGKA BINER</b></p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> |
   | <p style="text-align: center;"><b>PANGKAT 2</b></p> | <p style="text-align: center;">2^3</p> | <p style="text-align: center;">2^2</p> | <p style="text-align: center;">2^1</p> | <p style="text-align: center;">2^0</p> | <p style="text-align: center;">2^3</p> | <p style="text-align: center;">2^2</p> | <p style="text-align: center;">2^1</p> | <p style="text-align: center;">2^0</p> | <p style="text-align: center;">2^1</p> | <p style="text-align: center;">2^0</p> |
   | <p style="text-align: center;"><b>HASIL</b></p> | <p style="text-align: center;">8</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">2</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">4</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p>| <p style="text-align: center;">1</p> |
   {{< /table >}}

   <p style="text-align: justify;">Hasil yang didapat adalah 8+0+2+1 = 11(B) dan 0+4+0+1 = 5. Maka heksadesimal yang didapat adalah B5(Heksadesimal).</p>

6. <p style="text-align: justify;"><b>Heksadesimal ke Biner  :</b> Angka 4C(Heksadesimal) akan diubah ke Biner.</p>
         <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
           <tr style="background-color: #7928ca2e; border-radius: 12px;">
             <th style="border: none; padding: 12px;">ANGKA HEKSADESIMAL</th>
             <th colspan="4" style="border: none; padding: 12px;">ANGKA BINER</th>
           </tr>
           <tr style="border: 1px solid #ffffff21;">
             <td style="border: none; padding: 6px;"><b>4</b></td>
             <td style="border: none; padding: 6px; width: 25%;">0</td>
             <td style="border: none; padding: 6px; width: 25%;">1</td>
             <td style="border: none; padding: 6px; width: 25%;">0</td>
             <td style="border: none; padding: 6px; width: 25%;">0</td>
           </tr>
           <tr style="background-color: #7928ca2e;">
             <td style="border: none; padding: 6px;"><b>C</b></td>
             <td style="border: none; padding: 6px; width: 25%;">1</td>
             <td style="border: none; padding: 6px; width: 25%;">1</td>
             <td style="border: none; padding: 6px; width: 25%;">0</td>
             <td style="border: none; padding: 6px; width: 25%;">0</td>
           </tr>
         </table>
      </p>
   <p style="text-align: justify;">
     Maka hasil yang didapatkan adalah <b>01001011</b>.
   </p>

## Tugas

<div class="alert alert-info" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakan tugas berikut untuk memahami konversi bilangan:</strong></p>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">1</div>
<p class="mb-2"><strong>Tugas 1:</strong></p>
<p>Ubah angka <code>54(desimal)</code> ke :</p>
<ul>
<li>Oktal</li>
</ul>
</div>

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">2</div>
<p class="mb-2"><strong>Tugas 2:</strong></p>
<p>Ubah angka <code>011011(biner)</code> ke :</p>
<ul>
<li>Heksadesimal</li>
<li>Oktal</li>
</ul>
</div>
</div>

<div class="mt-3">
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Gunakan metode pembagian untuk konversi dari desimal, dan gunakan representasi bit untuk konversi dari biner.</small>
</div>
</div>
