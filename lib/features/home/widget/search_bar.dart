import 'package:dontknow_jus_test/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor:Colors.white,
                          filled: true,
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: AppColors.primary,
                          ),
                          hintText: "Search",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    );
  }
}