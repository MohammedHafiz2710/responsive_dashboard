import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';

class AllExpensessHeaderAndIncome extends StatelessWidget {
  final String title;
  const AllExpensessHeaderAndIncome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.styleSemiBold20(context)),

        Container(
          padding: EdgeInsets.all(4),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: DropdownButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(Icons.keyboard_arrow_down, color: Color(0xff064061)),
            ),
            dropdownColor: Colors.white,
            underline: SizedBox(),
            style: AppStyles.styleMedium16(context),
            value: "Monthly",
            items: [
              DropdownMenuItem(value: "Monthly", child: Text("Monthly")),
              DropdownMenuItem(value: "Weekly", child: Text("Weekly")),
            ],
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
