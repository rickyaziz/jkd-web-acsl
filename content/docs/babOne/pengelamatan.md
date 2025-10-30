---
weight: 9
title: "Pengalamatan IP"
description: "Pengalamatan (IPv4 dan IPv6 dan Subnetting)"
icon: "language"
date: "2025-09-07T17:46:03+07:00"
lastmod: "2025-09-07T17:46:03+07:00"
toc: true
---

Pada bab pengalamatan ini, praktikan akan mempelajari tentang sejarah perkembangan IPv4
dan IPv6, konsep dasar dari kedua protokol ini, serta cara kerja subnetting dalam jaringan
komputer. Asisten praktikum atau praktikan dapat membaca tujuan dan persyaratan
praktikum bab ini agar praktikum dapat berjalan sesuai prosedur.

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami konsep dasar IPv4 dan IPv6** | Bab ini menjelaskan perbedaan antara IPv4 dan IPv6, fungsi masing-masing, serta cara kerjanya dalam jaringan komputer. |
| **Memahami proses subnetting, CIDR, dan VLSM** | Bab ini memandu praktikan memahami konsep subnetting, termasuk Classless Inter-Domain Routing (CIDR) dan Variable Length Subnet Mask (VLSM), serta cara menghitung subnet mask dan membagi jaringan menjadi subnet yang lebih efisien. |
| **Meningkatkan pengetahuan tentang cara kerja protokol** | Meningkatkan pengetahuan tentang cara kerja protokol jaringan dan bagaimana mengoptimalkan alokasi alamat IP menggunakan teknik subnetting yang tepat. |
{{< /table >}}

## Persyaratan

Disarankan praktikan menggunakan hardware dan software sesuai pada dokumentasi ini. Apabila terdapat versi yang lumayan lampau dari versi yang direcommendasikan atau hardware yang lawas maka sebaiknya bertanya kepada Asisten Mengajar Shift.

{{< table "table-striped" >}}
| HARDWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
|--|--|
| **PC / Laptop CPU** | **≥ 4 Cores** |
| **PC / Laptop RAM** | **≥ 4 GB** |
| **PC / Laptop Storage** | **≥ 10 GB** |
{{< /table >}}

{{< table "table-striped" >}}
| SOFTWARE YANG DIBUTUHKAN PRAKTIKUM | JENIS |
|--|--|
| **Windows OS** | **≥ Versi 7** |
| **Cisco Packet Tracer** | **≥ Versi 8.2** |
{{< /table >}}

## Pendahuluan

Pengalamatan IP (Internet Protocol Addressing) adalah proses pemberian
alamat numerik unik yang digunakan untuk mengidentifikasi perangkat dalam
jaringan komputer. Alamat IP berperan sebagai identitas untuk perangkat (seperti
komputer, server, ponsel, atau perangkat IoT) dalam jaringan, yang memungkinkan
perangkat tersebut untuk berkomunikasi dan bertukar data. Setiap alamat IP terdiri dari dua komponen utama:

1. Network ID: Menunjukkan jaringan tempat perangkat terhubung.
2. Host ID: Menunjukkan perangkat spesifik dalam jaringan tersebut.
