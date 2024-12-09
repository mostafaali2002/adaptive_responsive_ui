import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/utils/assets.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(image: AssetImage(Assets.maskgroup)),
          color: const Color(0xff4EB7F2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 5),
              title: Text(
                "Name card",
                style: AppStyle.kStyleReguler16.copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyle.kStyleSemiBold20.copyWith(color: Colors.white),
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style:
                        AppStyle.kStyleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    "12/20 - 124",
                    style:
                        AppStyle.kStyleReguler16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 54 - 28)
          ],
        ),
      ),
    );
  }
}
