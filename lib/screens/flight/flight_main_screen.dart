// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_browse_screen/screens/flight/bottom_container.dart';
import 'package:first_browse_screen/screens/flight/get_chennai.dart';
import 'package:first_browse_screen/screens/flight/get_column.dart';
import 'package:first_browse_screen/screens/flight/get_container.dart';
import 'package:first_browse_screen/screens/flight/get_scroll_row.dart';
import 'package:first_browse_screen/screens/flight/get_second_container.dart';
import 'package:first_browse_screen/screens/flight/get_selection_row.dart';
import 'package:first_browse_screen/utils/images/app_images.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';

class FlightMainScreen extends StatefulWidget {
  const FlightMainScreen({super.key});

  @override
  State<FlightMainScreen> createState() => _FlightMainScreenState();
}

class _FlightMainScreenState extends State<FlightMainScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.flightGradient,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: 18.w,
                    right: 18.w,
                    top: 28.h,
                    bottom: 17.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.c_B6DCF3,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.25),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppImages.flightPerson),
                        Text(
                          "Dinakaran",
                          style: AppTextStyle.interRegular.copyWith(
                            color: AppColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SvgPicture.asset(
                          AppImages.flightAlarm,
                          width: 36.w,
                          height: 36.h,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 2.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 17.w,
                    right: 17.w,
                    bottom: 17.w,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.c_591B1B.withOpacity(0.05),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: GetSelectionRow(),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 17.w,
                    right: 17.w,
                    bottom: 17.h,
                  ),
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 6.w,
                    top: 8.h,
                    bottom: 20.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.c_000000,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      GetChennai(),
                      SizedBox(
                        height: 20.h,
                      ),
                      GetColumn(),
                      SizedBox(
                        height: 25.h,
                      ),
                      GetContainer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                GetSecondContainer(),
                SizedBox(
                  height: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot offer",
                        style: AppTextStyle.interRegular.copyWith(
                          color: AppColors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ZoomTapAnimation(
                        child: Text(
                          "See all",
                          style: AppTextStyle.interRegular.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GetScrollRow(),
                BottomContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
