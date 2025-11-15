import 'package:dontknow_jus_test/features/cart/widgets/cart_item.dart';
import 'package:dontknow_jus_test/features/checkout/views/check_out_view.dart';
import 'package:dontknow_jus_test/shared/Custom_button.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final int itemCount = 5;
  late List<int> quantities;

  @override
  void initState() {
    super.initState();
    quantities = List.generate(itemCount, (_) => 1);
  }

  void onAdd(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void onRemove(int index) =>
      setState(() => quantities[index] > 1 ? quantities[index]-- : null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 20,
        scrolledUnderElevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(bottom: 100, top: 30),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return CartItem(
            text: "Hamburger",
            image: "assets/test/test.png",
            desc: "Veggie Burger",
            number: quantities[index],
            onAdd: () => onAdd(index),
            onRemove: () => onRemove(index),
          );
        },
        separatorBuilder: (context, index) => Gap(10),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "Total", size: 20, weight: FontWeight.w400),
                  CustomText(
                    text: "\$ 19.8",
                    size: 27,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              CustomButton(
                text: "Checkout",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (index) => CheckOutView()),
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
