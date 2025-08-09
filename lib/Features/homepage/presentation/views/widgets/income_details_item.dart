import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/income_details_model.dart';

class IncomeDetailsItem extends StatelessWidget {
  final IncomeDetailsModel item;
  const IncomeDetailsItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(color: item.color, shape: OvalBorder()),
      ),
      title: Text(item.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(item.percentage, style: AppStyles.styleMedium16(context)),
    );
  }
}
