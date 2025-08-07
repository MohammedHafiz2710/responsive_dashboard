import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:responsive_dashboard/Core/utils/assets_data.dart';

class CustomCreditCard extends StatelessWidget {
  final Color color;
  const CustomCreditCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 190,
      child: CreditCardWidget(
        padding: 0,
        isChipVisible: true,
        cardBgColor: color,
        backgroundImage: Assets.imagesMaskgroup,
        cardType: CardType.visa,
        cardNumber: "0918 8124 0042 8129",
        expiryDate: "12/20",
        cardHolderName: "Syah Bandi",
        cvvCode: "124",
        isHolderNameVisible: true,
        showBackView: false,
        onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
      ),
    );
  }
}
