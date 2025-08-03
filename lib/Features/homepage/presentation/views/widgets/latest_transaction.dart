import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';

import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/lastest_transaction_list_view_builder.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16),
        SizedBox(height: 16),
        LastestTransactionListViewBuilder(),
      ],
    );
  }
}
