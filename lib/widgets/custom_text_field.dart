import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.header,
    required this.hint,
  });
  final String header, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: AppStyle.kStyleMeduim16,
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xffAAAAAA)),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        )
      ],
    );
  }
}
