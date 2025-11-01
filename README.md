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

- 🎨 **Modern UI/UX** - Desain antarmuka yang clean dan intuitif dengan animasi smooth
- ⚡ **Performance** - Aplikasi ringan dan responsif dengan optimasi tinggi
- 📱 **Cross-Platform** - Berjalan sempurna di Android dan iOS
- 🔄 **Real-time Updates** - Informasi selalu ter-update dengan sistem notifikasi
- 🌐 **Offline Support** - Dapat diakses tanpa koneksi internet (fitur tertentu)
- 🎭 **Interactive** - Bottom navigation, floating action button, dan gesture controls

---

## 🚀 Fitur Aplikasi

### Fitur Utama

| Fitur | Deskripsi |
|-------|-----------|
| 🏛️ **Profil Universitas** | Informasi lengkap tentang sejarah, visi, misi, dan akreditasi universitas |
| 🎓 **Daftar Fakultas** | Katalog semua fakultas dengan detail lengkap dan program unggulan |
| 📚 **Program Studi** | Informasi kurikulum, prospek karir, dan dosen pengajar setiap prodi |
| 🖼️ **Galeri Kampus** | Foto dan video fasilitas kampus dengan tampilan modern |
| 📝 **Informasi Pendaftaran** | Panduan lengkap proses pendaftaran mahasiswa baru (PMB) |
| 📰 **Berita & Pengumuman** | Update terkini kegiatan kampus dengan notifikasi real-time |
| 💬 **Testimoni Alumni** | Pengalaman dan kesuksesan alumni universitas |
| 🎯 **Quick Actions** | Akses cepat ke E-Learning, Akademik, dan layanan lainnya |

### Fitur Tambahan (Roadmap)

- [ ] Sistem notifikasi push real-time
- [ ] Integrasi Google Maps untuk lokasi kampus
- [ ] Virtual tour 360° fasilitas kampus
- [ ] Chatbot AI asisten informasi
- [ ] Multi-language support (ID/EN)
- [ ] Dark mode theme
- [ ] Pencarian advanced dengan filter
- [ ] Bookmark dan favorit

---

## 🛠️ Teknologi

### Tech Stack

```
Frontend Framework : Flutter 3.x
Language          : Dart 3.x
State Management  : StatefulWidget & Provider
UI Components     : Material Design 3
Animation         : Flutter Animation & CustomScrollView
Navigation        : Bottom Navigation Bar
```

### Dependencies Utama

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  
# Akan ditambahkan:
  # flutter_bloc: ^8.1.3      # State management
  # dio: ^5.3.3               # HTTP client
  # cached_network_image: ^3.3.0  # Image caching
  # shared_preferences: ^2.2.2    # Local storage
  # google_fonts: ^6.1.0      # Custom fonts
```

---

## 📥 Instalasi

### Prasyarat

Pastikan sistem Anda telah menginstal:

- ✅ [Flutter SDK](https://flutter.dev/docs/get-started/install) (v3.0 atau lebih baru)
- ✅ [Dart SDK](https://dart.dev/get-dart) (v3.0 atau lebih baru)
- ✅ Android Studio / VS Code dengan ekstensi Flutter & Dart
- ✅ Android SDK & Emulator (untuk Android)
- ✅ Xcode (untuk iOS - khusus macOS)
- ✅ Git untuk version control

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
Pastikan semua centang hijau ✓

4️⃣ **Jalankan Aplikasi**

```bash
# Debug mode (untuk development)
flutter run

# Release mode (untuk production)
flutter run --release

# Pilih device spesifik
flutter devices                    # Lihat daftar device
flutter run -d <device_id>         # Run di device tertentu

# Chrome/Web
flutter run -d chrome

# Android
flutter run -d android

# Linux Desktop
flutter run -d linux
```

### Troubleshooting

**Problem:** `flutter: command not found`
```bash
# Solusi: Tambahkan Flutter ke PATH
export PATH="$PATH:$HOME/flutter/bin"

# Untuk permanent (Linux/Mac)
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc
source ~/.bashrc
```

**Problem:** Gradle build failed
```bash
# Solusi: Clean dan rebuild
flutter clean
flutter pub get
flutter pub upgrade
flutter run
```

**Problem:** Web entrypoint error
```bash
# Solusi: Pastikan file main.dart ada dan lengkap
# Cek function main() ada di lib/main.dart
flutter clean
rm -rf build/
flutter pub get
flutter run
```

**Problem:** Android license not accepted
```bash
# Solusi: Accept Android licenses
flutter doctor --android-licenses
```

---

## 📁 Struktur Project

```
project-kelompok-1/
├── android/              # Platform Android
├── ios/                  # Platform iOS
├── linux/                # Platform Linux Desktop
├── web/                  # Platform Web
├── lib/
│   ├── main.dart        # Entry point & HomePage
│   ├── splash_screen.dart   # Splash screen dengan animasi
│   ├── models/          # Data models (akan ditambahkan)
│   ├── screens/         # UI screens (akan ditambahkan)
│   │   ├── profile_screen.dart
│   │   ├── faculty_screen.dart
│   │   └── gallery_screen.dart
│   ├── widgets/         # Reusable widgets (akan ditambahkan)
│   ├── services/        # API services (akan ditambahkan)
│   └── utils/           # Helper functions (akan ditambahkan)
├── assets/
│   ├── images/          # Image assets
│   │   └── logo.png
│   └── fonts/           # Custom fonts (opsional)
├── test/                # Unit & widget tests
├── pubspec.yaml         # Dependencies & assets
├── README.md            # Dokumentasi project
└── LICENSE              # MIT License
```

---

## 📸 Screenshots

<div align="center">

### 🎨 Preview Aplikasi

| Splash Screen | Home Screen | Navigation Menu |
|---------------|-------------|-----------------|
| ![Splash](https://via.placeholder.com/250x500/1565C0/ffffff?text=Splash+Screen) | ![Home](https://via.placeholder.com/250x500/0D47A1/ffffff?text=Home+Screen) | ![Menu](https://via.placeholder.com/250x500/01579B/ffffff?text=Menu) |

| Statistics | Program Unggulan | Latest News |
|------------|------------------|-------------|
| ![Stats](https://via.placeholder.com/250x500/2196F3/ffffff?text=Statistics) | ![Program](https://via.placeholder.com/250x500/4CAF50/ffffff?text=Programs) | ![News](https://via.placeholder.com/250x500/FF9800/ffffff?text=News) |

*Screenshots akan diupdate setelah aplikasi selesai*

</div>

---

## 👥 Tim Pengembang

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/wahyualvyy">
        <img src="https://github.com/wahyualvyy.png" width="100px;" alt=""/><br />
        <sub><b>Alex</b></sub>
      </a><br />
      <sub>Front End Developer</sub><br />
      <sub>🎨 UI Implementation</sub>
    </td>
    <td align="center">
      <a href="https://www.linkedin.com/in/hafizh-fattah/">
        <img src="https://media.licdn.com/dms/image/v2/D4D03AQFMLUqJ-UlldA/profile-displayphoto-shrink_800_800/B4DZU9ZQGYG8Ac-/0/1740491788452?e=1763596800&v=beta&t=fCDuPqcHP3knX-1fGKiI6mII7ipQVqxYsg_g2ePpAKE" width="100px;" alt=""/><br />
        <sub><b>Hafizh Fattah</b></sub>
      </a><br />
      <sub>UI/UX Designer</sub><br />
      <sub>🎨 Design System</sub>
    </td>
    <td align="center">
      <a href="https://www.linkedin.com/in/ditta-adelia/">
        <img src="https://media.licdn.com/dms/image/v2/D5603AQGGyuWMlbbp2A/profile-displayphoto-scale_200_200/B56ZeCMTXbH8Ac-/0/1750235953229?e=1763596800&v=beta&t=KmT72ak4DUjBXmv9EEbMi6K8Rgz8krtzV0sstiqWMxw" width="100px;" alt=""/><br />
        <sub><b>Ditta Adelia</b></sub>
      </a><br />
      <sub>Front End Developer</sub><br />
      <sub>💻 Feature Development</sub>
    </td>
    <td align="center">
      <a href="https://github.com/lulukasti">
        <img src="https://avatars.githubusercontent.com/u/202598155?v=4" width="100px;" alt=""/><br />
        <sub><b>Luluk Asti</b></sub>
      </a><br />
      <sub>UI/UX Developer</sub><br />
      <sub>🎯 User Experience</sub>
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
   git clone https://github.com/username-anda/project-kelompok-1.git
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
6. Buat **Pull Request** di GitHub

### Commit Convention

Gunakan format commit yang jelas dan konsisten:

```
Add: menambahkan fitur baru
Fix: memperbaiki bug
Update: memperbarui fitur existing
Remove: menghapus fitur
Docs: update dokumentasi
Style: perubahan styling/formatting
Refactor: refactoring code
Test: menambahkan test
Chore: update dependencies/config
```

**Contoh:**
```bash
git commit -m 'Add: Implementasi splash screen dengan animasi'
git commit -m 'Fix: Perbaikan bug pada navigation menu'
git commit -m 'Update: Improve performance homepage'
```

---

## 📝 Changelog

### Version 1.0.0 (Januari 2025)
- ✨ **Initial Release**
- ✅ Splash screen dengan animasi smooth
- ✅ Homepage modern dengan 10+ sections
- ✅ Bottom navigation bar
- ✅ Floating action button scroll to top
- ✅ Statistics cards dengan gradient
- ✅ Navigation menu 6 items
- ✅ Featured programs section
- ✅ Latest news dengan horizontal scroll
- ✅ Testimonials alumni
- ✅ Quick actions menu
- ✅ Footer professional dengan social media

### Version 0.2.0 (Desember 2024)
- 🎨 Design system implementation
- 📱 Responsive layout untuk berbagai screen size
- 🎭 Animation & transitions

### Version 0.1.0 (November 2024)
- 🎉 Project initialization
- 📱 Setup Flutter project structure
- 🔧 Configuration & dependencies

---

## 📄 Lisensi

Project ini dilisensikan di bawah **MIT License**. Lihat file [LICENSE](LICENSE) untuk informasi lebih lanjut.

```
MIT License

Copyright (c) 2025 Project Kelompok 1

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```

---

## 📞 Kontak & Support

Jika Anda memiliki pertanyaan atau memerlukan bantuan:

- 📧 **Email:** project.universitas@gmail.com
- 🌐 **Website:** [https://umsida.ac.id](https://umsida.ac.id)
- 💬 **Discussions:** [GitHub Discussions](https://github.com/wahyualvyy/project-kelompok-1/discussions)
- 🐛 **Issues:** [GitHub Issues](https://github.com/wahyualvyy/project-kelompok-1/issues)
- 📱 **WhatsApp:** [Grup Support](https://chat.whatsapp.com/your-link)

### 📣 Social Media

- [Instagram](https://instagram.com/umsida)
- [Facebook](https://facebook.com/umsida)
- [Twitter](https://twitter.com/umsida)
- [LinkedIn](https://linkedin.com/company/umsida)

---

## 🙏 Acknowledgments

Terima kasih kepada:

- **Flutter Team** - Untuk framework yang luar biasa
- **Dosen Pembimbing** - Untuk bimbingan dan arahan
- **Komunitas Flutter Indonesia** - Untuk support dan knowledge sharing
- **Stack Overflow Community** - Untuk solusi berbagai masalah teknis
- **Material Design Team** - Untuk design guidelines
- **Semua Kontributor** - Yang telah membantu project ini

---

## 📚 Resources & Learning

### Dokumentasi Official
- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Documentation](https://dart.dev/guides)
- [Material Design 3](https://m3.material.io/)

### Tutorial & Guides
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
- [Widget of the Week](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG)
- [Flutter Community Medium](https://medium.com/flutter-community)

### Tools & Extensions
- [FlutterFlow](https://flutterflow.io/) - Visual builder
- [Dart DevTools](https://dart.dev/tools/dart-devtools) - Debugging tools
- [Flutter Inspector](https://docs.flutter.dev/development/tools/devtools/inspector) - Widget inspector

---

## 🎯 Roadmap Project

### Q1 2025
- [x] Setup project struktur
- [x] Implementasi splash screen
- [x] Implementasi homepage
- [ ] Detail page fakultas
- [ ] Detail page program studi
- [ ] Galeri kampus

### Q2 2025
- [ ] Integrasi API backend
- [ ] Implementasi search & filter
- [ ] Push notifications
- [ ] Dark mode support
- [ ] Unit & integration tests

### Q3 2025
- [ ] Performance optimization
- [ ] Accessibility improvements
- [ ] Multi-language support
- [ ] Virtual tour 360°
- [ ] Beta testing

### Q4 2025
- [ ] Production release
- [ ] App Store deployment
- [ ] Play Store deployment
- [ ] Marketing & promotion

---

<div align="center">

## ⭐ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=wahyualvyy/project-kelompok-1&type=Date)](https://star-history.com/#wahyualvyy/project-kelompok-1&Date)

---

**⭐ Jika project ini bermanfaat, jangan lupa berikan star! ⭐**

**🔥 Made with ❤️ by Tim Kelompok 1 🔥**

[⬆ Back to Top](#-project-profile-universitas)

</div>