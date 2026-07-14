# 🛡️ Virtual Network Security Project
### MikroTik • Docker • Nginx • Suricata IDS • MySQL

Project ini merupakan implementasi Virtualisasi dan Keamanan Jaringan menggunakan VirtualBox sebagai virtualisasi utama. Infrastruktur terdiri dari MikroTik CHR sebagai router, DMZ yang berisi beberapa Web Server Docker, Reverse Proxy Nginx, Database Server MySQL, serta Intrusion Detection System (IDS) menggunakan Suricata.

---

# 📖 Daftar Isi

- Tentang Project
- Topologi Jaringan
- Teknologi
- Struktur Project
- Fitur
- Cara Menjalankan
- Screenshot
- Author

---

# 📌 Tentang Project

Project ini dibuat untuk mensimulasikan implementasi jaringan perusahaan sederhana dengan konsep DMZ.

Tujuan project:

- Implementasi Virtualisasi menggunakan VirtualBox
- Routing menggunakan MikroTik CHR
- Reverse Proxy menggunakan Nginx
- Containerization menggunakan Docker
- Database menggunakan MySQL
- Monitoring keamanan menggunakan Suricata IDS

---

# 🌐 Topologi

> Tambahkan gambar berikut ke folder:

```
dokumentasi_pengerjaan/topologi.png
```

Kemudian README akan otomatis menampilkan gambar.

```markdown
![Topologi](dokumentasi_pengerjaan/topologi.png)
```

---

# 🏗 Topologi Network

```
                    Internet
                        │
                MikroTik CHR
                        │
        ┌───────────────┴───────────────┐
        │                               │
      DMZ Network                 LAN Database
      7.7.7.0/24                 192.168.56.0/24
        │
        │
    Docker Host
        │
 ┌───────────────┐
 │ Reverse Proxy │
 │     Nginx     │
 └──────┬────────┘
        │
 ┌──────┴──────────────┐
 │                     │
App1              App2
Docker            Docker

        │
   Suricata IDS
```

---

# 📁 Struktur Project

```
.
├── docker
│   ├── app1
│   ├── app2
│   └── docker-compose.yml
│
├── mikrotik
│   └── UAS-VDKJ.rsc
│
├── nginx
│   └── default.conf
│
├── sql
│   └── init.sql
│
├── suricata
│   ├── suricata.yaml
│   └── rules
│
└── README.md
```

---

# ⚙️ Teknologi

| Software | Keterangan |
|-----------|------------|
| VirtualBox | Virtual Machine |
| Ubuntu Server 24.04 | Docker Host |
| Docker | Container Platform |
| Docker Compose | Multi Container |
| MikroTik CHR | Routing |
| Nginx | Reverse Proxy |
| MySQL | Database |
| Suricata | Intrusion Detection System |

---

---

# 🔒 Fitur

✔ Routing MikroTik

✔ Reverse Proxy Nginx

✔ Docker Multi Container

✔ MySQL Database

✔ Suricata IDS

✔ DMZ Architecture

---

# 👨‍💻 Author

Aby Sofyan Hanafi - 0110224114

Adelia Juliani - 0110224113

Ayu Della Astuti - 0110224116

Revani - 0110224111

Reza Alfa Bani Pratama - 0110224110

Muhamad Fadil - 0110224112


STT Terpadu Nurul Fikri

Teknik Informatika

---

# ⭐ Repository

Jika repository ini bermanfaat, jangan lupa berikan ⭐ pada repository GitHub.
