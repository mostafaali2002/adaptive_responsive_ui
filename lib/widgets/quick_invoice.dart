import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/widgets/latest_transaction_list.dart';
import 'package:adaptive_responsive_ui/widgets/qucik_invoice_buttons.dart';
import 'package:adaptive_responsive_ui/widgets/quick_invoice_form.dart';
import 'package:adaptive_responsive_ui/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInVoice extends StatelessWidget {
  const QuickInVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 18),
            Text(
              "Latest Transaction",
              style: AppStyle.kStyleMeduim16,
            ),
            SizedBox(height: 12),
            LatestTransactionList(),
            SizedBox(height: 12),
            Divider(
              height: 2,
              color: Color(0xffF1F1F1),
            ),
            SizedBox(height: 15),
            QuickInvoiceForm(
                textFieldOneHeader: "Customer name",
                textFieldOneHint: "Type customer name",
                textFieldTwoHeader: "Customer Email",
                textFieldTwoHint: "Type customer Email"),
            SizedBox(height: 10),
            // QuickInvoiceForm(
            //     textFieldOneHeader: "Item name",
            //     textFieldOneHint: "Type customer name",
            //     textFieldTwoHeader: "Item mount",
            //     textFieldTwoHint: "USD"),
            SizedBox(height: 20),
            QuickInvoiceButtons()
          ],
        ),
      ),
    );
  }
}
