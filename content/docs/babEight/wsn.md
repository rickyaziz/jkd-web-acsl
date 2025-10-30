---
weight: 45
title: "Wireless Sensor Network"
description: "Konsep, Manfaat, Rangkaian Dan Jenis Koneksi Mikrokontroler"
icon: "sensors"
date: "2025-10-29T19:34:58+07:00"
lastmod: "2025-10-29T19:34:58+07:00"
toc: true
---

Bab 8 ini akan membahas praktikum tentang jaringan sensor nirkabel (WSN), yang mencakup instalasi sensor untuk membangun jaringan, serta konfigurasi seperti pengaturan alamat node, protokol komunikasi, dan topologi jaringan.

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami dasar – dasar WSN** | Pada bab ini membantu praktikan untuk memahami dasar-dasar dari WSN. |
| **Merancang dan mengkonfigurasi mikrokontroler dalam system WSN** | Bab ini memandu praktikan langkah demi langkah untuk mengkonfigurasi mikrokontroler dalam system WSN. |
{{< /table >}}

## Persyaratan

Disarankan praktikan menggunakan hardware dan software sesuai pada dokumentasi ini. Apabila terdapat versi yang lumayan lampau dari versi yang direcommendasikan atau hardware yang lawas maka sebaiknya bertanya kepada Asisten Mengajar Shift.

{{< table "table-striped" >}}
| HARDWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
|---------|---------|
| **PC / Laptop CPU** | ≥ 4 Cores |
| **PC / Laptop RAM** | ≥ 4 GB |
| **PC / Laptop Storage** | ≥ 10 GB |  
| **1 Buah Mikrokontroler** | ESP32 |
| **1 Protoboard** | - |
| **4 Buah LED** | - |  
| **Segulung Kabel GPIO** | - |  
{{< /table >}}

{{< table "table-striped" >}}
| SOFTWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
| ------------ | --------------- |
| **Windows OS** | ≥ Versi 11 |
| **Arduino IDE** | ≥ Versi 2.3 |
{{< /table >}}

## WSN

Konsep WSN
Wireless Sensor Network (WSN) atau jaringan Sensor tanpa kabel (Nirkabel)
adalah sistem yang terdiri dari banyak sensor kecil yang dilengkapi dengan
kemampuan untuk saling berkomunikasi tanpa menggunakan kabel.. Sensor-sensor
ini ditempatkan di berbagai lokasi untuk memantau dan mengumpulkan data dari
lingkungan sekitar, seperti suhu, kelembapan, cahaya, getaran, dan lain-lain. Data
yang dikumpulkan kemudian dikirim melalui jaringan nirkabel ke pusat pengolahan
data atau sink node, di mana data tersebut dapat dianalisis dan diambil tindakan yang
diperlukan.

## Manfaat WSN

Berikut adalah beberapa keuntungan yang dapat diperoleh dengan menggunakan
WSN:

### Pemantauan Lingkungan

WSN dapat dirancang untuk mengawasi faktor lingkungan seperti suhu,
kelembapan, cahaya, tekanan, dan polusi udara. Ini berguna dalam aplikasi seperti:

1.  Pemantauan Cuaca: Mengumpulkan data meteorologi untuk prediksi cuaca dan analisis iklim.
2.  Deteksi Kebakaran Hutan: Memantau kondisi yang dapat menyebabkan kebakaran dan memberikan peringatan dini.

### Pengelolaan Kota Pintar

WSN membantu dalam pengelolaan kota pintar dengan mengumpulkan data yang berguna untuk berbagai aplikasi perkotaan:

1.  Pengelolaan Lalu Lintas: Memantau dan mengelola arus lalu lintas untuk mengurangi kemacetan.
2.  Pengelolaan Sampah: Mengoptimalkan pengumpulan sampah berdasarkan pemantauan tingkat pengisian tempat sampah.

### Kesehatan dan Medis

WSN membantu dalam pengelolaan kota pintar dengan mengumpulkan data yang berguna untuk berbagai aplikasi Kesehatan dan medis:

1.  Pemantauan Kondisi Vital Pasien: Memantau kondisi organ vital seperti jantung, paru-paru, denyut nadi, dan lain-lain dari jauh.
2.  Manajemen Obat: Memantau apakah kondisi obat pasien mencukupi atau tidak.

## Rangkaian Mikrokontroler

## Jenis Mode Koneksi Pada Mikrokontroler

Jenis mode koneksi pada mikrokontroler dibagi menjadi 2 mode, yaitu :

### Mode Station (STA)

Dalam mode station, ESP bertindak sebagai klien yang terhubung ke access
point (AP) atau router Wi-Fi yang ada. Mode ini mirip dengan cara kerja perangkat
seperti smartphone atau laptop saat terhubung ke jaringan Wi-Fi. Dalam mode ini,
ESP dapat mengakses internet dan berkomunikasi dengan perangkat lain di jaringan
yang sama.

### Mode Access Point (AP)

Dalam mode access point, ESP bertindak sebagai titik akses Wi-Fi,
memungkinkan perangkat lain untuk terhubung langsung ke ESP. Mode ini sering
digunakan untuk membuat jaringan lokal di mana ESP adalah pusatnya.
