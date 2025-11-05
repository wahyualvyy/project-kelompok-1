import 'package:flutter/material.dart';

// 1. DATA MASTER UNTUK SEMUA FOTO
// (Ini hanya data contoh, ganti dengan data Anda)
// PENTING: tambahkan key 'category'
final List<Map<String, String>> allPhotosData = [
  // Kategori gedung
  {
    'imageUrl': 'assets/images/gedung1.jpg',
    'title': 'Gedung Rektorat',
    'location': 'Kampus 1',
    'category': 'Gedung', 
  },
  {
    'imageUrl': 'images/gedung2.jpg',
    'title': 'GKB 2',
    'location': 'Kampus 3',
    'category': 'Gedung',
  },
  {
    'imageUrl': 'images/gedung3.jpg',
    'title': 'Perpustakaan Pusat',
    'location': 'Kampus 1',
    'category': 'Gedung', 
  },
  {
    'imageUrl': 'images/gedung4.jpg',
    'title': 'Ruang Baca',
    'location': 'Kampus 1',
    'category': 'Gedung',
  },
  {
    'imageUrl': 'images/gedung5.jpg',
    'title': 'Kantin GKB 1',
    'location': 'Kampus 1',
    'category': 'Gedung', 
  },
  {
    'imageUrl': 'images/labgigi.jpg',
    'title': 'Lab Komputer',
    'location': 'Kampus 2',
    'category': 'Fasilitas Umum', 
  },
 
];


// 2. HALAMAN BARU (StatefulWidget)
class GaleriDetailPage extends StatefulWidget {
  final String categoryTitle;

  // Constructor: Wajib menerima judul kategori
  const GaleriDetailPage({Key? key, required this.categoryTitle})
      : super(key: key);

  @override
  _GaleriDetailPageState createState() => _GaleriDetailPageState();
}

class _GaleriDetailPageState extends State<GaleriDetailPage> {
  // Daftar foto yang sudah difilter
  List<Map<String, String>> filteredList = [];

  @override
  void initState() {
    super.initState();
    // Saat halaman ini pertama kali dibuka,
    // kita saring 'allPhotosData' berdasarkan 'categoryTitle' yang dikirim
    filteredList = allPhotosData
        .where((item) => item['category'] == widget.categoryTitle)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 252, 255), // BG off-white
      appBar: AppBar(
        // AppBar baru untuk halaman ini
        elevation: 0,
        backgroundColor: Color(0xFF1565C0),
        // Judul AppBar diambil dari kategori yang di-tap
        title: Text(widget.categoryTitle), 
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Aksi untuk kembali ke halaman sebelumnya
            Navigator.pop(context); 
          },
        ),
      ),
      body: _buildPhotoGrid(), // Body-nya adalah Grid Foto
    );
  }

  // 3. FUNGSI UNTUK MEMBUAT GRID FOTO
  // (Ini adalah _buildNotifikasiSection yang di-rename dan dimodifikasi)
  Widget _buildPhotoGrid() {
    // Cek jika tidak ada foto di kategori ini
    if (filteredList.isEmpty) {
      return Center(
        child: Text(
          'Belum ada foto di kategori ini.',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
      );
    }

    // Jika ada foto, tampilkan sebagai Grid 2 Kolom
    return GridView.count(
      padding: EdgeInsets.all(16), // Padding untuk seluruh grid

      crossAxisCount: 2, // 2 kolom
      crossAxisSpacing: 16, // Jarak horizontal antar kartu
      mainAxisSpacing: 16, // Jarak vertikal antar kartu

      // Rasio Lebar/Tinggi kartu (sesuaikan jika perlu)
      childAspectRatio: 0.75,

      // Ambil data dari 'filteredList'
      children: filteredList.map((item) {
        return _buildPropertyCard(
          imageUrl: item['imageUrl']!,
          title: item['title']!,
          location: item['location']!,
        );
      }).toList(),
    );
  }

  // 4. FUNGSI UNTUK KARTU FOTO
  // (Ini adalah _buildPropertyCard yang dipindah dari file sebelumnya)
  Widget _buildPropertyCard({
    required String imageUrl,
    required String title,
    required String location,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  imageUrl,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 130,
                      color: Colors.grey[300],
                      child: Icon(Icons.image, size: 50, color: Colors.grey),
                    );
                  },
                ),
              ),
              // Ikon 'like' sudah tidak ada, sesuai permintaan Anda
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  maxLines: 1, // Agar rapi jika judul panjang
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
                    SizedBox(width: 4),
                    Text(
                      '${location}',
                      style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}