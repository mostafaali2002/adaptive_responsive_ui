import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.icon,
    required this.isActive,
  });
  final String icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.10000000149011615)),
                child: Center(
                  child: SvgPicture.asset(
                    icon,
                    colorFilter: ColorFilter.mode(
                        isActive ? Colors.white : const Color(0xff4EB7F2),
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: isActive ? Colors.white : const Color(0xff064061),
        )
      ],
    );
  }
}
