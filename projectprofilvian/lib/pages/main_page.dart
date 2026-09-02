import 'package:flutter/material.dart';
import 'package:projectprofilvian/pages/about_page.dart';
import 'package:projectprofilvian/pages/contact_page.dart';
import 'package:projectprofilvian/pages/gallery_page.dart';
import 'package:projectprofilvian/pages/tech_stack_page.dart';
import 'package:projectprofilvian/pages/testimoni_page.dart';
import 'layanan_page.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Als Technology"),
        backgroundColor: const Color.fromRGBO(255, 58, 58, 58),
        foregroundColor: const Color.fromRGBO(255, 250, 252, 251),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange,
                  width: 2.5,
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/image/logo1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Fullstack Developers Company",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            
            // Tombol About
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.info),
                  label: const Text("About"),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Tombol Gallery
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GalleryPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.photo_library),
                  label: const Text("Gallery Perusahaan"),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Tombol Contact
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.phone),
                  label: const Text("Company Contact"),
                ),
              ),
            ),
            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ServicePage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.home),
                  label: const Text("Services"),
                ),
              ),
            ),
            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TechStackPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.code),
                  label: const Text("Technology Stack"),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Tombol Testimoni
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TestimoniPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.rate_review),
                  label: const Text("Testimonial"),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}