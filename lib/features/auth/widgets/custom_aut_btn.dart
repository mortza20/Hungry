import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAutBtn extends StatelessWidget {
  const CustomAutBtn({super.key, this.tapbtn, required this.text});
  final Function()? tapbtn;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapbtn,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Center(
          child: CustomText(
            text: text,
            color: AppColors.primary,
            size: 18,
            weight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
