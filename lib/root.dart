import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/features/auth/view/profile_view.dart';
import 'package:dontknow_jus_test/features/cart/views/cart_view.dart';
import 'package:dontknow_jus_test/features/home/views/home_view.dart';
import 'package:dontknow_jus_test/features/orderHistory/views/orderHistory_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller;
  late List<Widget> screens;
  int currentPage = 0;

  @override
  void initState() {
    screens = [HomeView(), CartView(), OrderhistoryView(), ProfileView()];
    controller = PageController(initialPage: currentPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller, children: screens),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.primary,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade700,

          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: "cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu),
              label: "Order History",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              currentPage = index;
            });
            controller.jumpToPage(currentPage);
          },
          currentIndex: currentPage,
        ),
      ),
    );
  }
}
