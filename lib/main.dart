import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/home_page.dart';

void main() {
  runApp(const ResponsiveDashboardApp());
}

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
    );
  }
}
