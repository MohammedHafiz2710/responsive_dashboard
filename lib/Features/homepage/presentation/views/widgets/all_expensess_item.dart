import 'package:flutter/material.dart';

import 'package:responsive_dashboard/Features/homepage/data/models/all_expensess_item_model.dart';

import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/in_active_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  final AllExpensessItemModel item;
  final bool isActive;
  const AllExpensessItem({super.key, required this.item, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensessItem(item: item, isActive: isActive)
        : InActiveExpensessItem(item: item, isActive: isActive);
  }
}
