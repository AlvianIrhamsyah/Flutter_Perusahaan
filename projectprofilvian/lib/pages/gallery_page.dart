import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  final List<Map<String, String>> galeri = const [
    {
      "Judul": "Gedung Perusahaan",
      "gambar": "assets/image/Company.jpg.webp",
    },
    {
      "Judul": "Ruang Meeting",
      "gambar": "assets/image/meeting.jpg",
    },
    {
      "Judul": "Ruang Makan",
      "gambar": "assets/image/pantry.jpg",
    },
    {
      "Judul": "Ruang Kerja",
      "gambar": "assets/image/Ruangan.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galery Perusahaan"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: GridView.builder(
          itemCount: galeri.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisExtent: 205,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        galeri[index]['gambar']!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ), // Image.asset
                    ), // ClipRRect
                  ), // Expanded
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      galeri[index]["Judul"]!,
                      style: const TextStyle(
                        fontSize: 12,
                      ), // atau hapus baris style jika tidak digunakan
                    ), // Text
                  ), // Padding
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
