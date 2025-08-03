import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffAAAAAA)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
