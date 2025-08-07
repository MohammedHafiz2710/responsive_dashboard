import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/assets_data.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/uswe_info_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/active_and_inactive_drawer_item.dart';

import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/list_tile_builder.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfo(
              userInfoModel: UserInfoModel(
                image: Assets.imagesSmileface3,
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(child: ListTileBuilder()),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
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
