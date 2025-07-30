import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_adaptive_layout.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/dashboard_desktop_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
