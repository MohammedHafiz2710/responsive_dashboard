import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All Expensess", style: AppStyles.styleSemiBold20),

        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff064061)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(Icons.keyboard_arrow_down, color: Color(0xff064061)),
            ),
            dropdownColor: Colors.white,
            underline: SizedBox(),
            style: AppStyles.styleMedium16,
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
