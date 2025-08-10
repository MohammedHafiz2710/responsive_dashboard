import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/widgets/custom_button.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextField(title: "Customer Name")),
            SizedBox(width: 16),
            Expanded(child: CustomTextField(title: "Customer Email")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomTextField(title: "Item Name")),
            SizedBox(width: 16),
            Expanded(child: CustomTextField(title: "Item Amount")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: Align(
                child: CustomButton(
                  title: "Add more details",
                  onPressed: () {},
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: CustomButton(
                title: "Send Money",
                onPressed: () {},
                backgroundColor: Color(0xff4EB7F2),
                titleColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
