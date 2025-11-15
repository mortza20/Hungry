import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/features/auth/widgets/custom_aut_btn.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:dontknow_jus_test/shared/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Gap(150),
                  SvgPicture.asset("assets/logo/logo.svg"),
                  Gap(10),
                  CustomText(
                    text: "This is the best food app you could find on android",
                    color: Colors.white,
                    size: 13,
                    weight: FontWeight.w600,
                  ),
                  Gap(70),
                  //The email textfiled
                  CustomTextfiled(
                    hint: "Email Address",
                    isPassword: false,
                    controller: emailController,
                  ),
                  Gap(15),
                  //The password textfiled
                  CustomTextfiled(
                    hint: "Password",
                    isPassword: true,
                    controller: passwordController,
                  ),
                  Gap(20),
                  // The "LoginBoutton"
                  CustomAutBtn(
                    text: "Sign up",
                    tapbtn: () {
                      if (formkey.currentState!.validate()) {
                        print("Login up seccess");
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
