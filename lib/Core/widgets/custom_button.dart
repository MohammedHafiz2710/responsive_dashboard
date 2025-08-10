import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final void Function()? onPressed;
  final Color backgroundColor;
  const CustomButton({super.key, required this.title, this.onPressed, required this.backgroundColor, this.titleColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shadowColor: Colors.transparent,
          overlayColor: Colors.grey.shade100,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: AppStyles.styleSemiBold18(context).copyWith(color: titleColor),
        ),
      ),
    );
  }
}
