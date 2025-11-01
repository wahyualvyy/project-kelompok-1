import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _fabAnimationController;
  bool _showFab = false;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _fabAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _scrollController.addListener(() {
      if (_scrollController.offset > 200 && !_showFab) {
        setState(() => _showFab = true);
        _fabAnimationController.forward();
      } else if (_scrollController.offset <= 200 && _showFab) {
        setState(() => _showFab = false);
        _fabAnimationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fabAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildModernAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildHeroBanner(),
                SizedBox(height: 25),
                _buildWelcomeCard(),
                SizedBox(height: 30),
                _buildAnimatedStatistics(),
                SizedBox(height: 35),
                _buildNavigationMenu(),
                SizedBox(height: 35),
                _buildFeaturedPrograms(),
                SizedBox(height: 35),
                _buildLatestNews(),
                SizedBox(height: 35),
                _buildTestimonials(),
                SizedBox(height: 35),
                _buildQuickActions(),
                SizedBox(height: 40),
                _buildFooter(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ScaleTransition(
        scale: _fabAnimationController,
        child: FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(
              0,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          child: Icon(Icons.arrow_upward),
          backgroundColor: Color(0xFF1565C0),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  // Modern AppBar dengan efek blur
  Widget _buildModernAppBar() {
    return SliverAppBar(
      expandedHeight: 140,
      floating: false,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: EdgeInsets.only(left: 20, bottom: 16),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'UMSIDA',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              'Excellence in Education',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF1565C0),
                Color(0xFF0D47A1),
                Color(0xFF01579B),
              ],
            ),
          ),
          child: Stack(
            children: [
              // Animated circles background
              Positioned(
                top: -50,
                right: -50,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                left: -30,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.05),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Stack(
            children: [
              Icon(Icons.notifications_outlined),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white24,
            child: Icon(Icons.person, size: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }

  // Hero Banner dengan parallax effect
  Widget _buildHeroBanner() {
    return Container(
      height: 320,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            // Background image dengan gradient overlay
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1562774053-701939374585?w=800',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.85),
                    ],
                  ),
                ),
              ),
            ),

            // Content
            Positioned(
              bottom: 25,
              left: 25,
              right: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Badge
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade600,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber.withOpacity(0.5),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified, size: 14, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'Terakreditasi Unggul',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),

                  // Welcome text
                  Text(
                    'Selamat Datang di',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),

                  // University name
                  Text(
                    'Universitas\nMuhammadiyah Sidoarjo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      letterSpacing: 0.5,
                      shadows: [
                        Shadow(
                          blurRadius: 15.0,
                          color: Colors.black87,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),

                  // CTA Button
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.explore, size: 18),
                    label: Text('Jelajahi Kampus'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xFF1565C0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Welcome Card dengan glassmorphism
  Widget _buildWelcomeCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue.shade50.withOpacity(0.3),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.shade100, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.08),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(Icons.school_rounded, size: 50, color: Color(0xFF1565C0)),
          SizedBox(height: 15),
          Text(
            'Mencetak Generasi Unggul',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1565C0),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'UMSIDA berkomitmen mencetak lulusan berkompeten dan berdaya saing global dengan nilai-nilai Muhammadiyah yang kuat.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  // Animated Statistics dengan counter effect
  Widget _buildAnimatedStatistics() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildStatCard('8', 'Fakultas', Icons.business_rounded,
              [Color(0xFF2196F3), Color(0xFF1976D2)]),
          SizedBox(width: 12),
          _buildStatCard('12K+', 'Mahasiswa', Icons.people_rounded,
              [Color(0xFF4CAF50), Color(0xFF388E3C)]),
          SizedBox(width: 12),
          _buildStatCard('35', 'Program Studi', Icons.school_rounded,
              [Color(0xFFFF9800), Color(0xFFF57C00)]),
        ],
      ),
    );
  }

  Widget _buildStatCard(
      String number, String label, IconData icon, List<Color> colors) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: colors[0].withOpacity(0.4),
              blurRadius: 15,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white, size: 28),
            ),
            SizedBox(height: 12),
            Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.95),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Navigation Menu dengan animasi hover
  Widget _buildNavigationMenu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.explore, color: Color(0xFF1565C0)),
              SizedBox(width: 8),
              Text(
                'Jelajahi UMSIDA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1565C0),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.85,
            children: [
              _buildMenuCard(Icons.info_outline, 'Profil',
                  [Color(0xFF2196F3), Color(0xFF1976D2)]),
              _buildMenuCard(Icons.visibility_outlined, 'Visi & Misi',
                  [Color(0xFF9C27B0), Color(0xFF7B1FA2)]),
              _buildMenuCard(Icons.account_balance, 'Fakultas',
                  [Color(0xFFFF5722), Color(0xFFE64A19)]),
              _buildMenuCard(Icons.photo_library_outlined, 'Galeri',
                  [Color(0xFF4CAF50), Color(0xFF388E3C)]),
              _buildMenuCard(Icons.location_on_outlined, 'Lokasi',
                  [Color(0xFFFF9800), Color(0xFFF57C00)]),
              _buildMenuCard(Icons.article_outlined, 'Berita',
                  [Color(0xFF00BCD4), Color(0xFF0097A7)]),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuCard(IconData icon, String title, List<Color> colors) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Membuka $title'),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: colors[0],
            ),
          );
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: colors),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: colors[0].withOpacity(0.3),
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 32, color: Colors.white),
              ),
              SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Featured Programs dengan horizontal scroll
  Widget _buildFeaturedPrograms() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber),
                  SizedBox(width: 8),
                  Text(
                    'Program Unggulan',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text('Lihat Semua →'),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: 4,
            itemBuilder: (context, index) {
              final programs = [
                {
                  'title': 'Teknik Informatika',
                  'icon': Icons.computer,
                  'color': Colors.blue
                },
                {
                  'title': 'Manajemen',
                  'icon': Icons.business_center,
                  'color': Colors.orange
                },
                {
                  'title': 'Keperawatan',
                  'icon': Icons.medical_services,
                  'color': Colors.red
                },
                {
                  'title': 'Psikologi',
                  'icon': Icons.psychology,
                  'color': Colors.purple
                },
              ];
              return _buildProgramCard(
                programs[index]['title'] as String,
                programs[index]['icon'] as IconData,
                programs[index]['color'] as Color,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProgramCard(String title, IconData icon, Color color) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 15,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color, color.withOpacity(0.7)],
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Center(
              child: Icon(icon, size: 60, color: Colors.white),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Akreditasi A',
                      style: TextStyle(
                        fontSize: 11,
                        color: color,
                        fontWeight: FontWeight.bold,
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

  // Latest News dengan card modern
  Widget _buildLatestNews() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.newspaper, color: Color(0xFF1565C0)),
                  SizedBox(width: 8),
                  Text(
                    'Berita Terkini',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text('Selengkapnya →'),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: 3,
            itemBuilder: (context, index) {
              return _buildNewsCard(
                'Pendaftaran Mahasiswa Baru 2025 Telah Dibuka',
                '15 Nov 2025',
                'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400',
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildNewsCard(String title, String date, String imageUrl) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 15,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.network(
                  imageUrl,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.red.shade600,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'BARU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                    SizedBox(width: 6),
                    Text(
                      date,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Testimonials section
  Widget _buildTestimonials() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.format_quote, color: Color(0xFF1565C0)),
              SizedBox(width: 8),
              Text(
                'Testimoni Alumni',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1565C0),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: 3,
            itemBuilder: (context, index) {
              return _buildTestimonialCard();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTestimonialCard() {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade50, Colors.white],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.person, color: Color(0xFF1565C0)),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmad Zaki',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Alumni Teknik Informatika',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            '"UMSIDA memberikan pendidikan berkualitas dan pengalaman berharga yang mempersiapkan saya untuk dunia kerja."',
            style: TextStyle(
              fontSize: 13,
              height: 1.5,
              fontStyle: FontStyle.italic,
              color: Colors.grey.shade700,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Row(
            children: List.generate(
                5, (index) => Icon(Icons.star, size: 16, color: Colors.amber)),
          ),
        ],
      ),
    );
  }

  // Quick Actions
  Widget _buildQuickActions() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1565C0), Color(0xFF0D47A1)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'Akses Cepat',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildQuickActionButton(Icons.school, 'PMB'),
              _buildQuickActionButton(Icons.book, 'E-Learning'),
              _buildQuickActionButton(Icons.calendar_today, 'Akademik'),
              _buildQuickActionButton(Icons.help, 'Bantuan'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // Footer modern
  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0D47A1), Color(0xFF01579B)],
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.school, size: 50, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Universitas Muhammadiyah Sidoarjo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Jl. Mojopahit 666B, Sidoarjo, Jawa Timur',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(Icons.facebook, () {}),
              _buildSocialButton(Icons.mail, () {}),
              _buildSocialButton(Icons.phone, () {}),
              _buildSocialButton(Icons.language, () {}),
            ],
          ),
          SizedBox(height: 25),
          Divider(color: Colors.white30, thickness: 1),
          SizedBox(height: 15),
          Text(
            '© 2025 Universitas Muhammadiyah Sidoarjo',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'All Rights Reserved',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, VoidCallback onTap) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF1565C0),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 11),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            activeIcon: Icon(Icons.school),
            label: 'Akademik',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            activeIcon: Icon(Icons.article),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
