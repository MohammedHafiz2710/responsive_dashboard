import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: Column(children: [AllExpenses(), SizedBox(height: 20), QuickInvoice()])),
      ],
    );
  }
}
