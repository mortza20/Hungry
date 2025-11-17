import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/features/checkout/widget/order_summary.dart';
import 'package:dontknow_jus_test/shared/Custom_button.dart';
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
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30),
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

            const Gap(50),
            CustomText(
              text: "Payment methods",
              size: 20,
              weight: FontWeight.w500,
            ),
            const Gap(20),

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
                    onTap: () {
                      setState(() {
                        selectedValue = "cash";
                      });
                    },
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
                    onTap: () {
                      setState(() {
                        selectedValue = "visa";
                      });
                    },
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
            Gap(10),
            Row(
              children: [
                Checkbox(
                  activeColor: Color(0xffEF2A39),
                  value: isChecked,
                  onChanged: (value) => {
                    setState(() {
                      isChecked = value!;
                    }),
                  },
                ),
                CustomText(text: "Save card details for future payments"),
              ],
            ),
          ],
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Total Price",
                    size: 15,
                    weight: FontWeight.w400,
                  ),
                  CustomText(
                    text: "\$ 19.8",
                    size: 27,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              CustomButton(
                text: "Pay Now",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (v) {
                      return Dialog(
                        child: Container(
                          height: 300,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                blurRadius: 7,
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Gap(25),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: AppColors.primary,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Gap(10),
                              CustomText(
                                text: "Success !",
                                size: 35,
                                color: AppColors.primary,
                                weight: FontWeight.bold,
                              ),
                              Gap(5),
                              CustomText(
                                text:
                                    "Your payment was successful.\nA receipt for this purchase has\nbeen sent to your email.",
                                color: Colors.grey.shade600,
                              ),
                              Gap(20),
                              CustomButton(
                                text: "Go back",
                                width: 120,
                                onTap: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
