import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SizedBox(height: 16),
          AllExpensessHeaderAndIncome(title: 'Income'),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
