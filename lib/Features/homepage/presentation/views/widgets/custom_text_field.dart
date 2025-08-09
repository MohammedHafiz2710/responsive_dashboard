import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  const CustomTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppStyles.styleMedium16(context)),
          SizedBox(height: 12),
          TextField(
            cursorColor: Color(0xff4EB7F2),
            decoration: InputDecoration(
              fillColor: Color(0xffFAFAFA),
              filled: true,

              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
              hintText: "Type $title",
              hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}
