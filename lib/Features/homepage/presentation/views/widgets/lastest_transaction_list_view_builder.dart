import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/assets_data.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/uswe_info_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/user_info.dart';

class LastestTransactionListViewBuilder extends StatelessWidget {
  const LastestTransactionListViewBuilder({super.key});
  static const List<UserInfoModel> userInfoList = [
    UserInfoModel(image: Assets.imagesSmileface, title: "Madrani Andi", subtitle: "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.imagesSmileface2, title: "Josua Nunito", subtitle: "Josh_Nunito@gmail.com"),
    UserInfoModel(image: Assets.imagesSmileface, title: "Madrani Andi", subtitle: "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.imagesSmileface2, title: "Josua Nunito", subtitle: "Josh_Nunito@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    // Using SingleChildScrollView to allow horizontal scrolling 100% responsive but not recommended for performance if the list is large.
    return Scrollbar(
      controller: scrollController,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: userInfoList.map((e) => IntrinsicWidth(child: UserInfo(userInfoModel: e))).toList(),
        ),
      ),
    );
    // Alternatively, you can use ListView.builder for better performance with large lists.
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: userInfoList.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(child: UserInfo(userInfoModel: userInfoList[index]));
    //     },
    //   ),
    // );
  }
}
