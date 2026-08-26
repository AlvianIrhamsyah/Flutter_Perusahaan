import 'package:flutter/material.dart';

class TechStackPage extends StatelessWidget {
  const TechStackPage({super.key});

  final List<Map<String, dynamic>> techList = const [
    {
      'category': 'Frontend Development',
      'items': ['Flutter', 'React.js', 'Next.js', 'Tailwind CSS'],
      'icon': Icons.devices_rounded,
      'color': Color(0xFF2563EB),
    },
    {
      'category': 'Backend Engineering',
      'items': ['Node.js', 'Python', 'PHP', 'RESTful API'],
      'icon': Icons.dns_rounded,
      'color': Color(0xFF0D9488),
    },
    {
      'category': 'Database & Storage',
      'items': ['PostgreSQL', 'MongoDB', 'Supabase', 'Firebase'],
      'icon': Icons.storage_rounded,
      'color': Color(0xFF7C3AED),
    },
    {
      'category': 'DevOps & Cloud Infrastructure',
      'items': ['Docker', 'AWS Cloud', 'Git & GitHub', 'CI/CD'],
      'icon': Icons.cloud_done_rounded,
      'color': Color(0xFFEA580C),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text('Technology Stack'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: techList.length,
        itemBuilder: (context, index) {
          final item = techList[index];
          final Color accentColor = item['color'] as Color;
          final List<String> techItems = item['items'] as List<String>;

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE2E8F0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Baris Kategori & Ikon
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: accentColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        item['icon'] as IconData,
                        color: accentColor,
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      item['category'] as String,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Daftar Badge Teknologi
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: techItems.map((tech) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F5F9),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFE2E8F0)),
                      ),
                      child: Text(
                        tech,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF334155),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}