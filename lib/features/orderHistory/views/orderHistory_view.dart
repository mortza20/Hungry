import 'package:dontknow_jus_test/features/orderHistory/widgets/order_history_card.dart';
import 'package:flutter/material.dart';

class OrderhistoryView extends StatelessWidget {
  const OrderhistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, scrolledUnderElevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: OrderHistoryCard(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
