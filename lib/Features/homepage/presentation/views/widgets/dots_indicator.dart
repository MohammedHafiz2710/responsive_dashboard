import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/view%20models/dot_indicator_cubit/dot_indicator_cubit.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DotIndicatorCubit, int>(
      builder: (context, currentIndex) {
        return Row(
          spacing: 8,
          children: List.generate(2, (index) => CustomDotIndicator(isActive: index == currentIndex)),
        );
      },
    );
  }
}
