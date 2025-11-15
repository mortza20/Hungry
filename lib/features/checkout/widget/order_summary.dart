import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    super.key,
    required this.order,
    required this.taxes,
    required this.fees,
    required this.total,
  });
  final String order, taxes, fees, total;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkOutWidget("Order", order, false),
        Gap(10),
        checkOutWidget("Taxes", taxes, false),
        Gap(10),
        checkOutWidget("Delivery fees", fees, false),
        Gap(10),
        Divider(),
        Gap(10),
        checkOutWidget("Total", total, true),
        Gap(10),
        checkOutWidget("Estimated delivery time:", "15 - 30 mins.", true),
      ],
    );
  }
}

Widget checkOutWidget(title, price, isBold) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(
        text: title,
        size: 15,
        weight: isBold ? FontWeight.bold : FontWeight.w400,
        color: isBold ? Colors.black : Colors.grey.shade700,
      ),
      CustomText(
        text: "$price\$",
        size: 15,
        weight: isBold ? FontWeight.bold : FontWeight.w400,
        color: isBold ? Colors.black : Colors.grey.shade700,
      ),
    ],
  );
}
