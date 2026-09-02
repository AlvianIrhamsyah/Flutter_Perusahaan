import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController teleponController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  

  String? divisi;
  String? gender;
  String? status;
  bool setuju = false;

  // data hasil
  String nama = '';
  String email = '';
  String alamat = '';
  String telepon = '';
  String hasilDivisi = '';
  String hasilGender = '';

  void simpanData() {
   
    if (!_formKey.currentState!.validate()) {
      return;
    }


    if (gender == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Silahkan Pilih Jenis Kelamin')),
      );
      return;
    }
    
    if (status == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Silahkan Pilih Jenis Status')),
      );
      return;
    }
    
    if (!setuju) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Apakah Anda Setuju')),
      );
      return; 
    }

    setState(() {
      nama = namaController.text;
      email = emailController.text;
      alamat = alamatController.text;
      telepon = teleponController.text;
      hasilDivisi = divisi ?? '-';
      hasilGender = gender ?? '-';
    });
  } 

  void resetData() {
    setState(() {
      nama = "";
      email = "";
      alamat = "";
      telepon = "";
      divisi = null;
      hasilDivisi = "";
      status = null;
      gender = null;
      hasilGender = "";
      setuju = false;

      namaController.clear();
      emailController.clear();
      alamatController.clear();
      teleponController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Data Client"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: namaController,
                    decoration: const InputDecoration(
                      labelText: "nama",
                      hintText: "masukkan nama",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "gmail",
                      hintText: "masukkan gmail",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Gmail tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: alamatController,
                    decoration: const InputDecoration(
                      labelText: "alamat",
                      hintText: "masukkan alamat",
                      prefixIcon: Icon(Icons.home),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Alamat tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: teleponController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: "telepon",
                      hintText: "masukkan nomor telepon",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Telepon tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  DropdownButtonFormField<String>(
                    value: divisi,
                    decoration: const InputDecoration(
                      labelText: "divisi",
                      hintText: "pilih divisi",
                      prefixIcon: Icon(Icons.business),
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "IT",
                        child: Text("IT"),
                      ),
                      DropdownMenuItem(
                        value: "HRD",
                        child: Text("HRD"),
                      ),
                      DropdownMenuItem(
                        value: "Finance",
                        child: Text("Finance"),
                      ),
                      DropdownMenuItem(
                        value: "Marketing",
                        child: Text("Marketing"),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        divisi = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Divisi tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  
                  const SizedBox(height: 15),

                  

                 
                  const Text('Jenis Kelamin',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  RadioListTile<String>(
                    title: const Text('Laki-Laki'),
                    value: 'Laki-Laki',
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Perempuan'),
                    value: 'Perempuan',
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),

                  const SizedBox(height: 15),


                  
                  const Text('Status Karyawan',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  RadioListTile<String>(
                    title: const Text('Tetap'),
                    value: 'Tetap',
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Kontrak'),
                    value: 'Kontrak',
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                   RadioListTile<String>(
                    title: const Text('Magang'),
                    value: 'Magang',
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    },
                  ),

                  const SizedBox(height: 15),
                  CheckboxListTile(
                    title: const Text(
                      'Saya Menayatakan Bahwa '
                      'Data yang Saya Masukkan Benar'
                      
                      ),
                  value:setuju , 
                  onChanged: (value){
                    setState(() {
                      setuju= value ?? false;
                    });
                   }
                  ),

                 

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: simpanData,
                      icon: const Icon(Icons.save),
                      label: const Text("Tampilkan Data"),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: resetData,
                      icon: const Icon(Icons.refresh),
                      label: const Text("Reset Data"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            if (nama.isNotEmpty ||
                email.isNotEmpty ||
                alamat.isNotEmpty ||
                telepon.isNotEmpty ||
                hasilDivisi.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(thickness: 2),
                  const SizedBox(height: 20),
                  const Text(
                    "Hasil Input Data",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Nama"),
                      subtitle: Text(nama),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.email),
                      title: const Text("Gmail"),
                      subtitle: Text(email),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text("Alamat"),
                      subtitle: Text(alamat),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.phone),
                      title: const Text("Telepon"),
                      subtitle: Text(telepon),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.business),
                      title: const Text("Divisi"),
                      subtitle: Text(divisi!),
                    ),
                  ),
                  const SizedBox(height:10),
                   Card(
                    child: ListTile(
                      leading: const Icon(Icons.people),
                      title: const Text("Jenis Kelamin"),
                      subtitle: Text(hasilGender),
                    ),
                  ),
                  const SizedBox(height: 10),
                   Card(
                    child: ListTile(
                      leading: const Icon(Icons.badge),
                      title: const Text("Status"),
                      subtitle: Text(status!),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}