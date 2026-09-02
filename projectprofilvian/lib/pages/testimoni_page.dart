import 'package:flutter/material.dart';

class TestimoniPage extends StatefulWidget {
  const TestimoniPage({super.key});

  @override
  State<TestimoniPage> createState() => _TestimoniPageState();
}

class _TestimoniPageState extends State<TestimoniPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _pekerjaanController = TextEditingController();
  final TextEditingController _testimoniController = TextEditingController();

  List<Map<String, String>> testimoniList = [
    {
      "nama": "Budi Santoso",
      "pekerjaan": "Product Manager",
      "testimoni": "Pelayanan sangat memuaskan dan aplikasinya sangat bagus!",
    },
    {
      "nama": "Siti Rahmawati",
      "pekerjaan": "UI/UX Designer",
      "testimoni": "Tim developer sangat profesional dan responsif.",
    },
  ];

  void _tambahTestimoni() {
    if (_namaController.text.isNotEmpty &&
        _pekerjaanController.text.isNotEmpty &&
        _testimoniController.text.isNotEmpty) {
      setState(() {
        testimoniList.insert(0, {
          "nama": _namaController.text,
          "pekerjaan": _pekerjaanController.text,
          "testimoni": _testimoniController.text,
        });
      });

      _namaController.clear();
      _pekerjaanController.clear();
      _testimoniController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Testimoni berhasil ditambahkan!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testimonial"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Form Input Testimoni
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      "Input Testimoni",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _namaController,
                      decoration: const InputDecoration(
                        labelText: "Nama",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _pekerjaanController,
                      decoration: const InputDecoration(
                        labelText: "Pekerjaan",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.work),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _testimoniController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        labelText: "Testimonial",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.comment),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: _tambahTestimoni,
                        child: const Text("Kirim Testimoni"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Daftar Testimoni
            const Text(
              "Daftar Testimoni",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: testimoniList.length,
              itemBuilder: (context, index) {
                final item = testimoniList[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text(
                      item["nama"]!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["pekerjaan"]!,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(item["testimoni"]!),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
