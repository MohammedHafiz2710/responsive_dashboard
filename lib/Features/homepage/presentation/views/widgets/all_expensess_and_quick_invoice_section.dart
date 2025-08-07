import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [AllExpenses(), SizedBox(height: 20), QuickInvoice()]);
  }
}
