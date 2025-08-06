import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/transaction_section.dart';

class MyCardAndTransactionSections extends StatelessWidget {
  const MyCardAndTransactionSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Column(children: [MyCardSection(), Divider(height: 40), TransactionSection()]),
      ),
    );
  }
}
