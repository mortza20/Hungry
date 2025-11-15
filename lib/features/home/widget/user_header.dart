import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(30),
                            SvgPicture.asset(
                              "assets/logo/logo.svg",
                              color: AppColors.primary,
                              height: 35,
                            ),
                            Gap(3),
                            Text("weclome hungr man!"),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(radius: 25,backgroundColor: AppColors.primary,child: Icon(CupertinoIcons.person,color: Colors.white,),),
                      ],
                    );
  }
}