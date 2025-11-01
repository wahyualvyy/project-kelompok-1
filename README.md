<<<<<<< HEAD
# Project Profile Universitas

Aplikasi profil universitas berbasis Flutter yang menampilkan informasi lengkap tentang universitas, fakultas, dan program studi.

## 📱 Fitur Aplikasi

- Profil Universitas
- Daftar Fakultas
- Informasi Program Studi
- Galeri Kampus
- Informasi Pendaftaran
- Berita dan Pengumuman

## 🚀 Teknologi yang Digunakan

- Flutter SDK
- Dart Programming Language
- Material Design
- State Management (akan ditentukan)
- REST API (akan diimplementasikan)

## 📥 Cara Install

1. **Clone Repository**
   ```bash
   git clone https://github.com/wahyualvyy/project-kelompok-1.git
   cd project-kelompok-1
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Jalankan Aplikasi**
   ```bash
   flutter run
   ```

## 📋 Prasyarat

Sebelum menjalankan aplikasi, pastikan telah menginstal:
- Flutter (versi terbaru)
- Android Studio / VS Code
- Android SDK
- iOS SDK (untuk pengembangan iOS)

## 🔧 Konfigurasi

1. Buka project di Android Studio atau VS Code
2. Pastikan semua dependencies terinstal
3. Konfigurasikan emulator atau hubungkan device fisik
4. Jalankan aplikasi dengan `flutter run`

## 👥 Tim Pengembang

- [Nama Anggota 1] - [Role]
- [Nama Anggota 2] - [Role]
- [Nama Anggota 3] - [Role]

## 📄 Lisensi

Project ini dilisensikan di bawah [Nama Lisensi] - lihat file [LICENSE.md](LICENSE.md) untuk detail.

## 📞 Kontak

Untuk pertanyaan dan informasi lebih lanjut, silakan hubungi:
- Email: [email]
- Website: [website]

## 🤝 Kontribusi

Kami sangat menghargai kontribusi Anda. Silakan fork repository ini dan buat pull request untuk mengajukan perubahan.

1. Fork repository
2. Buat branch fitur baru (`git checkout -b fitur/AmazingFeature`)
3. Commit perubahan (`git commit -m 'Menambahkan fitur baru'`)
4. Push ke branch (`git push origin fitur/AmazingFeature`)
5. Buat Pull Request

## 📝 Catatan Pengembangan

- Version 1.0.0
  - Initial release
  - Fitur dasar profil universitas
  - Navigasi dasar aplikasi
=======
# 🎓 Project Profile Universitas

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)

**Aplikasi mobile profil universitas yang modern dan informatif**

[Demo](#-screenshots) • [Fitur](#-fitur-aplikasi) • [Instalasi](#-instalasi) • [Kontribusi](#-kontribusi)

</div>

---

## 📖 Tentang Project

Aplikasi **Profile Universitas** adalah platform mobile berbasis Flutter yang dirancang untuk memberikan informasi lengkap dan terstruktur tentang universitas, mencakup profil institusi, fakultas, program studi, galeri kampus, hingga informasi pendaftaran. Aplikasi ini dikembangkan dengan antarmuka yang modern dan user-friendly untuk memudahkan calon mahasiswa, mahasiswa aktif, dan masyarakat umum dalam mengakses informasi universitas.

### ✨ Keunggulan

- 🎨 **Modern UI/UX** - Desain antarmuka yang clean dan intuitif
- ⚡ **Performance** - Aplikasi ringan dan responsif
- 📱 **Cross-Platform** - Berjalan di Android dan iOS
- 🔄 **Real-time Updates** - Informasi selalu ter-update
- 🌐 **Offline Support** - Dapat diakses tanpa koneksi internet (fitur tertentu)

---

## 🚀 Fitur Aplikasi

### Fitur Utama

| Fitur | Deskripsi |
|-------|-----------|
| 🏛️ **Profil Universitas** | Informasi lengkap tentang sejarah, visi, misi, dan akreditasi universitas |
| 🎓 **Daftar Fakultas** | Katalog semua fakultas dengan detail lengkap |
| 📚 **Program Studi** | Informasi kurikulum, prospek karir, dan dosen pengajar setiap prodi |
| 🖼️ **Galeri Kampus** | Foto dan video fasilitas kampus |
| 📝 **Informasi Pendaftaran** | Panduan lengkap proses pendaftaran mahasiswa baru |
| 📰 **Berita & Pengumuman** | Update terkini kegiatan kampus |

### Fitur Tambahan (Roadmap)

- [ ] Sistem notifikasi push
- [ ] Integrasi maps untuk lokasi kampus
- [ ] Virtual tour 360°
- [ ] Chatbot asisten informasi
- [ ] Multi-language support

---

## 🛠️ Teknologi

### Tech Stack

```
Frontend Framework : Flutter 3.x
Language          : Dart 3.x
State Management  : Provider / Bloc (akan ditentukan)
Backend API       : REST API
Database          : Firebase / PostgreSQL (akan diimplementasikan)
```

### Dependencies Utama

- `flutter_bloc` - State management
- `dio` - HTTP client
- `cached_network_image` - Image caching
- `shared_preferences` - Local storage
- `google_fonts` - Custom fonts

---

## 📥 Instalasi

### Prasyarat

Pastikan sistem Anda telah menginstal:

- ✅ [Flutter SDK](https://flutter.dev/docs/get-started/install) (v3.0 atau lebih baru)
- ✅ [Dart SDK](https://dart.dev/get-dart) (v3.0 atau lebih baru)
- ✅ Android Studio / VS Code dengan ekstensi Flutter
- ✅ Android SDK & Emulator (untuk Android)
- ✅ Xcode (untuk iOS - khusus macOS)

### Langkah Instalasi

1️⃣ **Clone Repository**

```bash
git clone https://github.com/wahyualvyy/project-kelompok-1.git
cd project-kelompok-1
```

2️⃣ **Install Dependencies**

```bash
flutter pub get
```

3️⃣ **Verifikasi Instalasi**

```bash
flutter doctor
```

4️⃣ **Jalankan Aplikasi**

```bash
# Debug mode
flutter run

# Release mode (Android)
flutter run --release

# Untuk device/emulator spesifik
flutter run -d <device_id>
```

### Troubleshooting

**Problem:** `flutter: command not found`
```bash
# Solusi: Tambahkan Flutter ke PATH
export PATH="$PATH:`pwd`/flutter/bin"
```

**Problem:** Gradle build failed
```bash
# Solusi: Clean dan rebuild
flutter clean
flutter pub get
flutter run
```

---

## 📁 Struktur Project

```
project-kelompok-1/
├── android/              # Platform Android
├── ios/                  # Platform iOS
├── lib/
│   ├── models/          # Data models
│   ├── screens/         # UI screens
│   ├── widgets/         # Reusable widgets
│   ├── services/        # API services
│   ├── utils/           # Helper functions
│   └── main.dart        # Entry point
├── assets/
│   ├── images/          # Image assets
│   └── fonts/           # Custom fonts
├── test/                # Unit tests
├── pubspec.yaml         # Dependencies
└── README.md
```

---

## 📸 Screenshots

<div align="center">

| Home Screen | Faculty List | Program Details |
|-------------|--------------|-----------------|
| ![Home](link) | ![Faculty](link) | ![Program](link) |

</div>

---

## 👥 Tim Pengembang

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/wahyualvyy">
        <img src="https://github.com/wahyualvyy.png" width="100px;" alt=""/><br />
        <sub><b>Wahyu Alvy</b></sub>
      </a><br />
      <sub>Front End Developer</sub>
    </td>
    <td align="center">
      <a href="#">
        <img src="https://media.licdn.com/dms/image/v2/D4D03AQFMLUqJ-UlldA/profile-displayphoto-shrink_800_800/B4DZU9ZQGYG8Ac-/0/1740491788452?e=1763596800&v=beta&t=fCDuPqcHP3knX-1fGKiI6mII7ipQVqxYsg_g2ePpAKE" width="100px;" alt=""/><br />
        <sub><b>Hafizh Fattah</b></sub>
      </a><br />
      <sub>UI/UX Designer</sub>
    </td>
    <td align="center">
      <a href="#">
        <img src="https://media.licdn.com/dms/image/v2/D5603AQGGyuWMlbbp2A/profile-displayphoto-scale_200_200/B56ZeCMTXbH8Ac-/0/1750235953229?e=1763596800&v=beta&t=KmT72ak4DUjBXmv9EEbMi6K8Rgz8krtzV0sstiqWMxw" width="100px;" alt=""/><br />
        <sub><b>Ditta Adelia</b></sub>
      </a><br />
      <sub>Front End Developer</sub>
    </td>
    <td align="center">
      <a href="#">
        <img src="https://avatars.githubusercontent.com/u/202598155?v=4" width="100px;" alt=""/><br />
        <sub><b>Luluk Asti</b></sub>
      </a><br />
      <sub>UI/UX Developer</sub>
    </td>
  </tr>
</table>

---

## 🤝 Kontribusi

Kami sangat menghargai setiap kontribusi! Berikut panduan untuk berkontribusi:

### Cara Berkontribusi

1. **Fork** repository ini
2. **Clone** fork Anda
   ```bash
   git clone https://github.com/wahyualvyy/project-kelompok-1.git
   ```
3. **Buat branch** untuk fitur baru
   ```bash
   git checkout -b feature/AmazingFeature
   ```
4. **Commit** perubahan Anda
   ```bash
   git commit -m 'Add: Menambahkan fitur amazing'
   ```
5. **Push** ke branch
   ```bash
   git push origin feature/AmazingFeature
   ```
6. Buat **Pull Request**

### Commit Convention

Gunakan format commit yang jelas:

```
Add: menambahkan fitur baru
Fix: memperbaiki bug
Update: memperbarui fitur existing
Remove: menghapus fitur
Docs: update dokumentasi
```

---

## 📝 Changelog

### Version 1.0.0 (November 2025)
- ✨ Initial release
- ✅ Implementasi fitur dasar profil universitas
- ✅ Navigasi dan routing aplikasi
- ✅ Integrasi UI components

### Version 0.1.0 (Oktober 2025)
- 🎉 Project initialization
- 📱 Setup Flutter project structure

---

## 📄 Lisensi

Project ini dilisensikan di bawah **MIT License**. Lihat file [LICENSE](LICENSE) untuk informasi lebih lanjut.

```
MIT License

Copyright (c) 2025 Project Kelompok 1

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software")...
```

---

## 📞 Kontak & Support

Jika Anda memiliki pertanyaan atau memerlukan bantuan:

- 📧 Email: [project.email@university.ac.id]
- 🌐 Website: [https://university.ac.id]
- 💬 Discord: [Link Server Discord]
- 🐛 Issues: [GitHub Issues](https://github.com/wahyualvyy/project-kelompok-1/issues)

---

## 🙏 Acknowledgments

Terima kasih kepada:

- Flutter Team untuk framework yang luar biasa
- Dosen pembimbing yang telah memberikan arahan
- Komunitas Flutter Indonesia
- Semua kontributor project ini

---

<div align="center">

**⭐ Jika project ini bermanfaat, jangan lupa berikan star! ⭐**

Made with ❤️ by Tim Kelompok 1

</div>
>>>>>>> main
