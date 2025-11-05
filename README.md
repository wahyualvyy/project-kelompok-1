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
- 🌐 **Offline Support** - Dapat diakses tanpa koneksi internet (fitur tertentu)
- 🎭 **Interactive** - Bottom navigation, floating action button, dan gesture controls

---

## 🚀 Fitur Aplikasi

### Fitur Utama

| Fitur                     | Deskripsi                                                                 |
| ------------------------- | ------------------------------------------------------------------------- |
| 🏛️ **Profil Universitas** | Informasi lengkap tentang sejarah, visi, misi, dan akreditasi universitas |
| 🎓 **Daftar Fakultas**    | Katalog semua fakultas dengan detail lengkap dan program unggulan         |
| 📚 **Program Studi**      | Informasi kurikulum, prospek karir, dan dosen pengajar setiap prodi       |
| 🖼️ **Galeri Kampus**      | Foto dan video fasilitas kampus dengan tampilan modern                    |

### Fitur Tambahan (Roadmap)

- [ ] Multi-language support (ID/EN)
- [ ] Dark mode theme

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

---

## 📸 Screenshots

<div align="center">

### 🎨 Preview Aplikasi

| Splash Screen                                                                   | Home Screen                                                                 | Navigation Menu                                                      |
| ------------------------------------------------------------------------------- | --------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| ![Splash](https://via.placeholder.com/250x500/1565C0/ffffff?text=Splash+Screen) | ![Home](https://via.placeholder.com/250x500/0D47A1/ffffff?text=Home+Screen) | ![Menu](https://via.placeholder.com/250x500/01579B/ffffff?text=Menu) |

| Statistics                                                                  | Program Unggulan                                                            | Latest News                                                          |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| ![Stats](https://via.placeholder.com/250x500/2196F3/ffffff?text=Statistics) | ![Program](https://via.placeholder.com/250x500/4CAF50/ffffff?text=Programs) | ![News](https://via.placeholder.com/250x500/FF9800/ffffff?text=News) |

_Screenshots akan diupdate setelah aplikasi selesai_

</div>

---

## 👥 Tim Pengembang

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/wahyualvyy">
        <img src="https://github.com/wahyualvyy.png" width="100px;" alt=""/>
        <br />
        <sub><b>Alex</b></sub>
      </a>
      <br />
      <sub>Front End Developer</sub>
      <br />
      <sub>🎨 Implementasi UI</sub>
    </td>
    <td align="center">
      <a href="https://www.linkedin.com/in/hafizh-fattah/">
        <img src="https://media.licdn.com/dms/image/v2/D4D03AQFMLUqJ-UlldA/profile-displayphoto-shrink_800_800/B4DZU9ZQGYG8Ac-/0/1740491788452?e=1763596800&v=beta&t=fCDuPqcHP3knX-1fGKiI6mII7ipQVqxYsg_g2ePpAKE" width="100px;" alt=""/>
        <br />
        <sub><b>Hafizh Fattah</b></sub>
      </a>
      <br />
      <sub>UI/UX Designer</sub>
      <br />
      <sub>🎨 Desain Sistem & UI</sub>
    </td>
    <td align="center">
      <a href="https://www.linkedin.com/in/ditta-adelia/">
        <img src="https://media.licdn.com/dms/image/v2/D5603AQGGyuWMlbbp2A/profile-displayphoto-scale_200_200/B56ZeCMTXbH8Ac-/0/1750235953229?e=1763596800&v=beta&t=KmT72ak4DUjBXmv9EEbMi6K8Rgz8krtzV0sstiqWMxw" width="100px;" alt=""/>
        <br />
        <sub><b>Ditta Adelia</b></sub>
      </a>
      <br />
      <sub>Front End Developer</sub>
      <br />
      <sub>💻 Pengembangan Fitur</sub>
    </td>
    <td align="center">
      <a href="https://github.com/lulukasti">
        <img src="https://avatars.githubusercontent.com/u/202598155?v=4" width="100px;" alt=""/>
        <br />
        <sub><b>Luluk Asti</b></sub>
      </a>
      <br />
      <sub>UI/UX Researcher</sub>
      <br />
      <sub>📊 Riset Pengguna</sub>
    </td>
    <td align="center">
      <a href="https://github.com/PohongKejuGratisRoti">
        <img src="https://avatars.githubusercontent.com/u/127527537?v=4" width="100px;" alt=""/>
        <br />
        <sub><b>Arry Wahyu</b></sub>
      </a>
      <br />
      <sub>UI/UX Designer</sub>
      <br />
      <sub>🗺️ Wireframing & User Flow</sub>
    </td>
    <td align="center">
      <a href="https://github.com/sherlymr337-star">
        <img src="https://png.pngtree.com/png-clipart/20250820/original/pngtree-whatsapp-default-profile-photo-vector-png-image_22204331.png" width="100px;" alt=""/>
        <br />
        <sub><b>Sherly</b></sub>
      </a>
      <br />
      <sub>UI/UX Designer</sub>
      <br />
      <sub>🎨 Prototyping</sub>
    </td>
    <td align="center">
      <a href="https://github.com/nadiatsabita21">
        <img src="https://png.pngtree.com/png-clipart/20250820/original/pngtree-whatsapp-default-profile-photo-vector-png-image_22204331.png" width="100px;" alt=""/>
        <br />
        <sub><b>Nadia Tsabita</b></sub>
      </a>
      <br />
      <sub>UI/UX Researcher</sub>
      <br />
      <sub>🧪 Usability Testing</sub>
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
- [x] Detail page fakultas
- [x] Detail page program studi
- [x] Galeri kampus

### Q2 2025

- [ ] Integrasi API backend
- [ ] Implementasi search & filter
- [ ] Push notifications
- [ ] Dark mode support
- [ ] Unit & integration tests

---

**⭐ Jika project ini bermanfaat, jangan lupa berikan star! ⭐**

**🔥 Made with ❤️ by Tim Kelompok 1 🔥**

[⬆ Back to Top](#-project-profile-universitas)

</div>
