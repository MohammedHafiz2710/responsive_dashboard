import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/uswe_info_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16),
          subtitle: Text(userInfoModel.subtitle, style: AppStyles.styleRegular12),
        ),
      ),
    );
  }
}
