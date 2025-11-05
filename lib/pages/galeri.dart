import 'package:flutter/material.dart';
import 'galeri_detail_page.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri UMSIDA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: GaleriPage(),
    );
  }
}

class GaleriPage extends StatefulWidget {
  @override
  _GaleriPageState createState() => _GaleriPageState();
}

class _GaleriPageState extends State<GaleriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 252, 255),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMenuInformasi(),
            
            // --- BAGIAN FOTO DI BAWAH INI SUDAH DIHAPUS ---
            // SizedBox(height: 24),
            // _buildNotifikasiSection(), <-- Dihapus
            // SizedBox(height: 20),
            // ---------------------------------------------
            
            SizedBox(height: 20), // Hanya sisakan sedikit spasi di bawah
          ],
        ),
      ),
    );
  }

  // AppBar (Tidak berubah)
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xFF1565C0),
      title: Text(
        'Galeri',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          // Back action
        },
      ),
    );
  }

  // GANTI SELURUH FUNGSI _buildMenuInformasi ANDA DENGAN YANG INI:

Widget _buildMenuInformasi() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Judul "Galeri Selengkapnya" (Tetap sama)
      // Padding(
      //   padding: EdgeInsets.fromLTRB(16, 20, 16, 12),
      //   child: Text(
      //     'Galeri Selengkapnya',
      //     style: TextStyle(
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.black87,
      //     ),
      //   ),
      // ),

      SizedBox(height: 35),


      // --- PERUBAHAN LAYOUT DIMULAI DARI SINI ---

      // BARIS 1 (Isi 2 Kartu)
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _buildMenuCard(
              icon: Icons.account_balance,
              label: 'Gedung',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
            SizedBox(width: 12),
            _buildMenuCard(
              icon: Icons.local_library,
              label: 'Perpustakaan',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
          ],
        ),
      ),
      SizedBox(height: 12), // Jarak antar baris

      // BARIS 2 (Isi 2 Kartu)
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _buildMenuCard(
              icon: Icons.compare_arrows,
              label: 'Fasilitas Umum',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
            SizedBox(width: 12),
            _buildMenuCard(
              icon: Icons.local_hospital,
              label: 'Fasilitas Kesehatan',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
          ],
        ),
      ),
      SizedBox(height: 12), // Jarak antar baris

      // BARIS 3 (Isi 2 Kartu)
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _buildMenuCard(
              icon: Icons.account_box,
              label: 'Kegiatan Mahasiswa',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
            SizedBox(width: 12),
            _buildMenuCard(
              icon: Icons.flatware,
              label: 'Kantin',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
          ],
        ),
      ),
      SizedBox(height: 12), // Jarak antar baris

      // BARIS 4 (Isi 2 Kartu)
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _buildMenuCard(
              icon: Icons.admin_panel_settings,
              label: 'Parkir & Keamanan',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
            SizedBox(width: 12),
            _buildMenuCard(
              icon: Icons.settings_accessibility,
              label: 'Fasilitas Disabilitas',
              iconColor: Color(0xFF2196F3),
              textColor: Colors.black87,
            ),
          ],
        ),
      ),
    ],
  );
}

  // Mengatur bagian bawah tiap kategori
Widget _buildMenuCard({
  required IconData icon,
  required String label,
  required Color iconColor,
  required Color textColor,
}) {
  // Menghapus '\n' agar bisa dikirim sebagai judul
  final String title = label.replaceAll('\n', ' ');

  return Expanded(
    child: Material(
      color: const Color.fromARGB(0, 255, 255, 255),
      child: InkWell(
        onTap: () {
          // Pergi ke halaman baru dan kirimkan 'label' sebagai judul
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GaleriDetailPage(
                categoryTitle: title, // Kirim judul, misal: "Gedung"
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          
          // --- 1. MEMBUAT KARTU LEBIH TINGGI ---
          height: 180, 
          
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                
                // --- 2. MEMPERBESAR IKON ---
                child: Icon(icon, size: 36, color: iconColor), // <-- Ganti dari 24
              
              ),
              SizedBox(height: 8),
              Text(
                label, // Label di sini tetap boleh ada '\n'
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                  // --- 3. MEMPERBESAR TULISAN ---
                  fontSize: 14, // <-- Ganti dari 11 (atau sesuaikan)
                  
                  fontWeight: FontWeight.w600,
                  color: textColor,
                  height: 1.2,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


}