import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: const Text(
            "Flutter XI RPL 2",
            style: TextStyle(color: Color.fromARGB(255, 255, 254, 254)),
          ),
        ),
      body: Center(
  child: SingleChildScrollView( // Mencegah overflow jika layar tidak cukup
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // CONTAINER 1
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 61, 255, 207),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //gambar 1
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/gbr2.jpg",
                  width:250,
                  height:250,
                  fit:BoxFit.cover,
                ),
              ),
              SizedBox(height:15),
              //icon 1 
               const Icon(Icons.star,
                size: 40,
                color: Colors.amberAccent,
              ),
              SizedBox(height: 15),
              Text(
                //tulisan 1
                "Welcome to my flutter project",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        // CONTAINER 2
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 61, 255, 207),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //gambar 2
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/gbr1.jpg",
                  width:250,
                  height:250,
                  fit:BoxFit.cover,
                ),
              ),
              SizedBox(height:15),
              //icon 2
              Icon(
                Icons.school,
                size: 40,
                color: Colors.amberAccent,
              ),
              SizedBox(height: 15),
              //tulisan 2
              Text(
                "Thats Amazing",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    ),
  ),
      ),
      ),
    );
  }
}