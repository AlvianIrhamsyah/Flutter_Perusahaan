import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text(
          'Tentang Saya',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. Card Profil Singkat
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.indigo,
                      child: Icon(Icons.person, size: 45, color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Alvian Irhamsyah',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Junior Fullstack Developer',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo.shade700,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Saya adalah seorang pengembang perangkat lunak pemula yang berfokus pada ekosistem web dan mobile. Memiliki dedikasi tinggi untuk terus belajar, menulis kode yang bersih (clean code), dan menciptakan solusi digital yang bermanfaat.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Card Pendidikan & Target Pekerjaan
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(Icons.school, 'Pendidikan & Target Pekerjaan'),
                    const Divider(height: 20),
                    // Pendidikan
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.account_balance, color: Colors.indigo, size: 20),
                      ),
                      title: const Text('Pendidikan Saat Ini', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      subtitle: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SMK Negeri 64 Jakarta', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w500)),
                          Text('Jurusan: Rekayasa Perangkat Lunak (RPL)', style: TextStyle(fontSize: 12, color: Colors.black54)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Target Karir
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.work_outline, color: Colors.indigo, size: 20),
                      ),
                      title: const Text('Target Pekerjaan / Karir', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      subtitle: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Senior Fullstack Developers / Software Engineering', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w500)),
                          Text('Terbuka untuk: Magang (PKL), Full-time, Part-time, & Proyek Freelance', style: TextStyle(fontSize: 12, color: Colors.black54)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. Card Skills Utama
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(Icons.code, 'Skills Utama (Fullstack)'),
                    const Divider(height: 20),
                    // Frontend
                    const Text('Frontend:', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87)),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        _skillTag('Flutter & Dart', Colors.blue),
                        _skillTag('HTML5 / CSS3', Colors.blue),
                        _skillTag('JavaScript', Colors.blue),
                        _skillTag('React.js', Colors.blue),
                        _skillTag('Tailwind CSS', Colors.blue),
                      ],
                    ),
                    const SizedBox(height: 14),
                    // Backend
                    const Text('Backend & API:', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87)),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        _skillTag('Node.js', Colors.green),
                        _skillTag('PHP', Colors.green),
                        _skillTag('Laravel', Colors.green),
                        _skillTag('RESTful API', Colors.green),
                      ],
                    ),
                    const SizedBox(height: 14),
                    // Database
                    const Text('Database:', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87)),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        _skillTag('MySQL', Colors.indigo),
                        _skillTag('PostgreSQL', Colors.indigo),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 4. Card Soft Skills
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(Icons.psychology, 'Soft Skills'),
                    const Divider(height: 20),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _badgeItem('Problem Solving', Icons.extension, Colors.amber),
                        _badgeItem('Teamwork & Kolaborasi', Icons.group, Colors.teal),
                        _badgeItem('Fast Learner & Adaptif', Icons.bolt, Colors.orange),
                        _badgeItem('Manajemen Waktu', Icons.timer, Colors.purple),
                        _badgeItem('Komunikasi Efektif', Icons.chat_bubble_outline, Colors.blue),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 5. Card Skill Tambahan / Lainnya
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(Icons.add_task, 'Skill Lainnya'),
                    const Divider(height: 20),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _badgeItem('Video Editing (CapCut Pro)', Icons.video_camera_back, Colors.deepPurple),
                        _badgeItem('UI/UX Design (Figma)', Icons.design_services, Colors.pink),
                        _badgeItem('Git & GitHub Workflow', Icons.merge_type, Colors.blueGrey),
                        _badgeItem('Postman API Testing', Icons.send, Colors.deepOrange),
                        _badgeItem('Dasar CLI / Terminal Linux', Icons.terminal, Colors.black87),
                        _badgeItem('Clean Code & Refactoring', Icons.auto_fix_high, Colors.cyan),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Header judul tiap bagian
  static Widget _buildSectionHeader(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 20),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ],
    );
  }

  // Tag sederhana untuk skill kategori warna
  static Widget _skillTag(String text, MaterialColor color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.shade50,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.shade200),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: color.shade900,
        ),
      ),
    );
  }

  // Badge sederhana dengan ikon dan teks
  static Widget _badgeItem(String label, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: color),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}


