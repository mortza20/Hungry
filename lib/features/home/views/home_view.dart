import 'package:dontknow_jus_test/features/home/widget/card_item.dart';
import 'package:dontknow_jus_test/features/home/widget/food_category.dart';
import 'package:dontknow_jus_test/features/home/widget/search_bar.dart';
import 'package:dontknow_jus_test/features/home/widget/user_header.dart';
import 'package:dontknow_jus_test/features/product/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ["All", "Slides", "Combo", "Clasics"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            ///Header + SearchBox
            SliverAppBar(
              elevation: 0,
              pinned: true,
              floating: false,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.white,
              toolbarHeight: 160,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 38, left: 20, right: 20),
                child: Column(children: [UserHeader(), Gap(15), SearchBox()]),
              ),
            ),

            ///Category
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: FoodCateogry(),
              ),
            ),

            ///GridView
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 6,

                  (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => ProductDetailsView()),
                      );
                    },
                    child: CardItem(
                      image: "assets/test/test.png",
                      name: "Hamburger",
                      desc: "Chicken Burger",
                      rate: "4.6",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
