import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/home_page.dart';

void main() {
  runApp(const ResponsiveDashboardApp());
}

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return MaterialApp(home: const HomePage());
  }
}
