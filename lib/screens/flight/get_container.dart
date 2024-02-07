import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class GetContainer extends StatefulWidget {
  const GetContainer({super.key});

  @override
  State<GetContainer> createState() => _GetContainerState();
}

class _GetContainerState extends State<GetContainer> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: (){
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 67.w, vertical: 8.h,),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.c_6FE2F4 : AppColors.redAccent,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(0.25),
                blurRadius: 4
            ),
          ],
        ),
        child: Center(
          child: Text("Search flights", style: AppTextStyle.interRegular.copyWith(
            color: isSelected ? AppColors.white : AppColors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
          ),),
        ),
      ),
    );
  }
}
