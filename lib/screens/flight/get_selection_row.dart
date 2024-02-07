import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class GetSelectionRow extends StatefulWidget {
  const GetSelectionRow({super.key});

  @override
  State<GetSelectionRow> createState() => _GetSelectionRowState();
}

class _GetSelectionRowState extends State<GetSelectionRow> {
  int selectionContainer = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ZoomTapAnimation(
          onTap: (){
            setState(() {
              selectionContainer = 1;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 0.h,
            ),
            decoration: BoxDecoration(
              color: selectionContainer == 1 ? AppColors.c_88E0F3 : AppColors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Center(
              child: Text(
                "One way",
                style: AppTextStyle.interRegular.copyWith(
                  color: selectionContainer == 1 ? AppColors.white : AppColors.c_999999,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
        ),
        ZoomTapAnimation(
          onTap: (){
            setState(() {
              selectionContainer = 2;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 0.h,
            ),
            decoration: BoxDecoration(
              color: selectionContainer == 2 ? AppColors.c_88E0F3 : AppColors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Center(
              child: Text(
                "Round",
                style: AppTextStyle.interRegular.copyWith(
                  color: selectionContainer == 2 ? AppColors.white : AppColors.c_999999,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
        ),
        ZoomTapAnimation(
          onTap: (){
            setState(() {
              selectionContainer = 3;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 0.h,
            ),
            decoration: BoxDecoration(
              color: selectionContainer == 3 ? AppColors.c_88E0F3 : AppColors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Center(
              child: Text(
                "Multi-city",
                style: AppTextStyle.interRegular.copyWith(
                  color: selectionContainer == 3 ? AppColors.white : AppColors.c_999999,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
