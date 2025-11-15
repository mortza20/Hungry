import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.image, required this.name, required this.desc, required this.rate});
final String image,name,desc,rate;
  @override
  Widget build(BuildContext context) {
    return Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(image, width: 200),
                     
                      CustomText(
                        text: name,
                        weight: FontWeight.bold,
                      
                      ),
                      CustomText(text: desc),
                      Row(
                        children: [
                          CustomText(text: "⭐️ $rate"),
                          Spacer(),
                          Icon(CupertinoIcons.heart,size: 20,color: AppColors.primary,)
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}