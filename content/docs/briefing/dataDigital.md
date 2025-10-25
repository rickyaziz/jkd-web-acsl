---
weight: 7
title: "Data Digital"
description: "Jenis Dan Konversi Bilangan"
icon: "123"
date: "2025-08-31T23:20:07+07:00"
lastmod: "2025-08-31T23:20:07+07:00"
toc: true
---

Data digital adalah representasi dari informasi dalam bentuk yang terdiri dari angka-angka biner (1 dan 0) yang banyak dikenal sebagai bit atau binary digit. Di dunia komputer, data digital adalah bentuk yang paling umum dari data, dan hampir semua perangkat elektronik modern menggunakan data digital. Setiap bit dalam data digital merepresentasikan satu dari dua keadaan, biasanya disebut sebagai "0" atau "1". Dengan menggabungkan sejumlah besar bit ini, kita dapat merepresentasikan informasi yang lebih kompleks, termasuk teks, gambar, suara, video, dan lainnya. Proses pengkodean dan penguraian (encoding dan decoding) digunakan untuk mengubah informasi dari bentuk aslinya menjadi data digital dan sebaliknya. Proses ini melibatkan penggunaan metode khusus untuk mewakili informasi dalam bentuk serangkaian bit yang dapat dipahami oleh komputer atau perangkat elektronik lainnya.

## Jenis Sistem Bilangan

Jenis sistem bilangan merujuk pada cara berbeda untuk merepresentasikan
dan memahami angka. Berikut adalah beberapa contoh sistem bilangan yang sering
digunakan:

1.  <strong>Desimal : </strong>
    Sistem bilangan decimal adalah yang paling sering digunakan dalam kehidupan sehari-hari. Sistem ini berbasis 10, dengan angka-angka yang terdiri dari 0 hingga 9. Setiap digit memiliki nilai yang bervariasi tergantung pada posisinya dalam bilangan tersebut.

2.  <strong>Biner :</strong>
    Biner adalah sistem bilangan yang digunakan dalam teknologi digital dan komputer. Berbasis 2, dengan hanya dua angka: 0 dan 1. Setiap digit merepresentasikan keadaan saklar elektronik (on/off) dalam perangkat digital.

3.  <strong>Oktal :</strong>
    Oktal adalah sistem bilangan yang kurang umum, namun digunakan dalam
    beberapa aplikasi komputer. Berbasis 8, dengan angka-angka dari 0 hingga 7. Setiap digit merepresentasikan kombinasi dari tiga bit biner.

4.  <strong>Heksadesimal :</strong>
    Heksadesimal adalah sistem bilangan yang umum dipakai dalam pemrograman komputer dan representasi warna. Berbasis 16, menggunakan angka 0 hingga 9 dan huruf A hingga F (yang mewakili nilai 10 hingga 15). Setiap digit
    merepresentasikan kombinasi dari empat bit biner.

## Konversi Bilangan

Pada dasarnya perangkat elektronik tidak dapat menerima peritah begitu saja, karena perangkat elektronik hanya mengerti perintah dalam bit. Semisal bila pengguna ingin mengetikan huruf pada keyboard maka, erintah tersebut harus diubah dulu dari huruf menjadi angka yang terdapat pada kode ASCII, lalu dikirimkan ke prosesor yang sudah dalam bentuk bit. Sebagai contoh angka 42(desimal) akan dikonversikan ke berbagai jenis sistem bilangan.

{{< alert context="info" text="bila bilangan dari desimal ke jenis sitem lain maka bagi dengan jumlah basisnya dan bila biner ke oktal ataupun heksadesimal lihat representasi bitnya." />}}

1. <p><strong>Desimal ke Biner :</strong> Angka 42(desimal) akan diubah ke biner dengan cara membagi angka tersebut dengan angka 2.</p>
   {{< table "table-striped" >}}
   |        |       |      |                  |
   | ------ | ----- | ---- | ---------------- |
   | <p style="text-align: center;"><strong>JUMLAH</strong></p> | <p style="text-align: center;"><strong>HASIL</strong></p> | <p style="text-align: center;"><strong>SISA</strong></p> | <p style="text-align: center;"><strong>BIT PALING KANAN</strong></p> |
   | <p style="text-align: center;">42/2</p>   | <p style="text-align: center;">21</p>    | <p style="text-align: center;">0</p>    | <p style="text-align: center;">0</p>                |
   | <p style="text-align: center;">21/2</p>   | <p style="text-align: center;">10</p>    | <p style="text-align: center;">1</p>    | <p style="text-align: center;">1</p>                |
   | <p style="text-align: center;">10/2</p>   | <p style="text-align: center;">5</p>     | <p style="text-align: center;">0</p>    | <p style="text-align: center;">2</p>                |
   | <p style="text-align: center;">5/2</p>    | <p style="text-align: center;">2</p>     | <p style="text-align: center;">1</p>    | <p style="text-align: center;">3</p>                |
   | <p style="text-align: center;">2/2</p>    | <p style="text-align: center;">1</p>     | <p style="text-align: center;">0</p>    | <p style="text-align: center;">4</p>                |
   | <p style="text-align: center;">1/2</p>    | <p style="text-align: center;">0</p>     | <p style="text-align: center;">1</p>    | <p style="text-align: center;">5</p>                |
   {{< /table >}}

   maka hasil yang didapat adalah **101010(biner)**.

2. <strong>Biner ke Desimal :</strong> Angka 101010(biner) akan diubah ke desimal.
   {{< table "table-striped" >}}
   | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- |
   | <strong>ANGKA BINER</strong></p> | 1</p> | 0</p> | 1</p> | 0</p> | 1</p> | 0</p> |
   | <strong>PANGKAT 2</strong></p> | 2^5</p> | 2^4</p> | 2^3</p> | 2^2</p> | 2^1</p> | 2^0</p> |
   | <strong>HASIL</strong></p> | 32</p> | 0</p> | 8</p> | 0</p> | 2</p> | 0</p> |
   {{< /table >}}

   Hasil yang didapat adalah = 32+0+8+0+2+0 **42(desimal)**.

3. <strong>Biner ke Oktal :</strong> Angka 110010(biner) akan diubah ke oktal.
   {{< table "table-striped" >}}
   | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- |
   | <strong>ANGKA BINER</strong></p> | 1</p> | 1</p> | 0</p> | 0</p> | 1</p> | 0</p> |
   | <strong>PANGKAT 2</strong></p> | 2^2</p> | 2^1</p> | 2^0</p> | 2^2</p> | 2^1</p> | 2^0</p> |
   | <strong>HASIL</strong></p> | 4</p> | 2</p> | 0</p> | 0</p> | 2</p> | 0</p> |
   {{< /table >}}

   Hasil yang didapat adalah 4+2+0 = 6 dan 0+2+0 = 2. Maka oktal yang didapatkan adalah 62

4. <strong>Oktal ke Biner :</strong> Angka 47(oktal) akan diubah ke Biner.
   {{< table "table-striped" >}}
   | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- |
   | <p style="text-align: center;"><strong>ANGKA OKTAL</strong></p> | | <p style="text-align: center;"><strong>ANGKA BINER</strong></p> | |
   | <p style="text-align: center;"><strong>4</strong></p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">0</p> | <p style="text-align: center;">0</p> |
   | <p style="text-align: center;"><strong>7</strong></p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">1</p> | <p style="text-align: center;">1</p> |
   {{< /table >}}

   Maka hasil yang didapat adalah 100111(biner).

5. <strong>Biner ke Heksadesimal :</strong> Angka 10110101(Biner) akan diubah ke Heksadesimal.
   {{< table "table-striped" >}}
   | | | | | | | | | |
   |---------|------|------| ---- | ------| ------ | --- | --- | --- |
   | <p style="text-align: center; border: "><strong>ANGKA BINER</strong></p> | 1</p> | 0</p> | 1</p> | 1</p> | 0</p> | 1</p> | 0</p> | 1</p> | 0</p> | 1</p> |
   | <p style="text-align: center;"><strong>PANGKAT 2</strong></p> | 2^3</p> | 2^2</p> | 2^1</p> | 2^0</p> | 2^3</p> | 2^2</p> | 2^1</p> | 2^0</p> | 2^1</p> | 2^0</p> |
   | <p style="text-align: center;"><strong>HASIL</strong></p> | 8</p> | 0</p> | 2</p> | 1</p> | 0</p> | 4</p> | 0</p> | 1</p> | 0</p>| 1</p> |
   {{< /table >}}

   Hasil yang didapat adalah 8+0+2+1 = 11(B) dan 0+4+0+1 = 5. Maka heksadesimal yang didapat adalah B5(Heksadesimal).

6. <strong>Heksadesimal ke Biner :</strong> Angka 4C(Heksadesimal) akan diubah ke Biner.

   <table style="border-collapse: separate; border-spacing: 0; border-radius: 5px; width: 100%; text-align: center; margin: 0 auto; border: 1px solid #ffffff21; overflow: hidden;">
   <tr style="background-color: #7928ca2e; border-radius: 12px;">
   <th style="border: none; padding: 12px;">ANGKA HEKSADESIMAL</th>
   <th colspan="4" style="border: none; padding: 12px;">ANGKA BINER</th>
   </tr>
   <tr style="border: 1px solid #ffffff21;">
   <td style="border: none; padding: 6px;"><strong>4</strong></td>
   <td style="border: none; padding: 6px; width: 25%;">0</td>
   <td style="border: none; padding: 6px; width: 25%;">1</td>
   <td style="border: none; padding: 6px; width: 25%;">0</td>
   <td style="border: none; padding: 6px; width: 25%;">0</td>
   </tr>
   <tr style="background-color: #7928ca2e;">
   <td style="border: none; padding: 6px;"><strong>C</strong></td>
   <td style="border: none; padding: 6px; width: 25%;">1</td>
   <td style="border: none; padding: 6px; width: 25%;">1</td>
   <td style="border: none; padding: 6px; width: 25%;">0</td>
   <td style="border: none; padding: 6px; width: 25%;">0</td>
   </tr>
   </table>
   Maka hasil yang didapatkan adalah <strong>01001011</strong>.

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
