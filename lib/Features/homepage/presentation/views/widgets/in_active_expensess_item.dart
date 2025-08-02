import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_styles.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_item_header.dart';

class InActiveExpensessItem extends StatelessWidget {
  final bool isActive;
  const InActiveExpensessItem({super.key, required this.item, required this.isActive});

  final AllExpensessItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: item.image, isActive: isActive),
          SizedBox(height: 34),
          Column(
            children: [
              Text(item.title, style: AppStyles.styleSemiBold16),
              SizedBox(height: 8),
              Text(item.subtitle, style: AppStyles.styleRegular14),
              SizedBox(height: 16),
              Text("\$${item.amount}", style: AppStyles.styleSemiBold24),
            ],
          ),
        ],
      ),
    );
  }
}

class ActiveExpensessItem extends StatelessWidget {
  final bool isActive;
  const ActiveExpensessItem({super.key, required this.item, required this.isActive});

  final AllExpensessItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: item.image, isActive: isActive),
          SizedBox(height: 34),
          Column(
            children: [
              Text(item.title, style: AppStyles.styleSemiBold16.copyWith(color: Colors.white)),
              SizedBox(height: 8),
              Text(item.subtitle, style: AppStyles.styleRegular14.copyWith(color: Colors.white)),
              SizedBox(height: 16),
              Text("\$${item.amount}", style: AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
