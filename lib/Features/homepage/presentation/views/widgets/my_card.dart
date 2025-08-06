import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_card_section.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),

      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24), child: MyCardSection()),
    );
  }
}
