import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});
  final List<Map<String, String>> galeri = const [
    {
      "Judul": "Full-Stack Software Development",
      "gambar": "assets/image/fullstack.jpg",
    },
    {
      "Judul": "Web & Mobile App Development",
      "gambar": "assets/image/WEB.png",
    },
    {
      "Judul": "UI/UX Design & Prototyping",
      "gambar": "assets/image/uiux.png",
    },        
    {
      "Judul": "DevOps & Cloud Infrastructure",
      "gambar": "assets/image/devops.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text("Services"),
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
