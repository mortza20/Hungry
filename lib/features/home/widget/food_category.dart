import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';

class FoodCateogry extends StatefulWidget {
  const FoodCateogry({super.key});

  @override
  State<FoodCateogry> createState() => _FoodCatogryState();
}

List category = ["All", "Slides", "Combo", "Clasics"];
int selectedIndex = 0;

class _FoodCatogryState extends State<FoodCateogry> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(category.length, (index) {
          return GestureDetector(
            onTap: () => setState(() {
              selectedIndex = index;
            }),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(horizontal: 27, vertical: 15),

              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.primary
                    : Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(21),
              ),
              child: CustomText(
                text: category[index],
                weight: FontWeight.w600,
                size: 15,
                color: selectedIndex == index ? Colors.white : null,
              ),
            ),
          );
        }),
      ),
    );
  }
}
