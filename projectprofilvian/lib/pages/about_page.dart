import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Als Technology"),
        backgroundColor: const Color.fromARGB(255, 0, 225, 255),
        foregroundColor: const Color.fromARGB(255, 61, 61, 61),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                          child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Image.asset(
                                'assets/image/logo1.jpg',
                                fit: BoxFit.contain,
                              ))))),
              SizedBox(height: 25),
              const Center(
                child: Text("TechDev Company",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              SizedBox(height: 25),
              Text(
                "Company Profile",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan),
              ),
              const Divider(),
              const Text(
                ":ALS Company Merupakan perusahaan "
                "Fullstack Developers yang bergerak dalam "
                "pengembangan solusi digital terbaik untuk semua",
                style: TextStyle(
                  fontSize: 19,
                  height: 1.6,
                ),
              ),
              SizedBox(height: 15),
              const Text(
                "Visi",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.visibility,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "Menjadi pemrakarsa inovasi teknologi global"
                    "yang mengubah cara dunia berinteraksi, bekerja, dan berkembang"
                    "melalui solusi perangkat lunak yang cerdas dan berkelanjutan.",
                  ),
                ),
              ),
              SizedBox(height: 15),
              const Text(
                "Misi",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              Card(
                child: Column(children: [
                  ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      "Mengembangkan perangkat lunak berbasis teknologi mutakhir (emerging tech) yang adaptif terhadap kebutuhan masa depan.",
                    ),
                  ),
                  Divider(),
                  Divider(),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.check_circle,
                        color: Colors.blueGrey,
                      ), // Icon
                      title: Text(
                        "Mendorong riset dan pengembangan (R&D) secara berkelanjutan untuk menciptakan produk digital yang disruptif dan bernilai tinggi.",
                      ), // Text
                    ), // ListTile
                  ), // Card
                  Divider(),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.check_circle,
                        color: Colors.blueGrey,
                      ), // Icon
                      title: Text(
                        "Membangun ekosistem rekayasa perangkat lunak yang mengutamakan keamanan, skalabilitas, dan efisiensi performa.",
                      ), // Text
                    ), // ListTile
                  ), // Card
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
