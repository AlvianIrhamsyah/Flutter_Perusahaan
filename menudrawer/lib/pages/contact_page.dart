import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // Form key dan controller untuk input formulir
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  // Fungsi submit pesan
  void _kirimPesan() {
    if (_formKey.currentState!.validate()) {
      // Tampilkan notifikasi snackbar berhasil
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Terima kasih ${_nameController.text}, pesan Anda berhasil dikirim!',
          ),
          backgroundColor: Colors.indigo,
          behavior: SnackBarBehavior.floating,
        ),
      );

      // Bersihkan input setelah kirim
      _nameController.clear();
      _emailController.clear();
      _subjectController.clear();
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text(
          'Kontak Saya',
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
            // 1. Card Informasi Kontak
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(Icons.contact_mail, 'Informasi Kontak'),
                    const Divider(height: 20),
                    // Email
                    _buildContactItem(
                      icon: Icons.email,
                      iconColor: Colors.redAccent,
                      title: 'Email',
                      value: 'alvianirhamsyah10@gmail.com',
                    ),
                    const SizedBox(height: 8),
                    // Nomor Telepon / WhatsApp
                    _buildContactItem(
                      icon: Icons.phone,
                      iconColor: Colors.green,
                      title: 'Nomor Telepon / WhatsApp',
                      value: '081387443788',
                    ),
                    const SizedBox(height: 8),
                    // GitHub
                    _buildContactItem(
                      icon: Icons.code,
                      iconColor: Colors.black87,
                      title: 'GitHub',
                      value: 'github.com/AlvianIrhamsyah',
                    ),
                    const SizedBox(height: 8),
                    // LinkedIn
                    _buildContactItem(
                      icon: Icons.work,
                      iconColor: Colors.blue.shade700,
                      title: 'LinkedIn',
                      value: 'linkedin.com/in/alvian-irhamsyah',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Card Formulir Kirim Pesan
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionHeader(Icons.send_rounded, 'Kirim Pesan Langsung'),
                      const SizedBox(height: 6),
                      const Text(
                        'Punya tawaran proyek, magang, atau pertanyaan? Silakan isi formulir di bawah ini:',
                        style: TextStyle(fontSize: 12.5, color: Colors.black54),
                      ),
                      const Divider(height: 24),

                      // Input Nama
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Nama Lengkap',
                          hintText: 'Masukkan nama Anda',
                          prefixIcon: const Icon(Icons.person_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),

                      // Input Email
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Anda',
                          hintText: 'contoh@email.com',
                          prefixIcon: const Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          if (!value.contains('@')) {
                            return 'Format email tidak valid';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),

                      // Input Subjek
                      TextFormField(
                        controller: _subjectController,
                        decoration: InputDecoration(
                          labelText: 'Subjek / Perihal',
                          hintText: 'Misal: Tawaran Proyek / Pertanyaan',
                          prefixIcon: const Icon(Icons.subject),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Subjek tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),

                      // Input Pesan
                      TextFormField(
                        controller: _messageController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          labelText: 'Isi Pesan',
                          hintText: 'Tuliskan pesan Anda di sini...',
                          alignLabelWithHint: true,
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(bottom: 60),
                            child: Icon(Icons.message_outlined),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(14),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Isi pesan tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 18),

                      // Tombol Kirim Pesan
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton.icon(
                          onPressed: _kirimPesan,
                          icon: const Icon(Icons.send, color: Colors.white, size: 18),
                          label: const Text(
                            'Kirim Pesan',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
  Widget _buildSectionHeader(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 20),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  // Helper method untuk item kontak
  Widget _buildContactItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String value,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: iconColor, size: 20),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }
}
