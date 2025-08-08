import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/Core/utils/size_config.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktopBreakPoint && width < 1750
        ? Row(children: [Expanded(child: DetailedIncomeChart())])
        : Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}
