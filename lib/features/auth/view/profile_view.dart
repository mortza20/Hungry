import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/shared/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.settings, color: AppColors.primary),
          ),
        ],
      ),
      body: Column(
        children: [
          Gap(20),
          Center(
            child: CircleAvatar(
              radius: 70,
              child: ClipOval(child: Image.asset("assets/test/profile.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
