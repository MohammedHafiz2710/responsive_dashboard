import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_section.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/transaction_section.dart';

class MyCardAndTransactionSections extends StatelessWidget {
  const MyCardAndTransactionSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Column(children: [MyCardSection(), Divider(height: 30), TransactionSection(), SizedBox(height: 16)]),
          ),
          SizedBox(height: 16),
          Expanded(child: IncomeSection()),
        ],
      ),
    );
  }
}
