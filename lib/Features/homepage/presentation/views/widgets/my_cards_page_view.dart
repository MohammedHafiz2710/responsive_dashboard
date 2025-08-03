import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_credit_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scrollbar(
      controller: pageController,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ExpandablePageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            CustomCreditCard(color: Color(0xff4EB7F2)),
            CustomCreditCard(color: Colors.green),
          ],
        ),
      ),
    );
  }
}
