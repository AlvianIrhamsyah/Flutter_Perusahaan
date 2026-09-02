import 'package:flutter/material.dart';
import 'pages/form_page.dart';
 void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Input Flutter',
      theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
  ),
),
    home: const FormPage(), 
    );

  }
}