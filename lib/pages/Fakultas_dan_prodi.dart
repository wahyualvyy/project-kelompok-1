import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Faculty List Demo',
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: const [
                Text(
                  "Fakultas yang ada di UMSIDA",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                FacultySection(
                  facultyName: 'Fakultas Saintek',
                  programs: [
                    ProgramData(
                      name: 'Prodi Informatika',
                      description:
                          'Program Informatika berfokus pada dasar-dasar ilmu komputer, pemrograman, struktur data, algoritma, dan rekayasa perangkat lunak. Mahasiswa mempelajari pengembangan aplikasi, basis data, jaringan komputer, serta topik modern seperti kecerdasan buatan dan pembelajaran mesin. Kurikulum dirancang untuk memberikan kemampuan analitis dan teknis sehingga lulusan mampu merancang solusi software untuk permasalahan industri dan riset.',
                    ),
                    ProgramData(
                      name: 'Prodi Elektro',
                      description:
                          'Program Teknik Elektro mempelajari elektronika, sistem kontrol, rangkaian listrik, dan telekomunikasi. Mahasiswa dilatih dalam perancangan sirkuit, pemrograman mikrokontroler, serta analisis sistem tenaga. Program ini menekankan penerapan praktis melalui laboratorium dan proyek, mempersiapkan lulusan untuk bekerja di bidang energi, otomasi, instrumentasi, dan industri manufaktur.',
                    ),
                    ProgramData(
                      name: 'Prodi Mesin',
                      description:
                          'Program Teknik Mesin mengajarkan mekanika, termodinamika, desain mesin, dan pemodelan sistem mekanis. Mahasiswa belajar menggambar teknik, penggunaan perangkat lunak CAD/CAM, metode produksi, dan pemeliharaan peralatan industri. Kurikulum menekankan kemampuan pemecahan masalah teknik, eksperimen laboratorium, dan proyek desain yang relevan dengan kebutuhan industri manufaktur dan otomotif.',
                    ),
                  ],
                ),
                FacultySection(
                  facultyName: 'Fakultas FBHIS',
                  programs: [
                    ProgramData(
                      name: 'Prodi Bahasa Inggris',
                      description:
                          'Program Bahasa Inggris berfokus pada penguasaan bahasa secara produktif dan reseptif, termasuk keterampilan berbicara, menulis, membaca, dan mendengar. Selain linguistik dan teori bahasa, mahasiswa mempelajari penerjemahan, literatur, serta komunikasi profesional. Program mempersiapkan lulusan untuk karier di pendidikan, penerjemahan, perbankan internasional, dan sektor layanan yang membutuhkan kemampuan komunikasi bahasa Inggris tingkat tinggi.',
                    ),
                    ProgramData(
                      name: 'Prodi Jepang',
                      description:
                          'Program Studi Jepang menyajikan pembelajaran bahasa dan budaya Jepang, sastra, serta aspek hubungan internasional dan bisnis Jepang. Mahasiswa mempelajari tata bahasa, percakapan, serta konteks budaya yang penting untuk komunikasi lintas-budaya. Program ini cocok bagi yang tertarik bekerja pada perusahaan Jepang atau bidang diplomasi, pariwisata, dan penerjemahan profesional.',
                    ),
                    ProgramData(
                      name: 'Prodi Bahasa Hewan',
                      description:
                          'Program fiktif ini ditulis sebagai contoh kreatif: fokus pada studi komunikasi antar-spesies, perilaku hewan, dan etologi. Materi mencakup pengamatan lapangan, analisis sinyal vokal dan visual, serta studi interaksi manusia-hewan. Walaupun tidak konvensional, program ini menstimulasi pendekatan interdisipliner antara biologi, psikologi, dan teknologi sensor.',
                    ),
                  ],
                ),
                FacultySection(
                  facultyName: 'Fakultas FISIP',
                  programs: [
                    ProgramData(
                      name: 'Prodi Ilmu Komunikasi',
                      description:
                          'Program Ilmu Komunikasi membahas teori komunikasi, media, jurnalistik, dan strategi komunikasi publik. Mahasiswa belajar cara merancang kampanye media, riset media, serta etika jurnalistik. Lulusan cocok untuk berkarier di media massa, hubungan masyarakat, periklanan, dan lembaga pemerintahan yang membutuhkan keterampilan komunikasi strategis.',
                    ),
                    ProgramData(
                      name: 'Prodi Ilmu Pemerintahan',
                      description:
                          'Program Ilmu Pemerintahan mempelajari teori birokrasi, kebijakan publik, administrasi negara, dan proses politik. Materi menekankan analisis kebijakan, tata kelola, serta peran institusi publik. Lulusan dipersiapkan untuk bekerja pada lembaga pemerintahan, organisasi non-profit, lembaga penelitian kebijakan, atau melanjutkan studi di bidang public administration dan public policy.',
                    ),
                    ProgramData(
                      name: 'Prodi Sosiologi',
                      description:
                          'Program Sosiologi meneliti struktur sosial, budaya, stratifikasi, dan dinamika kolektif. Mahasiswa dilatih metodologi penelitian kualitatif dan kuantitatif untuk menganalisis fenomena sosial kontemporer. Lulusan dapat bekerja di bidang riset sosial, perencanaan pembangunan, layanan masyarakat, serta organisasi yang membutuhkan pemahaman mendalam tentang perilaku dan struktur sosial.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FacultySection extends StatelessWidget {
  final String facultyName;
  final List<ProgramData> programs;

  const FacultySection({
    super.key,
    required this.facultyName,
    required this.programs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            facultyName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          // program list
          ...programs.map(
            (p) => Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    p.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    p.description,
                    style: const TextStyle(fontSize: 14, color: Colors.white70),
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

class ProgramData {
  final String name;
  final String description;

  const ProgramData({required this.name, required this.description});
}
