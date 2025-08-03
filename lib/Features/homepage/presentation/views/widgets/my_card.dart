import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';

import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_cards_page_view.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Cards", style: AppStyles.styleSemiBold20),
            SizedBox(height: 20),
            MyCardsPageView(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
