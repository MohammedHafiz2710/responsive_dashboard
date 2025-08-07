import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/view%20models/dot_indicator_cubit/dot_indicator_cubit.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_credit_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scrollbar(
      controller: pageController,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: ExpandablePageView(
          onPageChanged: (value) {
            context.read<DotIndicatorCubit>().selectCard(value);
          },
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
