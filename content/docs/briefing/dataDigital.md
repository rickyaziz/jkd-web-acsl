---
weight: 7
title: 'Data Digital'
description: ''
icon: '123'
date: '2025-08-31T23:20:07+07:00'
lastmod: '2025-08-31T23:20:07+07:00'
toc: true
---

Data digital adalah representasi dari informasi dalam bentuk yang terdiri dari
angka-angka biner (1 dan 0) yang banyak dikenalsebagai bit atau binary digit. Di dunia
komputer, data digital adalah bentuk yang paling umum dari data, dan hampir semua
perangkat elektronik modern menggunakan data digital. Setiap bit dalam data digital
merepresentasikan satu dari dua keadaan, biasanya disebut sebagai "0" atau "1".
Dengan menggabungkan sejumlah besar bit ini, kita dapat merepresentasikan
informasi yang lebih kompleks, termasuk teks, gambar, suara, video, dan lainnya.
Proses pengkodean dan penguraian (encoding dan decoding) digunakan untuk
mengubah informasi dari bentuk aslinya menjadi data digital dan sebaliknya. Proses
ini melibatkan penggunaan metode khusus untuk mewakili informasi dalam bentuk
serangkaian bit yang dapat dipahami oleh komputer atau perangkat elektronik
lainnya.

## Jenis Sistem Bilangan

Jenis sistem bilangan merujuk pada cara berbeda untuk merepresentasikan
dan memahami angka. Berikut adalah beberapa contoh sistem bilangan yang sering
digunakan:

1. **Desimal :** Desimal adalah yang paling sering digunakan dalam kehidupan sehari-hari. Sistem ini berbasis 10, dengan angka-angka yang terdiri dari 0 hingga 9. Setiap digit memiliki nilai yang bervariasi tergantung pada posisinya dalam bilangan tersebut.

2. **Biner :** Biner adalah sistem bilangan yang digunakan dalam teknologi digital dan
   komputer. Berbasis 2, dengan hanya dua angka: 0 dan 1. Setiap digit
   merepresentasikan keadaan saklar elektronik (on/off) dalam perangkat digital.
3. **Oktal :** Oktal adalah sistem bilangan yang kurang umum, namun digunakan dalam
   beberapa aplikasi komputer. Berbasis 8, dengan angka-angka dari 0 hingga 7. Setiap
   digit merepresentasikan kombinasi dari tiga bit biner.
4. **Heksadesimal :** Heksadesimal adalah sistem bilangan yang umum dipakai dalam
   pemrograman komputer dan representasi warna. Berbasis 16, menggunakan angka 0
   hingga 9 dan huruf A hingga F (yang mewakili nilai 10 hingga 15). Setiap digit
   merepresentasikan kombinasi dari empat bit biner.

## Konversi Bilangan

Pada dasarnya perangkat elektronik tidak dapat menerima peritah begitu saja,
karena perangkat elektronik hanya mengerti perintah dalam bit. Semisal bila
pengguna ingin mengetikan huruf pada keyboard maka, perintah tersebut harus
diubah dulu dari huruf menjadi angka yang terdapat pada kode ASCII, lalu dikirimkan
ke prosesor yang sudah dalam bentuk bit. Sebagai contoh angka 42(desimal) akan
dikonversikan ke berbagai jenis sistem bilangan.

{{< alert context="info" text="bila bilangan dari desimal ke jenis sitem lain maka bagi dengan jumlah basisnya dan bila biner ke oktal ataupun heksadesimal lihat representasi bitnya." />}}

1. Desimal ke Biner : Angka 42(desimal) akan diubah ke biner dengan cara membagi angka tersebut
   dengan angka 2.

   {{< table "table-striped" >}}
   | JUMLAH | HASIL | SISA |
   |---------|------|-------------|
   | 42/2 | 21 | 0 |
   | 21/2 | 10 | 1 |
   | 10/2 | 5 | 0 |
   | 5/2 | 2 | 1 |
   | 2/2 | 1 | 0 |
   | 1/2 | 0 | 1 |

   {{< /table >}}

   Hasil yang didapat adalah = **101010(biner)**.

2. Biner ke Desimal : Angka 101010(biner) akan diubah ke decimal

   {{< table "table-striped" >}}
   | ANKA BINER | 1 | 0 | 1 | 0 | 1 | 0 |
   |---------|------|------| ---- | ------| ------ | --- |
   | **Pangakat 2** | 2^5 | 2^4 | 2^3 | 2^2 | 2^1 | 2^0 |
   | **Hasil** | 1(2^5) | 0(2^4) | 1(2^3) | 0(2^2) | 1(2^1) | 0(2^0) |

   {{< /table >}}

   Hasil yang didapat adalah = 32+0+8+0+2+0 **42(desimal)**.

## Tugas

<div class="alert alert-success" role="alert">
<h5 class="alert-heading"><i class="material-icons align-middle me-2">assignment</i>Tugas Praktikum</h5>
<hr>
<p class="mb-3"><strong>Kerjakan tugas berikut untuk memahami konversi bilangan:</strong></p>

<div class="row">
<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">1</div>
<p class="mb-2"><strong>Tugas 1:</strong></p>
<p>Ubah angka <code>64(desimal)</code> ke:</p>
<ul>
<li>Heksadesimal</li>
<li>Oktal</li>
</ul>
</div>

<div class="col-md-6">
<div class="badge bg-primary text-white mb-2">2</div>
<p class="mb-2"><strong>Tugas 2:</strong></p>
<p>Ubah angka <code>110011(biner)</code> ke:</p>
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
