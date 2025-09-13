---
weight: 9
title: 'Pengalamatan IP'
description: 'Pengalamatan IP pada IPV4 dan IPV6 '
icon: 'language'
date: '2025-09-07T17:46:03+07:00'
lastmod: '2025-09-07T17:46:03+07:00'
toc: true
---

Pada bab pengelamatan ini, praktikan akan mempelajari tentang sejarah perkembangan IPv4
dan IPv6, konsep dasar dari kedua protokol ini, serta cara kerja subnetting dalam jaringan
komputer. Asisten praktikum atau praktikan dapat membaca tujuan dan persyaratan
praktikum bab ini agar praktikum dapat berjalan sesuai prosedur.

{{< table "table-striped" >}}
| TUJUAN | PENJELASAN |
|---------|------|
| **Memahami konsep dasar IPv4 dan IPv6** | Bab ini menjelaskan perbedaan antara IPv4 dan IPv6, fungsi masing-masing, serta cara kerjanya dalam jaringan komputer. |
| **Memahami proses subnetting, CIDR, dan VLSM** | Bab ini memandu praktikan memahami konsep subnetting, termasuk Classless Inter-Domain Routing (CIDR) dan Variable Length Subnet Mask (VLSM), serta cara menghitung subnet mask dan membagi jaringan menjadi subnet yang lebih efisien. |
| **Meningkatkan pengetahuan tentang cara kerja protocol** | Meningkatkan pengetahuan tentang cara kerja protokol jaringan dan bagaimana mengoptimalkan alokasi alamat IP menggunakan teknik subnetting yang tepat.|
{{< /table >}}

## Pendahuluan

Pengalamatan IP (Internet Protocol Addressing) adalah proses pemberian
alamat numerik unik yang digunakan untuk mengidentifikasi perangkat dalam
jaringan komputer. Alamat IP berperan sebagai identitas untuk perangkat (seperti
komputer, server, ponsel, atau perangkat IoT) dalam jaringan, yang memungkinkan
perangkat tersebut untuk berkomunikasi dan bertukar data.
Setiap alamat IP terdiri dari dua komponen utama:

1. Network ID: Menunjukkan jaringan tempat perangkat terhubung.
2. Host ID: Menunjukkan perangkat spesifik dalam jaringan tersebut.

Ada dua versi utama dari alamat IP: IPv4 dan IPv6.
