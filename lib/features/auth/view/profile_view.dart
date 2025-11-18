import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/features/auth/view/login_view.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.settings, color: AppColors.primary),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(20),
                Center(
                  child: CircleAvatar(
                    radius: 55,
                    child: ClipOval(
                      child: Image.asset("assets/test/profile.jpg"),
                    ),
                  ),
                ),
                Gap(40),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
                Gap(20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
                Gap(20),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
                Gap(10),
                Divider(),
                Gap(10),
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

                  trailing: CustomText(text: "defult", size: 16),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 120,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(20),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(text: "Edit Profile", color: Colors.white),
                      Gap(10),
                      Icon(Icons.edit_document, color: Colors.white),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (v) => LoginView()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 150,
                    padding: EdgeInsets.all(20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(text: "Logout", color: Colors.white),
                        Gap(10),
                        Icon(Icons.logout, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
