import 'package:flutter/material.dart';

import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_header.dart';

import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_item_list_view_builder.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          AllExpensessHeaderAndIncome(title: 'All Expenses'),
          SizedBox(height: 16),
          AllExpensessItemListViewBuilder(),
        ],
      ),
    );
  }
}
