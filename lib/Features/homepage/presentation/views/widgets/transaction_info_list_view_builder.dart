import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/transaction_info_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/transaction_info.dart';

class TransactionListViewBuilder extends StatelessWidget {
  const TransactionListViewBuilder({super.key});

  @override
  static const List<TransactionInfoModel> transactions = [
    TransactionInfoModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 ', amount: '20,129', isWithdrawal: true),
    TransactionInfoModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: '2000',
      isWithdrawal: false,
    ),
    TransactionInfoModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '20,129',
      isWithdrawal: false,
    ),
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (context, index) => TransactionInfo(transactionInfo: transactions[index]),
    );
  }
}
