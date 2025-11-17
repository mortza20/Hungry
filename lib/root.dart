import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/features/auth/view/profile_view.dart';
import 'package:dontknow_jus_test/features/cart/views/cart_view.dart';
import 'package:dontknow_jus_test/features/home/views/home_view.dart';
import 'package:dontknow_jus_test/features/orderHistory/views/orderHistory_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

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
        controller: controller,
        children: screens,
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20, top: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: AppColors.primary,
        ),
        child: WaterDropNavBar(
          backgroundColor: Colors.transparent,
          inactiveIconColor: Colors.grey.shade300,
          waterDropColor: Colors.white,
          barItems: [
            BarItem(
              filledIcon: Icons.home_filled,
              outlinedIcon: CupertinoIcons.home,
            ),
            BarItem(
              filledIcon: Icons.shopping_cart,
              outlinedIcon: CupertinoIcons.cart,
            ),
            BarItem(
              filledIcon: Icons.restaurant,
              outlinedIcon: Icons.restaurant_menu,
            ),
            BarItem(
              filledIcon: Icons.person,
              outlinedIcon: CupertinoIcons.profile_circled,
            ),
          ],
          selectedIndex: currentPage,
          onItemSelected: (index) {
            setState(() {
              currentPage = index;
            });
            controller.jumpToPage(currentPage);
          },
        ),
      ),
    );
  }
}
