import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/view%20models/dot_indicator_cubit/dot_indicator_cubit.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/my_cards_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DotIndicatorCubit(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Card", style: AppStyles.styleSemiBold20),
          SizedBox(height: 12),
          MyCardsPageView(),
          SizedBox(height: 12),
          DotsIndicator(),
        ],
      ),
    );
  }
}
