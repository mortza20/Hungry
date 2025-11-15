import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Spicy extends StatelessWidget {
  const Spicy({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/detail/sand 12.png", width: 180),
        Spacer(),
        Column(
          children: [
            CustomText(
              text:
                  "Customize Your Burger\n to Your Tastes>\n Ultimate Experience",
            ),
            Slider(
              min: 0,
              max: 1,
              value: value,
              activeColor: AppColors.primary,
              onChanged: onChanged,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomText(text: "🥶"),
                Gap(100),
                CustomText(text: "🌶"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
