import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/income_details_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeDetailsModel> itemDetailsModel = [
    IncomeDetailsModel(title: 'Design service', percentage: '40%', color: Color(0xFF208BC7)),
    IncomeDetailsModel(title: 'Design product', percentage: '25%', color: Color(0xFF4DB7F2)),
    IncomeDetailsModel(title: 'Product royalti', percentage: '20%', color: Color(0xFF064060)),
    IncomeDetailsModel(title: 'Other', percentage: '22%', color: Color(0xFFE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemDetailsModel.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(item: itemDetailsModel[index]);
      },
    );
  }
}
