import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: Padding(padding: const EdgeInsets.symmetric(vertical: 20), child: DashboardMobileLayout()),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
