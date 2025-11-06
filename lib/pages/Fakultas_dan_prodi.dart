import 'package:flutter/material.dart';

class FakultasDanProdi extends StatefulWidget {
  @override
  _FakultasDanProdiState createState() => _FakultasDanProdiState();
}

class _FakultasDanProdiState extends State<FakultasDanProdi> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildHeaderSection(),
                SizedBox(height: 30),
                _buildFakultasSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 120,
      floating: false,
      pinned: true,
      backgroundColor: Color(0xFF1565C0),
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'Fakultas & Program Studi',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF1565C0),
                Color(0xFF1976D2),
                Color(0xFF0D47A1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1565C0),
            Color(0xFF1976D2),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF1565C0).withOpacity(0.4),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 15,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Image.asset(
              'assets/icons/logo-umsida.png',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Struktur Akademik UMSIDA',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text(
            '8 Fakultas dengan 35+ Program Studi',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 13,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFakultasSection() {
    final List<Map<String, dynamic>> fakultasList = [
      {
        'nama': 'Fakultas Saintek',
        'icon': Icons.engineering,
        'color': Color(0xFF1565C0),
        'prodi': [
          ProgramData(
            name: 'Prodi Informatika',
            description:
                'Program Informatika berfokus pada dasar-dasar ilmu komputer, pemrograman, struktur data, algoritma, dan rekayasa perangkat lunak. Mahasiswa mempelajari pengembangan aplikasi, basis data, jaringan komputer, serta topik modern seperti kecerdasan buatan dan pembelajaran mesin.',
          ),
          ProgramData(
            name: 'Prodi Elektro',
            description:
                'Program Teknik Elektro mempelajari elektronika, sistem kontrol, rangkaian listrik, dan telekomunikasi. Mahasiswa dilatih dalam perancangan sirkuit, pemrograman mikrokontroler, serta analisis sistem tenaga.',
          ),
          ProgramData(
            name: 'Prodi Mesin',
            description:
                'Program Teknik Mesin mengajarkan mekanika, termodinamika, desain mesin, dan pemodelan sistem mekanis. Mahasiswa belajar menggambar teknik, penggunaan perangkat lunak CAD/CAM, metode produksi.',
          ),
        ]
      },
      {
        'nama': 'Fakultas FBHIS',
        'icon': Icons.language,
        'color': Color(0xFF0288D1),
        'prodi': [
          ProgramData(
            name: 'Prodi Bahasa Inggris',
            description:
                'Program Bahasa Inggris berfokus pada penguasaan bahasa secara produktif dan reseptif, termasuk keterampilan berbicara, menulis, membaca, dan mendengar. Selain linguistik dan teori bahasa, mahasiswa mempelajari penerjemahan dan literatur.',
          ),
          ProgramData(
            name: 'Prodi Jepang',
            description:
                'Program Studi Jepang menyajikan pembelajaran bahasa dan budaya Jepang, sastra, serta aspek hubungan internasional dan bisnis Jepang. Mahasiswa mempelajari tata bahasa dan percakapan.',
          ),
          ProgramData(
            name: 'Prodi Bahasa Arab',
            description:
                'Program Bahasa Arab mempelajari kemampuan berbahasa Arab secara aktif dan pasif. Mencakup linguistik Arab, sastra klasik dan modern, serta komunikasi dalam konteks bisnis dan diplomasi.',
          ),
        ]
      },
      {
        'nama': 'Fakultas FISIP',
        'icon': Icons.people,
        'color': Color(0xFF0D47A1),
        'prodi': [
          ProgramData(
            name: 'Prodi Ilmu Komunikasi',
            description:
                'Program Ilmu Komunikasi membahas teori komunikasi, media, jurnalistik, dan strategi komunikasi publik. Mahasiswa belajar merancang kampanye media, riset media, serta etika jurnalistik.',
          ),
          ProgramData(
            name: 'Prodi Ilmu Pemerintahan',
            description:
                'Program Ilmu Pemerintahan mempelajari teori birokrasi, kebijakan publik, administrasi negara, dan proses politik. Materi menekankan analisis kebijakan dan tata kelola.',
          ),
          ProgramData(
            name: 'Prodi Sosiologi',
            description:
                'Program Sosiologi meneliti struktur sosial, budaya, stratifikasi, dan dinamika kolektif. Mahasiswa dilatih metodologi penelitian kualitatif dan kuantitatif untuk menganalisis fenomena sosial.',
          ),
        ]
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, bottom: 16),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF1565C0).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.account_balance, color: Color(0xFF1565C0), size: 24),
              ),
              SizedBox(width: 12),
              Text(
                'Daftar Fakultas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: fakultasList.length,
            itemBuilder: (context, index) {
              final fakultas = fakultasList[index];
              return _buildFakultasCard(
                nama: fakultas['nama'],
                icon: fakultas['icon'],
                color: fakultas['color'],
                prodi: List<ProgramData>.from(fakultas['prodi']),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFakultasCard({
    required String nama,
    required IconData icon,
    required Color color,
    required List<ProgramData> prodi,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          tilePadding: EdgeInsets.all(16),
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          title: Text(
            nama,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          subtitle: Text(
            '${prodi.length} Program Studi',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  prodi.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: index < prodi.length - 1 ? 16 : 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 4, right: 12),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(Icons.check, size: 12, color: Colors.white),
                            ),
                            Expanded(
                              child: Text(
                                prodi[index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: EdgeInsets.only(left: 28),
                          child: Text(
                            prodi[index].description,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgramData {
  final String name;
  final String description;

  const ProgramData({required this.name, required this.description});
}