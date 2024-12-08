import 'package:adaptive_responsive_ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
    required this.textFieldOneHeader,
    required this.textFieldTwoHeader,
    required this.textFieldOneHint,
    required this.textFieldTwoHint,
  });
  final String textFieldOneHeader,
      textFieldTwoHeader,
      textFieldOneHint,
      textFieldTwoHint;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomTextField(
            header: textFieldOneHeader,
            hint: textFieldOneHint,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: CustomTextField(
            header: textFieldTwoHeader,
            hint: textFieldTwoHint,
          ),
        ),
      ],
    );
  }
}
