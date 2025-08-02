import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  final String image;
  final bool isActive;
  const AllExpensessItemHeader({super.key, required this.image, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(color: Colors.white.withValues(alpha: 0.10), shape: OvalBorder()),
          child: SvgPicture.asset(
            image,
            fit: BoxFit.scaleDown,
            colorFilter: isActive ? ColorFilter.mode(Colors.white, BlendMode.srcIn) : null,
          ),
        ),
        Expanded(child: SizedBox()),

        isActive
            ? Transform.rotate(
                angle: 1.5708 * 2,
                child: Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(255, 255, 255, 255), size: 16),
              )
            : Transform.rotate(
                angle: 1.5708 * 2,
                child: Icon(Icons.arrow_back_ios_new, color: Color(0xFF4DB7F2), size: 16),
              ),
      ],
    );
  }
}
