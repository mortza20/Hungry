import 'package:dontknow_jus_test/shared/Custom_button.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/test/test.png", width: 120),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Hamburger", weight: FontWeight.bold),
                    CustomText(text: "QTY: X3"),
                    CustomText(text: "Price: \$ 19.8"),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: CustomButton(
                  text: "Order Again",
                  width: double.infinity,
                  height: 65,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
