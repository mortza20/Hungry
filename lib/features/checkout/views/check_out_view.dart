import 'package:dontknow_jus_test/features/checkout/widget/order_summary.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  String selectedValue = "cash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Order summary",
              size: 20,
              weight: FontWeight.w500,
            ),
            const Gap(12),
            const OrderSummary(
              order: '18.8',
              taxes: '3',
              fees: '3.80',
              total: '100.000',
            ),
            const Gap(80),
            CustomText(
              text: "Payment methods",
              size: 20,
              weight: FontWeight.w500,
            ),
            const Gap(30),


            RadioGroup<String>(
              groupValue: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    textColor: Colors.white,
                    tileColor: const Color(0xff3C2F2F),
                    title: const CustomText(text: "Cash on Delivery"),
                    leading: Image.asset(
                      "assets/icon/cach.png",
                      width: 50,
                      height: 100,
                    ),

                    trailing: const Radio<String>(
                      activeColor: Colors.white,
                      value: "cash",
                    ),
                  ),
                  const Gap(12),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    textColor: Colors.white,
                    tileColor: Colors.blueAccent.shade700,
                    title: const CustomText(
                      text: "Debit card",
                      weight: FontWeight.w600,
                    ),
                    subtitle: const CustomText(text: "3566 **** **** 0505"),
                    leading: Image.asset(
                      "assets/icon/visa.png",
                      width: 50,
                      height: 100,
                    ),
                    trailing: const Radio<String>(
                      activeColor: Colors.white,
                      value: "visa",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
