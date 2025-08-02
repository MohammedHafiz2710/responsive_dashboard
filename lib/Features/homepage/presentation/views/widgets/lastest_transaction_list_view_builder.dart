import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/assets_data.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/uswe_info_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/user_info.dart';

class LastestTransactionListViewBuilder extends StatelessWidget {
  const LastestTransactionListViewBuilder({super.key});
  static const List<UserInfoModel> userInfoList = [
    UserInfoModel(image: Assets.imagesSmileface, title: "Madrani Andi", subtitle: "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.imagesSmileface2, title: "Josua Nunito", subtitle: "Josh Nunito@gmail.com"),
    UserInfoModel(image: Assets.imagesSmileface, title: "Madrani Andi", subtitle: "Madraniadi20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userInfoList.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfo(userInfoModel: userInfoList[index]));
        },
      ),
    );
  }
}
