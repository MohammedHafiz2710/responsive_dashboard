import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/size_config.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AllExpensessHeaderAndIncome(title: 'Income'),
            ),
            Flexible(
              flex: MediaQuery.sizeOf(context).width < SizeConfig.desktopBreakPoint ? 0 : 1,
              child: IncomeSectionBody(),
            ),
          ],
        ),
      ),
    );
  }
}
