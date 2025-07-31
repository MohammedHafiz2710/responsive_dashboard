import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/assets_data.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/active_and_inactive_drawer_item.dart';

import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/list_tile_builder.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                UserInfo(image: Assets.imagesSmileface3, title: "Lekan Okeowo", subtitle: "demo@gmail.com"),
                SizedBox(height: 8),
                ListTileBuilder(),

                InActiveDrawerItem(
                  item: DrawerItemModel(image: Assets.imagesSetting, title: 'Settings System '),
                ),
                InActiveDrawerItem(
                  item: DrawerItemModel(image: Assets.imagesLogout, title: 'Logout'),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
