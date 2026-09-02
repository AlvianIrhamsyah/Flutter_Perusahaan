import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text(
          'Alvian Irhamsyah - Portofolio',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header Drawer
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              accountName: Text(
                'Alvian Irhamsyah',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              accountEmail: Text('Junior Fullstack Developer'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 45, color: Colors.indigo),
              ),
            ),
            // Menu Navigasi
            ListTile(
              leading: const Icon(Icons.home, color: Colors.indigo),
              title: const Text('Beranda'),
              selected: true,
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.indigo),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone_outlined, color: Colors.indigo),
              title: const Text('Kontak'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library_outlined, color: Colors.indigo),
              title: const Text('Galeri Portofolio'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/galery');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. Card Profil & Data Diri
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.indigo,
                      child: CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, size: 55, color: Colors.indigo),
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'Alvian Irhamsyah',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Junior Fullstack Developer',
                        style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Seorang pelajar yang sedang menjalankan pendidikan di Sekolah Smk Negeri 64 Jakarta dan siap bekerja sebagai junior fullstack developers.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13.5, color: Colors.black54, height: 1.4),
                    ),
                    const SizedBox(height: 16),
                    // Status Badge
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Tersedia untuk Proyek / Magang / Kerja',
                          style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Card Pendidikan
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(Icons.school, 'Pendidikan'),
                    const Divider(height: 24),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.account_balance, color: Colors.indigo),
                      ),
                      title: const Text(
                        'SMK 64 jakarta',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 4),
                          Text('Jurusan: Rekayasa Perangkat Lunak (RPL)'),
                          SizedBox(height: 2),
                          Text(
                            'Fokus: Algoritma, Pemrograman Web, Mobile App & Basis Data',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. Card Tech Stack & Keahlian
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(Icons.code, 'Tech Stack & Keahlian'),
                    const Divider(height: 24),

                    // Frontend
                    const Text('Frontend Development', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _buildSkillBadge('Flutter & Dart', Icons.flutter_dash, Colors.lightBlue),
                        _buildSkillBadge('HTML5 & CSS3', Icons.html, Colors.deepOrange),
                        _buildSkillBadge('JavaScript', Icons.javascript, Colors.amber.shade800),
                        _buildSkillBadge('Tailwind Css', Icons.palette, Colors.teal),
                        _buildSkillBadge('React.js', Icons.webhook, Colors.cyan),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Backend
                    const Text('Backend Development', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _buildSkillBadge('Node.js', Icons.dns, Colors.green),
                        _buildSkillBadge('PHP & Laravel', Icons.php, Colors.redAccent),
                        _buildSkillBadge('RESTful API', Icons.api, Colors.purple),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Database & Tools
                    const Text('Database & Developer Tools', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _buildSkillBadge('MySQL', Icons.storage, Colors.blue),
                        _buildSkillBadge('PostgreSQL', Icons.storage_rounded, Colors.indigo),
                        _buildSkillBadge('Git & GitHub', Icons.merge_type, Colors.black87),
                        _buildSkillBadge('Postman', Icons.send, Colors.orange),
                        _buildSkillBadge('VS Code', Icons.integration_instructions, Colors.blueAccent),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
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
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ],
    );
  }

  // Badge sederhana untuk menampilkan icon dan label skill
  static Widget _buildSkillBadge(String label, IconData icon, Color iconColor) {
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
          Icon(icon, size: 16, color: iconColor),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w500, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
