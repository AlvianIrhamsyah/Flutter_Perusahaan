import 'package:flutter/material.dart';
import 'pages/about_page.dart';
import 'pages/home_page.dart';
import 'pages/contact_page.dart';
import 'pages/galery_page.dart';

void main() {
  runApp(const MyApp());

}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Navigasi',
      home: const HomePage(),
      routes:{
        '/about':(context) =>const AboutPage(),
        '/contact':(context)=>const ContactPage(),
        '/galery':(context)=>const GalleryPage(),
      }
    );
  }
}