import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_section.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/transaction_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(height: 16),
          MyCardSection(),
          Divider(height: 30),
          TransactionSection(),
          SizedBox(height: 16),
          IncomeSection(),
        ],
      ),
    );
  }
}
