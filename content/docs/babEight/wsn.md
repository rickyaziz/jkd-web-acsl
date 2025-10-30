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

<center>
    <img src="/images/babEight/b.3.PNG" alt="Gambar B.3 - Rangkaian" >
</center>

<span></span>

## Jenis Mode Koneksi Pada Mikrokontroler

Jenis mode koneksi pada mikrokontroler dibagi menjadi 2 mode, yaitu :

### Mode Station (STA)

Dalam mode station, ESP bertindak sebagai klien yang terhubung ke access
point (AP) atau router Wi-Fi yang ada. Mode ini mirip dengan cara kerja perangkat
seperti smartphone atau laptop saat terhubung ke jaringan Wi-Fi. Dalam mode ini,
ESP dapat mengakses internet dan berkomunikasi dengan perangkat lain di jaringan
yang sama.

{{< tabs tabTotal="3" tabRightAlign="" >}}
{{% tab tabName="Example" %}}

<center>
    <img src="/images/babEight/b.1.PNG" alt="Gambar B.1 - STA Code" >
    </center>
{{% /tab %}}

{{% tab tabName="Code ESP8266" %}}

```
#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>

const char *ssid = "LAB LANJUT 125";  // Ganti dengan nama WiFi yang tersedia
const char *password = "12345678";  // Ganti dengan password WiFi yang tersedia

ESP8266WebServer server(80);

uint8_t led1_pin = 5;
uint8_t led2_pin = 4;
uint8_t led3_pin = 2;
uint8_t led4_pin = 14;

bool led1_status = false, led2_status = false, led3_status = false, led4_status = false;

void setup() {
  Serial.begin(115200);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.print(ssid);

  // Setup LED Pins
  pinMode(led1_pin, OUTPUT);
  pinMode(led2_pin, OUTPUT);
  pinMode(led3_pin, OUTPUT);
  pinMode(led4_pin, OUTPUT);

  // Connect to WiFi
  WiFi.begin(ssid, password);

  // Wait until the ESP8266 connects to WiFi
  int attempts = 0;
  while (WiFi.status() != WL_CONNECTED && attempts < 20) {  // Limit the attempts to avoid endless loop
    delay(1000);
    Serial.print(".");
    attempts++;
  }

  if (WiFi.status() == WL_CONNECTED) {
    Serial.println();
    Serial.print("WiFi Connected! IP Address: ");
    Serial.println(WiFi.localIP());  // Display the local IP address
  } else {
    Serial.println();
    Serial.println("Failed to connect to WiFi!");
    return;  // Stop if WiFi connection failed
  }

  // Start web server and define routes
  server.on("/", handle_OnConnect);
  server.on("/led1on", handle_led1on);
  server.on("/led1off", handle_led1off);
  server.on("/led2on", handle_led2on);
  server.on("/led2off", handle_led2off);
  server.on("/led3on", handle_led3on);
  server.on("/led3off", handle_led3off);
  server.on("/led4on", handle_led4on);
  server.on("/led4off", handle_led4off);
  server.onNotFound(handle_NotFound);

  server.begin();
  Serial.println("HTTP Server Started");
}

void loop() {
  server.handleClient();

  // LED control based on status
  digitalWrite(led1_pin, led1_status ? HIGH : LOW);
  digitalWrite(led2_pin, led2_status ? HIGH : LOW);
  digitalWrite(led3_pin, led3_status ? HIGH : LOW);
  digitalWrite(led4_pin, led4_status ? HIGH : LOW);
}

void handle_OnConnect() {
  Serial.println("Client Connected");
  server.send(200, "text/html", HTML());
}

void handle_led1on() {
  Serial.println("LED1 ON");
  led1_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led1off() {
  Serial.println("LED1 OFF");
  led1_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led2on() {
  Serial.println("LED2 ON");
  led2_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led2off() {
  Serial.println("LED2 OFF");
  led2_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led3on() {
  Serial.println("LED3 ON");
  led3_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led3off() {
  Serial.println("LED3 OFF");
  led3_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led4on() {
  Serial.println("LED4 ON");
  led4_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led4off() {
  Serial.println("LED4 OFF");
  led4_status = false;
  server.send(200, "text/html", HTML());
}

void handle_NotFound() {
  server.send(404, "text/plain", "Not found");
}

String HTML() {
  String msg = "<!DOCTYPE html> <html>\n";
  msg += "<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\">\n";
  msg += "<title>Kontrol LED</title>\n";
  msg += "<style>html{font-family:Helvetica; display:inline-block; margin:0px auto; text-align:center;}\n";
  msg += "body{margin-top: 50px;} h1{color: #444444; margin: 50px auto 30px;} h3{color:#444444; margin-bottom: 50px;}\n";
  msg += ".button{display:block; width:80px; background-color:#f48100; border:none; color:white; padding: 13px 30px; text-decoration:none; font-size:25px; margin: 0px auto 35px; cursor:pointer; border-radius:4px;}\n";
  msg += ".button-on{background-color:#f48100;}\n";
  msg += ".button-on:active{background-color:#f48100;}\n";
  msg += ".button-off{background-color:#26282d;}\n";
  msg += ".button-off:active{background-color:#26282d;}\n";
  msg += "</style>\n";
  msg += "</head>\n";
  msg += "<body>\n";
  msg += "<h1>ESP8266 Web Server</h1>\n";
  msg += "<h3>Mode Station (STA) Connected</h3>\n";

  msg += (led1_status == false) ? "<p>LED1 Status: OFF</p><a class=\"button button-on\" href=\"/led1on\">ON</a>\n" : "<p>LED1 Status: ON</p><a class=\"button button-off\" href=\"/led1off\">OFF</a>\n";
  msg += (led2_status == false) ? "<p>LED2 Status: OFF</p><a class=\"button button-on\" href=\"/led2on\">ON</a>\n" : "<p>LED2 Status: ON</p><a class=\"button button-off\" href=\"/led2off\">OFF</a>\n";
  msg += (led3_status == false) ? "<p>LED3 Status: OFF</p><a class=\"button button-on\" href=\"/led3on\">ON</a>\n" : "<p>LED3 Status: ON</p><a class=\"button button-off\" href=\"/led3off\">OFF</a>\n";
  msg += (led4_status == false) ? "<p>LED4 Status: OFF</p><a class=\"button button-on\" href=\"/led4on\">ON</a>\n" : "<p>LED4 Status: ON</p><a class=\"button button-off\" href=\"/led4off\">OFF</a>\n";

  msg += "</body>\n";
  msg += "</html>\n";
  return msg;
}

```

{{% /tab %}}

{{% tab tabName="Code ESP32" %}}

```
#include <WiFi.h>
#include <WebServer.h>

const char *ssid = "LAB LANJUT 125";  // Ganti dengan nama WiFi yang tersedia
const char *password = "12345678";  // Ganti dengan password WiFi yang tersedia

WebServer server(80);

uint8_t led1_pin = 2;
uint8_t led2_pin = 4;
uint8_t led3_pin = 5;
uint8_t led4_pin = 12;

bool led1_status = false, led2_status = false, led3_status = false, led4_status = false;

void setup() {
  Serial.begin(115200);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.print(ssid);

  // Setup LED Pins
  pinMode(led1_pin, OUTPUT);
  pinMode(led2_pin, OUTPUT);
  pinMode(led3_pin, OUTPUT);
  pinMode(led4_pin, OUTPUT);

  // Connect to WiFi
  WiFi.begin(ssid, password);

  // Wait until the ESP32 connects to WiFi
  int attempts = 0;
  while (WiFi.status() != WL_CONNECTED && attempts < 20) {  // Limit the attempts to avoid endless loop
    delay(1000);
    Serial.print(".");
    attempts++;
  }

  if (WiFi.status() == WL_CONNECTED) {
    Serial.println();
    Serial.print("WiFi Connected! IP Address: ");
    Serial.println(WiFi.localIP());  // Display the local IP address
  } else {
    Serial.println();
    Serial.println("Failed to connect to WiFi!");
    return;  // Stop if WiFi connection failed
  }

  // Start web server and define routes
  server.on("/", handle_OnConnect);
  server.on("/led1on", handle_led1on);
  server.on("/led1off", handle_led1off);
  server.on("/led2on", handle_led2on);
  server.on("/led2off", handle_led2off);
  server.on("/led3on", handle_led3on);
  server.on("/led3off", handle_led3off);
  server.on("/led4on", handle_led4on);
  server.on("/led4off", handle_led4off);
  server.onNotFound(handle_NotFound);

  server.begin();
  Serial.println("HTTP Server Started");
}

void loop() {
  server.handleClient();

  // LED control based on status
  digitalWrite(led1_pin, led1_status ? HIGH : LOW);
  digitalWrite(led2_pin, led2_status ? HIGH : LOW);
  digitalWrite(led3_pin, led3_status ? HIGH : LOW);
  digitalWrite(led4_pin, led4_status ? HIGH : LOW);
}

void handle_OnConnect() {
  Serial.println("Client Connected");
  server.send(200, "text/html", HTML());
}

void handle_led1on() {
  Serial.println("LED1 ON");
  led1_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led1off() {
  Serial.println("LED1 OFF");
  led1_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led2on() {
  Serial.println("LED2 ON");
  led2_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led2off() {
  Serial.println("LED2 OFF");
  led2_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led3on() {
  Serial.println("LED3 ON");
  led3_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led3off() {
  Serial.println("LED3 OFF");
  led3_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led4on() {
  Serial.println("LED4 ON");
  led4_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led4off() {
  Serial.println("LED4 OFF");
  led4_status = false;
  server.send(200, "text/html", HTML());
}

void handle_NotFound() {
  server.send(404, "text/plain", "Not found");
}

String HTML() {
  String msg = "<!DOCTYPE html> <html>\n";
  msg += "<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\">\n";
  msg += "<title>Kontrol LED</title>\n";
  msg += "<style>html{font-family:Helvetica; display:inline-block; margin:0px auto; text-align:center;}\n";
  msg += "body{margin-top: 50px;} h1{color: #444444; margin: 50px auto 30px;} h3{color:#444444; margin-bottom: 50px;}\n";
  msg += ".button{display:block; width:80px; background-color:#f48100; border:none; color:white; padding: 13px 30px; text-decoration:none; font-size:25px; margin: 0px auto 35px; cursor:pointer; border-radius:4px;}\n";
  msg += ".button-on{background-color:#f48100;}\n";
  msg += ".button-on:active{background-color:#f48100;}\n";
  msg += ".button-off{background-color:#26282d;}\n";
  msg += ".button-off:active{background-color:#26282d;}\n";
  msg += "</style>\n";
  msg += "</head>\n";
  msg += "<body>\n";
  msg += "<h1>ESP32 Web Server</h1>\n";
  msg += "<h3>Mode Station (STA) Connected</h3>\n";

  msg += (led1_status == false) ? "<p>LED1 Status: OFF</p><a class=\"button button-on\" href=\"/led1on\">ON</a>\n" : "<p>LED1 Status: ON</p><a class=\"button button-off\" href=\"/led1off\">OFF</a>\n";
  msg += (led2_status == false) ? "<p>LED2 Status: OFF</p><a class=\"button button-on\" href=\"/led2on\">ON</a>\n" : "<p>LED2 Status: ON</p><a class=\"button button-off\" href=\"/led2off\">OFF</a>\n";
  msg += (led3_status == false) ? "<p>LED3 Status: OFF</p><a class=\"button button-on\" href=\"/led3on\">ON</a>\n" : "<p>LED3 Status: ON</p><a class=\"button button-off\" href=\"/led3off\">OFF</a>\n";
  msg += (led4_status == false) ? "<p>LED4 Status: OFF</p><a class=\"button button-on\" href=\"/led4on\">ON</a>\n" : "<p>LED4 Status: ON</p><a class=\"button button-off\" href=\"/led4off\">OFF</a>\n";

  msg += "</body>\n";
  msg += "</html>\n";
  return msg;
}

```

{{% /tab %}}

{{< /tab >}}

{{% alert context="warning"%}}

<p>
Pastikan isi <strong>ssid</strong> dan <strong>password</strong> sesuai dengan nama WiFi dan Password WiFi yang digunakan.
</p>

<small class="text-muted"><i class="material-icons align-middle me-1">info</i>Jika bingung, silahkan bertanya ke Asisten shift mengajar.</small>
{{% /alert %}}

### Mode Access Point (AP)

Dalam mode access point, ESP bertindak sebagai titik akses Wi-Fi,
memungkinkan perangkat lain untuk terhubung langsung ke ESP. Mode ini sering
digunakan untuk membuat jaringan lokal di mana ESP adalah pusatnya.

{{< tabs tabTotal="3" tabRightAlign="" >}}
{{% tab tabName="Example" %}}

<center>
    <img src="/images/babEight/b.2.PNG" alt="Gambar B.2 - AP Code" >
</center>
{{% /tab %}}

{{% tab tabName="Code ESP8266" %}}

```
#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>

const char* ap_ssid = "ACSL JAYA";  // Access Point SSID
const char* ap_password = "12345678";
uint8_t max_connections = 8;      // Max number of connections
int current_stations = 0, new_stations = 0;
ESP8266WebServer server(80);

uint8_t led1_pin = 5;
uint8_t led2_pin = 4;
uint8_t led3_pin = 2;
uint8_t led4_pin = 14;

bool led1_status = false, led2_status = false, led3_status = false, led4_status = false;

void setup() {
  Serial.begin(115200);
  Serial.println();

  pinMode(led1_pin, OUTPUT);
  pinMode(led2_pin, OUTPUT);
  pinMode(led3_pin, OUTPUT);
  pinMode(led4_pin, OUTPUT);

  // Setup the access point
  if(WiFi.softAP(ap_ssid, ap_password, 1, false, max_connections) == true) {
    Serial.print("Access Point is Created with SSID: ");
    Serial.println(ap_ssid);
    Serial.print("Max Connections Allowed: ");
    Serial.println(max_connections);
    Serial.print("Access Point IP: ");
    Serial.println(WiFi.softAPIP());
  } else {
    Serial.println("Unable to Create Access Point");
  }

  // Define HTTP server routes
  server.on("/", handle_OnConnect);
  server.on("/led1on", handle_led1on);
  server.on("/led1off", handle_led1off);
  server.on("/led2on", handle_led2on);
  server.on("/led2off", handle_led2off);
  server.on("/led3on", handle_led3on);
  server.on("/led3off", handle_led3off);
  server.on("/led4on", handle_led4on);
  server.on("/led4off", handle_led4off);
  server.onNotFound(handle_NotFound);

  server.begin();
  Serial.println("HTTP Server Started");
}

void loop() {
  server.handleClient();

  new_stations = WiFi.softAPgetStationNum();

  if(current_stations < new_stations) {  // Device is connected
    current_stations = new_stations;
    Serial.print("New Device Connected to SoftAP... Total Connections: ");
    Serial.println(current_stations);
  }

  if(current_stations > new_stations) {  // Device is disconnected
    current_stations = new_stations;
    Serial.print("Device disconnected from SoftAP... Total Connections: ");
    Serial.println(current_stations);
  }

  // Control LED states
  digitalWrite(led1_pin, led1_status ? HIGH : LOW);
  digitalWrite(led2_pin, led2_status ? HIGH : LOW);
  digitalWrite(led3_pin, led3_status ? HIGH : LOW);
  digitalWrite(led4_pin, led4_status ? HIGH : LOW);
}

void handle_OnConnect() {
  Serial.println("Client Connected");
  server.send(200, "text/html", HTML());
}

void handle_led1on() {
  Serial.println("LED1 ON");
  led1_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led1off() {
  Serial.println("LED1 OFF");
  led1_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led2on() {
  Serial.println("LED2 ON");
  led2_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led2off() {
  Serial.println("LED2 OFF");
  led2_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led3on() {
  Serial.println("LED3 ON");
  led3_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led3off() {
  Serial.println("LED3 OFF");
  led3_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led4on() {
  Serial.println("LED4 ON");
  led4_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led4off() {
  Serial.println("LED4 OFF");
  led4_status = false;
  server.send(200, "text/html", HTML());
}

void handle_NotFound() {
  server.send(404, "text/plain", "Not found");
}

String HTML() {
  String msg = "<!DOCTYPE html><html>\n";
  msg += "<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\">\n";
  msg += "<title>Kontrol LED</title>\n";
  msg += "<style>html {font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}\n";
  msg += "body {margin-top: 50px;} h1 {color: #444444; margin: 50px auto 30px;} h3 {color:#444444; margin-bottom: 50px;}\n";
  msg += ".button {display: block; width: 80px; background-color: #f48100; border: none; color: white; padding: 13px 30px; text-decoration: none; font-size: 25px; margin: 0px auto 35px; cursor: pointer; border-radius: 4px;}\n";
  msg += ".button-on {background-color: #f48100;}\n";
  msg += ".button-on:active {background-color: #f48100;}\n";
  msg += ".button-off {background-color: #26282d;}\n";
  msg += ".button-off:active {background-color: #26282d;}\n";
  msg += "</style>\n";
  msg += "</head>\n";
  msg += "<body>\n";
  msg += "<h1>ESP8266 Web Server</h1>\n";
  msg += "<h3>Using Access Point (AP) mode</h3>\n";

  // LED controls
  if(led1_status == false) {
    msg += "<p>LED1 Status: OFF</p><a class=\"button button-on\" href=\"/led1on\">ON</a>\n";
  } else {
    msg += "<p>LED1 Status: ON</p><a class=\"button button-off\" href=\"/led1off\">OFF</a>\n";
  }
  if(led2_status == false) {
    msg += "<p>LED2 Status: OFF</p><a class=\"button button-on\" href=\"/led2on\">ON</a>\n";
  } else {
    msg += "<p>LED2 Status: ON</p><a class=\"button button-off\" href=\"/led2off\">OFF</a>\n";
  }
  if(led3_status == false) {
    msg += "<p>LED3 Status: OFF</p><a class=\"button button-on\" href=\"/led3on\">ON</a>\n";
  } else {
    msg += "<p>LED3 Status: ON</p><a class=\"button button-off\" href=\"/led3off\">OFF</a>\n";
  }
  if(led4_status == false) {
    msg += "<p>LED4 Status: OFF</p><a class=\"button button-on\" href=\"/led4on\">ON</a>\n";
  } else {
    msg += "<p>LED4 Status: ON</p><a class=\"button button-off\" href=\"/led4off\">OFF</a>\n";
  }

  msg += "</body>\n";
  msg += "</html>\n";

  return msg;
}

```

{{% /tab %}}

{{% tab tabName="Code ESP32" %}}

```
#include <WiFi.h>
#include <WebServer.h>

const char* ap_ssid = "ACSL JAYA";  // Access Point SSID
const char* ap_password = "12345678";
uint8_t max_connections = 8;      // Max number of connections
int current_stations = 0, new_stations = 0;
WebServer server(80);

uint8_t led1_pin = 5;
uint8_t led2_pin = 4;
uint8_t led3_pin = 2;
uint8_t led4_pin = 14;

bool led1_status = false, led2_status = false, led3_status = false, led4_status = false;

void setup() {
  Serial.begin(115200);
  Serial.println();

  pinMode(led1_pin, OUTPUT);
  pinMode(led2_pin, OUTPUT);
  pinMode(led3_pin, OUTPUT);
  pinMode(led4_pin, OUTPUT);

  // Setup the access point
  if(WiFi.softAP(ap_ssid, ap_password, 1, false, max_connections) == true) {
    Serial.print("Access Point is Created with SSID: ");
    Serial.println(ap_ssid);
    Serial.print("Max Connections Allowed: ");
    Serial.println(max_connections);
    Serial.print("Access Point IP: ");
    Serial.println(WiFi.softAPIP());
  } else {
    Serial.println("Unable to Create Access Point");
  }

  // Define HTTP server routes
  server.on("/", handle_OnConnect);
  server.on("/led1on", handle_led1on);
  server.on("/led1off", handle_led1off);
  server.on("/led2on", handle_led2on);
  server.on("/led2off", handle_led2off);
  server.on("/led3on", handle_led3on);
  server.on("/led3off", handle_led3off);
  server.on("/led4on", handle_led4on);
  server.on("/led4off", handle_led4off);
  server.onNotFound(handle_NotFound);

  server.begin();
  Serial.println("HTTP Server Started");
}

void loop() {
  server.handleClient();

  new_stations = WiFi.softAPgetStationNum();

  if(current_stations < new_stations) {  // Device is connected
    current_stations = new_stations;
    Serial.print("New Device Connected to SoftAP... Total Connections: ");
    Serial.println(current_stations);
  }

  if(current_stations > new_stations) {  // Device is disconnected
    current_stations = new_stations;
    Serial.print("Device disconnected from SoftAP... Total Connections: ");
    Serial.println(current_stations);
  }

  // Control LED states
  digitalWrite(led1_pin, led1_status ? HIGH : LOW);
  digitalWrite(led2_pin, led2_status ? HIGH : LOW);
  digitalWrite(led3_pin, led3_status ? HIGH : LOW);
  digitalWrite(led4_pin, led4_status ? HIGH : LOW);
}

void handle_OnConnect() {
  Serial.println("Client Connected");
  server.send(200, "text/html", HTML());
}

void handle_led1on() {
  Serial.println("LED1 ON");
  led1_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led1off() {
  Serial.println("LED1 OFF");
  led1_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led2on() {
  Serial.println("LED2 ON");
  led2_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led2off() {
  Serial.println("LED2 OFF");
  led2_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led3on() {
  Serial.println("LED3 ON");
  led3_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led3off() {
  Serial.println("LED3 OFF");
  led3_status = false;
  server.send(200, "text/html", HTML());
}

void handle_led4on() {
  Serial.println("LED4 ON");
  led4_status = true;
  server.send(200, "text/html", HTML());
}

void handle_led4off() {
  Serial.println("LED4 OFF");
  led4_status = false;
  server.send(200, "text/html", HTML());
}

void handle_NotFound() {
  server.send(404, "text/plain", "Not found");
}

String HTML() {
  String msg = "<!DOCTYPE html><html>\n";
  msg += "<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\">\n";
  msg += "<title>Kontrol LED</title>\n";
  msg += "<style>html {font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}\n";
  msg += "body {margin-top: 50px;} h1 {color: #444444; margin: 50px auto 30px;} h3 {color:#444444; margin-bottom: 50px;}\n";
  msg += ".button {display: block; width: 80px; background-color: #f48100; border: none; color: white; padding: 13px 30px; text-decoration: none; font-size: 25px; margin: 0px auto 35px; cursor: pointer; border-radius: 4px;}\n";
  msg += ".button-on {background-color: #f48100;}\n";
  msg += ".button-on:active {background-color: #f48100;}\n";
  msg += ".button-off {background-color: #26282d;}\n";
  msg += ".button-off:active {background-color: #26282d;}\n";
  msg += "</style>\n";
  msg += "</head>\n";
  msg += "<body>\n";
  msg += "<h1>ESP32 Web Server</h1>\n";
  msg += "<h3>Using Access Point (AP) mode</h3>\n";

  // LED controls
  if(led1_status == false) {
    msg += "<p>LED1 Status: OFF</p><a class=\"button button-on\" href=\"/led1on\">ON</a>\n";
  } else {
    msg += "<p>LED1 Status: ON</p><a class=\"button button-off\" href=\"/led1off\">OFF</a>\n";
  }
  if(led2_status == false) {
    msg += "<p>LED2 Status: OFF</p><a class=\"button button-on\" href=\"/led2on\">ON</a>\n";
  } else {
    msg += "<p>LED2 Status: ON</p><a class=\"button button-off\" href=\"/led2off\">OFF</a>\n";
  }
  if(led3_status == false) {
    msg += "<p>LED3 Status: OFF</p><a class=\"button button-on\" href=\"/led3on\">ON</a>\n";
  } else {
    msg += "<p>LED3 Status: ON</p><a class=\"button button-off\" href=\"/led3off\">OFF</a>\n";
  }
  if(led4_status == false) {
    msg += "<p>LED4 Status: OFF</p><a class=\"button button-on\" href=\"/led4on\">ON</a>\n";
  } else {
    msg += "<p>LED4 Status: ON</p><a class=\"button button-off\" href=\"/led4off\">OFF</a>\n";
  }

  msg += "</body>\n";
  msg += "</html>\n";

  return msg;
}

```

{{< /tab >}}

{{< /tab >}}
