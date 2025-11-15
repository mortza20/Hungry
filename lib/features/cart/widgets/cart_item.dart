import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.text, required this.image, required this.desc, this.onAdd, this.onRemove, required this.number});
final String text,image,desc;
final Function()? onAdd,onRemove;
final int number;
  @override
  Widget build(BuildContext context) {
    return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Image.asset(image, width: 150),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: CustomText(text: text,weight: FontWeight.w700,size: 16,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: CustomText(text: desc),
                        ),
                      ],
                    ),
                    Column(
                   
                      children: [
                        Row(
                      
                      children: [
                      GestureDetector(
                        onTap: onAdd,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(color: AppColors.primary,
                          borderRadius: BorderRadius.circular(12)),
                          child: Icon(Icons.add,color: Colors.white,),),
                      ),
                        Gap(20),
                        CustomText(text: number.toString(),size: 20,),
                        Gap(20),
                        GestureDetector(
                          onTap: onRemove,
                          child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(color: AppColors.primary,
                          borderRadius: BorderRadius.circular(12)),
                          child: Icon(CupertinoIcons.minus,color: Colors.white,),),
                        )
                    ],
                    ),
                    Gap(20),
                     Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(12)),
                      child: Center(child: CustomText(text: "Remove",color: Colors.white,weight: FontWeight.bold,)),
                     )
                    ]
                    ),
                  ],
                ),
              ),
            );
  }
}