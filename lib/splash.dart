import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:dontknow_jus_test/features/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        startAnimation = true;
      });
    });

    Future.delayed(
      Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (c) => LoginView()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(250),

            AnimatedSlide(
              duration: Duration(milliseconds: 700),
              curve: Curves.easeOut,
              offset: startAnimation ? Offset(0, 0) : Offset(0, -0.3),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 700),
                opacity: startAnimation ? 1 : 0,
                child: SvgPicture.asset("assets/logo/logo.svg"),
              ),
            ),

            Spacer(),

            AnimatedSlide(
              duration: Duration(milliseconds: 700),
              curve: Curves.easeOut,
              offset: startAnimation ? Offset(0, 0) : Offset(0, 0.3),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 700),
                opacity: startAnimation ? 1 : 0,
                child: Image.asset("assets/splash/splash.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
