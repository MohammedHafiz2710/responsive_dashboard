import 'package:flutter/material.dart';

import 'package:responsive_dashboard/Features/homepage/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/active_and_inactive_drawer_item.dart';

class DrawerItme extends StatelessWidget {
  final bool isActive;
  final DrawerItemModel item;
  const DrawerItme({super.key, required this.item, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(item: item) : InActiveDrawerItem(item: item);
  }
}
