// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_browse_screen/screens/checkout_screen/checkout_screen.dart';
import 'package:first_browse_screen/screens/items/text_button.dart';
import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HelperScreen extends StatefulWidget {
  const HelperScreen({super.key});

  @override
  State<HelperScreen> createState() => _HelperScreenState();
}

class _HelperScreenState extends State<HelperScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.blue,
          title: Text(
            "HELPER SCREEN",
            style: AppTextStyle.interThin.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w900,
              fontSize: 30.getH(),
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.getW()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 3.getH(),
              ),
              TextButtonHelperScreen(
                containerColor: AppColors.yellow,
                spreadColor: AppColors.yellowAccent,
                title: "CHECKOUT SCREEN",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CheckOutScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 25.getH(),
              ),
              TextButtonHelperScreen(
                containerColor: AppColors.green,
                spreadColor: AppColors.greenAccent,
                title: "SECOND SCREEN",
                onTap: () {},
              ),
              SizedBox(
                height: 25.getH(),
              ),
              TextButtonHelperScreen(
                containerColor: AppColors.red,
                spreadColor: AppColors.redAccent,
                title: "THIRD SCREEN",
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: AppColors.blue,
      ),
    );
  }
}
