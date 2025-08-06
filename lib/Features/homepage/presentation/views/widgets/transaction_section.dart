import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/transaction_header.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/transaction_info_list_view_builder.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransactionHeader(),
          SizedBox(height: 20),
          Text("13 April 2022", style: AppStyles.styleRegular16),
          SizedBox(height: 16),
          TransactionListViewBuilder(),
        ],
      ),
    );
  }
}
