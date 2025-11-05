import 'package:flutter/material.dart';

class VisiMisiPage extends StatefulWidget {
  @override
  _VisiMisiPageState createState() => _VisiMisiPageState();
}

class _VisiMisiPageState extends State<VisiMisiPage> {
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
                _buildVisiSection(),
                SizedBox(height: 25),
                _buildMisiSection(),
                SizedBox(height: 25),
                _buildTujuanSection(),
                SizedBox(height: 25),
                _buildSasaranSection(),
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
          'Visi Misi UMSIDA',
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
            'Komitmen dan Arah UMSIDA',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Visi, Misi, Tujuan, dan Sasaran yang menjadi pedoman dalam pengembangan institusi',
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

  Widget _buildVisiSection() {
    return _buildMainSection(
      icon: Icons.visibility,
      title: 'Visi',
      iconColor: Color(0xFF1565C0),
      children: [
        _buildContentBox(
          content:
              'Menjadi universitas unggul dan berdaya saing global yang mengintegrasikan ilmu pengetahuan, teknologi, dan seni berdasarkan nilai-nilai Islam untuk kesejahteraan masyarakat.',
          backgroundColor: Color(0xFF1565C0),
        ),
        SizedBox(height: 16),
        _buildDetailItem(
          icon: Icons.check_circle,
          title: 'Fokus Utama',
          description:
              'Keunggulan akademik dan relevansi dengan kebutuhan industri global dengan landasan nilai-nilai Islam yang kuat.',
        ),
      ],
    );
  }

  Widget _buildMisiSection() {
    return _buildMainSection(
      icon: Icons.trending_up,
      title: 'Misi',
      iconColor: Color(0xFF0288D1),
      children: [
        _buildMisiItem(
          number: '1',
          title: 'Pendidikan Berkualitas',
          description:
              'Menyelenggarakan pendidikan tinggi yang berkualitas tinggi dengan kurikulum yang relevan dan metode pembelajaran inovatif berbasis teknologi.',
        ),
        SizedBox(height: 12),
        _buildMisiItem(
          number: '2',
          title: 'Riset dan Pengembangan',
          description:
              'Mengembangkan penelitian dan pengabdian kepada masyarakat yang memberikan kontribusi nyata bagi kemajuan bangsa dan dunia.',
        ),
        SizedBox(height: 12),
        _buildMisiItem(
          number: '3',
          title: 'Nilai-nilai Islam',
          description:
              'Membangun karakter lulusan yang berintegritas, berakhlak mulia, dan berdedikasi tinggi dengan pemahaman mendalam tentang nilai-nilai Islam.',
        ),
        SizedBox(height: 12),
        _buildMisiItem(
          number: '4',
          title: 'Pemberdayaan Masyarakat',
          description:
              'Melaksanakan pengabdian kepada masyarakat melalui berbagai program yang berkelanjutan dan berdampak positif bagi pembangunan sosial dan ekonomi.',
        ),
      ],
    );
  }

  Widget _buildTujuanSection() {
    return _buildMainSection(
      icon: Icons.center_focus_strong,
      title: 'Tujuan',
      iconColor: Color(0xFF0D47A1),
      children: [
        _buildTujuanItem(
          number: 'A',
          title: 'Lulusan Kompeten',
          description:
              'Menghasilkan lulusan yang kompeten, profesional, dan mampu bersaing di tingkat nasional maupun internasional.',
        ),
        SizedBox(height: 12),
        _buildTujuanItem(
          number: 'B',
          title: 'Penelitian Berkelanjutan',
          description:
              'Mengembangkan pusat-pusat unggulan penelitian yang fokus pada solusi permasalahan sosial dan ekonomi masyarakat.',
        ),
        SizedBox(height: 12),
        _buildTujuanItem(
          number: 'C',
          title: 'Kemitraan Strategis',
          description:
              'Membangun kerjasama strategis dengan institusi dalam dan luar negeri untuk peningkatan mutu pendidikan dan penelitian.',
        ),
      ],
    );
  }

  Widget _buildSasaranSection() {
    return _buildMainSection(
      icon: Icons.flag,
      title: 'Sasaran',
      iconColor: Color(0xFF1976D2),
      children: [
        _buildSasaranItem(
          icon: Icons.school_outlined,
          title: 'Akademik',
          items: [
            'Peningkatan mutu program studi dan akreditasi',
            'Pengembangan kurikulum sesuai standar internasional',
            'Peningkatan kualitas tenaga pendidik dan peneliti',
          ],
        ),
        SizedBox(height: 16),
        _buildSasaranItem(
          icon: Icons.science,
          title: 'Penelitian & Inovasi',
          items: [
            'Peningkatan jumlah dan kualitas publikasi ilmiah',
            'Pengembangan teknologi dan inovasi yang bermanfaat',
            'Peningkatan pendanaan penelitian dan pengabdian masyarakat',
          ],
        ),
        SizedBox(height: 16),
        _buildSasaranItem(
          icon: Icons.people,
          title: 'Sumber Daya Manusia',
          items: [
            'Peningkatan kompetensi sivitas akademika',
            'Pengembangan budaya organisasi yang positif',
            'Peningkatan kesejahteraan tenaga kerja',
          ],
        ),
        SizedBox(height: 16),
        _buildSasaranItem(
          icon: Icons.domain,
          title: 'Infrastruktur',
          items: [
            'Penyediaan fasilitas belajar mengajar yang modern',
            'Pengembangan teknologi informasi dan komunikasi',
            'Peningkatan kualitas lingkungan kampus',
          ],
        ),
      ],
    );
  }

  Widget _buildMainSection({
    required IconData icon,
    required String title,
    required Color iconColor,
    required List<Widget> children,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4, bottom: 16),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: iconColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: iconColor, size: 24),
                ),
                SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          ...children,
        ],
      ),
    );
  }

  Widget _buildContentBox({
    required String content,
    required Color backgroundColor,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            backgroundColor.withOpacity(0.1),
            backgroundColor.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: backgroundColor.withOpacity(0.2),
        ),
      ),
      child: Text(
        content,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          height: 1.8,
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildDetailItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFF1565C0).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Color(0xFF1565C0), size: 20),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMisiItem({
    required String number,
    required String title,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF0288D1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTujuanItem({
    required String number,
    required String title,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF0D47A1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSasaranItem({
    required IconData icon,
    required String title,
    required List<String> items,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF1976D2).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: Color(0xFF1976D2), size: 20),
              ),
              SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          ...List.generate(
            items.length,
            (index) => Padding(
              padding: EdgeInsets.only(left: 42, bottom: index < items.length - 1 ? 8 : 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '• ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF1976D2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      items[index],
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}