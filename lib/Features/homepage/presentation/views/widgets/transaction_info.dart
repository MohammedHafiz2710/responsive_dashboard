import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/transaction_info_model.dart';

class TransactionInfo extends StatelessWidget {
  final TransactionInfoModel transactionInfo;
  const TransactionInfo({super.key, required this.transactionInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: ListTile(
        title: Text(transactionInfo.title, style: AppStyles.styleSemiBold20),
        subtitle: Text(transactionInfo.date, style: AppStyles.styleRegular16.copyWith(color: Color(0xFFAAAAAA))),
        trailing: Text(
          "\$${transactionInfo.amount}",
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionInfo.isWithdrawal ? Color(0xFFEF5350) : Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
