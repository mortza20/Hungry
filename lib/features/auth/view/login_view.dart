import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/core/network/api_error.dart';
import 'package:dontknow_jus_test/features/auth/data/auth_repo.dart';
import 'package:dontknow_jus_test/features/auth/view/signup_view.dart';
import 'package:dontknow_jus_test/features/auth/widgets/custom_aut_btn.dart';
import 'package:dontknow_jus_test/root.dart';
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

    AuthRepo authRepo = AuthRepo();

    Future<void> login() async {
      try {
        final user = await authRepo.login(
          emailController.text.trim(),
          passwordController.text.trim(),
        );
        if (user != null) {
          Navigator.push(context, MaterialPageRoute(builder: (c) => Root()));
        }
      } catch (e) {
        String errorMsg = "unhandeld error in login";
        if (e is ApiError) {
          errorMsg = e.message;
        }
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(errorMsg)));
      }
    }

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
                  CustomAutBtn(text: "SignIn", tapbtn: login),
                  Gap(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (v) => Root()),
                      );
                    },
                    child: CustomText(
                      text: "-- Contnue as a gust --",
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Gap(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (e) => SignupView()),
                      );
                    },
                    child: CustomText(
                      text: "dont have an account?",
                      color: Colors.white,
                    ),
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
