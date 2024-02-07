import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {

  int isSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 14.h,
        bottom: 8.h,
      ),
      margin: EdgeInsets.only(
        top: 40.h,
      ),
      decoration: const BoxDecoration(
        color: AppColors.c_0085FF,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ZoomTapAnimation(
            onTap: (){
              setState(() {
                isSelected = 1;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    AppImages.first,
                    height: 24.h,
                    width: 24.w,
                    color: isSelected == 1 ? AppColors.white : AppColors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 4.h,),
                Text(
                  "Home",
                  style: AppTextStyle.interRegular.copyWith(
                      color: isSelected == 1 ? AppColors.white : AppColors.white.withOpacity(0.5),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          ZoomTapAnimation(
            onTap: (){
              setState(() {
                isSelected = 2;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    AppImages.second,
                    height: 24.h,
                    width: 24.w,
                    color: isSelected == 2 ? AppColors.white : AppColors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 4.h,),
                Text(
                  "Booking",
                  style: AppTextStyle.interRegular.copyWith(
                      color: isSelected == 2 ? AppColors.white : AppColors.white.withOpacity(0.5),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          ZoomTapAnimation(
            onTap: (){
              setState(() {
                isSelected = 3;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    AppImages.third,
                    height: 24.h,
                    width: 24.w,
                    color: isSelected == 3 ? AppColors.white : AppColors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 4.h,),
                Text(
                  "Offer",
                  style: AppTextStyle.interRegular.copyWith(
                      color: isSelected == 3 ? AppColors.white : AppColors.white.withOpacity(0.5),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          ZoomTapAnimation(
            onTap: (){
              setState(() {
                isSelected = 4;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    AppImages.five,
                    height: 24.h,
                    width: 24.w,
                    color: isSelected == 4 ? AppColors.white : AppColors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 4.h,),
                Text(
                  "Inbox",
                  style: AppTextStyle.interRegular.copyWith(
                      color: isSelected == 4 ? AppColors.white : AppColors.white.withOpacity(0.5),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          ZoomTapAnimation(
            onTap: (){
              setState(() {
                isSelected = 5;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    AppImages.six,
                    height: 24.h,
                    width: 24.w,
                    color: isSelected == 5 ? AppColors.white : AppColors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 4.h,),
                Text(
                  "Profile",
                  style: AppTextStyle.interRegular.copyWith(
                      color: isSelected == 5 ? AppColors.white : AppColors.white.withOpacity(0.5),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
