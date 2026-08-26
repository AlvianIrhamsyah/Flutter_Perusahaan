import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  Future<void> _openInstagram() async {
    final Uri url = Uri.parse("https://www.instagram.com/alviannirhamsyh/");
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
  Future<void> _openyoutube() async {
    final Uri url = Uri.parse("https://www.youtube.com/@smkn64jakarta22");
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Company Contact",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      title: const Text("Alamat Perusahaan"),
                      subtitle:
                          const Text("Jl.Senayan City EF No.315 Jakarta Pusat"),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      title: const Text("Nomor Telepon"),
                      subtitle: const Text("(021)88463447653"),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      title: const Text("Alamat Email"),
                      subtitle: const Text("AlsCompanyJaya@gmail.com"),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.pink,
                      ),
                      title: const Text("Instagram"),
                      subtitle: const Text("@alviannirhamsyh"),
                      onTap: _openInstagram,
                    ),
                     const Divider(),
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.pink,
                      ),
                      title: const Text("Youtube"),
                      subtitle: const Text("SMKN 64 JAKARTA"),
                      onTap: _openyoutube,
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.public,
                        color: Colors.blueAccent,
                      ),
                      title: const Text("Website Perusahaan"),
                      subtitle: const Text("www.smkn64.jkt.sch.id"),
                      onTap: () async {
                        final Uri url = Uri.parse("https://smkn64-jkt.sch.id");
                        if (!await launchUrl(url,
                            mode: LaunchMode.externalApplication)) {
                          debugPrint("Could not launch $url");
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
