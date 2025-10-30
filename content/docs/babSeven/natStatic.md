---
weight: 41
title: "NAT Static"
description: "Topologi, Konfigurasi, Dan Tes Konektivitas NAT Static"
icon: "sync_alt"
date: "2025-10-25T10:42:58+07:00"
lastmod: "2025-10-25T10:42:58+07:00"
toc: true
---

## Topologi

<center>
<img src="/images/babSeven/b.1.PNG" alt="Gambar B.1 - Topologi" class="img-fluid mb-3 responsive-img">
</center>

Adapun konfigurasi IP sumber dan IP tujuan untuk topologi jaringan dapat dilihat melalui tabel di bawah ini.

<center>
<img src="/images/babSeven/b.2.PNG" alt="Gambar B.2 - Tabel IP" class="img-fluid mb-3 responsive-img">
</center>

## Konfigurasi Router

1.  Konfigurasi memasukan IP R1.
    <center>
    <img src="/images/babSeven/b.3.PNG" alt="Gambar B.3 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

2.  Konfigurasi memasukan IP R2.
    <center>
    <img src="/images/babSeven/b.4.PNG" alt="Gambar B.4 - Konfig Router" class="img-fluid mb-3 responsive-img">
    </center>

## Konfigurasi NAT Statis

1.  Berikut konfigurasi NAT statis pada router R2 pada cisco packet tracer.
    <center>
    <img src="/images/babSeven/b.5.PNG" alt="Gambar B.5 - Konfig NAT" class="img-fluid mb-3 responsive-img">
    </center>

{{% alert context="warning"%}}

<p>
20.20.20.2 = IP Private yang akan ditranslate ke IP Public
</p>
<p>
200.200.200.2 = IP Public
</p>
<p>
IP NAT Outside = kita pilih Interface yang menjadi IP Public
</p>
<p>
IP NAT Inside = kita pilih Interface yang menjadi IP Private
</p>
<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Jika bingung, silahkan bertanya ke Asisten shift mengajar.</small>
{{% /alert %}}
