import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(item.title, style: AppStyles.styleRegular16),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(item.title, style: AppStyles.styleBold16),
      trailing: Container(width: 3.27, decoration: BoxDecoration(color: Color(0xff4eb7f2))),
    );
  }
}
