import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_card.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_cards_page_view.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: MyCard()),
      ],
    );
  }
}
