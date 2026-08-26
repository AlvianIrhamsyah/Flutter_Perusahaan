import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const CompanyprofileApp());
}

class CompanyprofileApp extends StatelessWidget {
  const CompanyprofileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Als Technology",
      theme: AppTheme.lightTheme,
      home: const MainPage(),
    );
  }
}