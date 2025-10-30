---
weight: 18
title: "VLAN"
description: "Konsep VLAN, Trunking, dan Koneksi Intervlan"
icon: "hub"
date: "2025-10-17T21:48:16+07:00"
lastmod: "2025-10-17T21:48:16+07:00"
toc: true
---

Pada bab 3, praktikan mempelajari konsep VLAN (Virtual Local Area Network), yaitu teknologi
jaringan yang memungkinkan perangkat dalam jaringan yang sama dikelompokkan secara
logis, meskipun perangkat tersebut terletak di lokasi fisik yang berbeda.

## Tujuan

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Praktikan dapat memahami materi atau konsep yang dibahas secara menyeluruh.** | Bagian ini bertujuan untuk memberi pemahaman tenang definisi dan fungsi VLAN. |
| **Praktikan dapat Mengkonfigurasi VLAN pada switch.** | Bagian ini bertujuan untuk melakukan konfigurasi VLAN pada switch, serta memahami perintah yang digunakan dalam konfigurasi. |
| **Praktikan mampu menggunakan router untuk inter-VLAN Routing.** | Bagian ini bertujuan untuk bagaimana cara
mengatur routing antar VLAN menggunakan router. |
{{< /table >}}

## Persyaratan

Disarankan praktikan menggunakan hardware dan software sesuai pada dokumentasi ini.
Apabila terdapat versi yang lumayan lampau dari versi yang direcommendasikan atau
hardware yang lawas maka sebaiknya bertanya kepada Asisten Mengajar Shift.

{{< table "table-striped" >}}
| HARDWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
|---------|-------|
| **PC / Laptop CPU** | **≥ 4 Cores** |
| **PC / Laptop RAM** | **≥ 8 GB** |
| **PC / Laptop Storage** | **≥ 10 GB** |
{{< /table >}}

{{< table "table-striped" >}}
| SOFTWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
|---------|-------|
| **Windows OS** | **≥ Versi 7** |
| **Cisco Packet Tracer** | **≥ Versi 8.2** |
{{< /table >}}

## VLAN

VLAN (Virtual LAN) adalah teknologi jaringan yang memungkinkan untuk
membagi satu jaringan fisik menjadi beberapa jaringan logis secara virtual. Dengan
VLAN, kita dapat membuat beberapa kelompok perangkat dalam jaringan yang
berbeda-beda, meskipun perangkat-perangkat tersebut terhubung dalam jaringan
fisik yang sama. Setiap kelompok perangkat yang terpisah ini akan terisolasi dari
kelompok lainnya, sehingga memberikan fleksibilitas, keamanan, dan efisiensi dalam
manajemen jaringan.

## Trunking

Trunking adalah sebuah konsep dalam jaringan komputer yang mengacu pada
pengiriman lalu lintas data dari beberapa VLAN melalui satu kabel fisik atau jalur
komunikasi. Ini memungkinkan penggabungan lalu lintas dari beberapa VLAN ke
dalam satu koneksi, yang sering kali digunakan dalam jaringan yang kompleks atau
besar.

## Koneksi intervlan

Inter-VLAN connection adalah proses mengizinkan perangkat dalam VLAN
yang berbeda untuk saling berkomunikasi di dalam jaringan yang sama. Dalam
jaringan yang menggunakan VLAN, perangkat di VLAN yang berbeda secara alami
tidak dapat berkomunikasi langsung karena mereka berada dalam segmen jaringan
yang terisolasi. Untuk memungkinkan interaksi antar-VLAN, diperlukan pengaturan
khusus dan mekanisme routing atau switching.
