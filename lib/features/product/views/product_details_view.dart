import 'package:dontknow_jus_test/shared/Custom_button.dart';

import 'package:dontknow_jus_test/features/product/widget/spicy.dart';
import 'package:dontknow_jus_test/features/product/widget/toppingCard.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spicy(value: value, onChanged: (v) => setState(() => value = v)),
              Gap(20),
              CustomText(text: "Toppings", weight: FontWeight.w600, size: 20),
              Gap(27),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ToppingCard(
                        imageUrl: 'assets/test/tomato.png',
                        title: 'Tomato',
                        onAdd: () {},
                      ),
                    );
                  }),
                ),
              ),
              Gap(30),
              CustomText(
                text: "Side Options",
                weight: FontWeight.w600,
                size: 20,
              ),
              Gap(30),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ToppingCard(
                        imageUrl: 'assets/test/frise.png',
                        title: 'Frise',
                        onAdd: () {},
                      ),
                    );
                  }),
                ),
              ),
              Gap(150),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 7)],
          color: Colors.white,
        ),
        padding: EdgeInsets.all(10),
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Total",
                      size: 20,
                      weight: FontWeight.w400,
                    ),
                    CustomText(
                      text: "\$ 19.8",
                      size: 27,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
                CustomButton(text: "Add To Cart", onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//