import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.image, required this.title, required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyles.styleSemiBold16),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12),
      ),
    );
  }
}
