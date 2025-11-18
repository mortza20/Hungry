import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/features/auth/view/login_view.dart';
import 'package:dontknow_jus_test/features/auth/widgets/custom_aut_btn.dart';
import 'package:dontknow_jus_test/shared/custom_text.dart';
import 'package:dontknow_jus_test/shared/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();
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
                  //logo
                  Gap(150),
                  SvgPicture.asset("assets/logo/logo.svg"),
                  Gap(50),
                  //name filed
                  CustomTextfiled(
                    hint: "Name",
                    isPassword: false,
                    controller: nameController,
                  ),
                  Gap(15),
                  //email filed
                  CustomTextfiled(
                    hint: "Email Address",
                    isPassword: false,
                    controller: emailController,
                  ),
                  // password filed
                  Gap(15),
                  CustomTextfiled(
                    hint: "Password ",
                    isPassword: true,
                    controller: passController,
                  ),

                  //confirm password flied
                  Gap(20),

                  /// Sign up btn
                  CustomAutBtn(text: "Sign up", tapbtn: () {}),
                  Gap(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (e) => LoginView()),
                      );
                    },
                    child: CustomText(
                      text: "Alrady have an account? sgin in",
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
