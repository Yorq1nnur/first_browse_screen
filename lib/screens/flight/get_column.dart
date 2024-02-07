import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class GetColumn extends StatefulWidget {
  const GetColumn({super.key});

  @override
  State<GetColumn> createState() => _GetColumnState();
}

class _GetColumnState extends State<GetColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 140.w,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Row(
                    children: [
                      SizedBox(width: 3.w,),
                      SvgPicture.asset(AppImages.date),
                    ],
                  ),
                  prefixIconConstraints: BoxConstraints(maxHeight: 20.h, maxWidth: 20.h,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: AppColors.c_E6E8E7,
                      width: 1,
                    ),
                  ),
                  labelText: "Departure",
                  labelStyle: AppTextStyle.interRegular.copyWith(
                    color: AppColors.c_555555,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 140.w,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: AppColors.c_E6E8E7,
                      width: 1,
                    ),
                  ),
                  labelText: "Return",
                  labelStyle: AppTextStyle.interRegular.copyWith(
                    color: AppColors.c_555555,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 140.w,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: AppColors.c_E6E8E7,
                      width: 1,
                    ),
                  ),
                  labelText: "Travel",
                  labelStyle: AppTextStyle.interRegular.copyWith(
                    color: AppColors.c_555555,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 140.w,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: AppColors.c_E6E8E7,
                      width: 1,
                    ),
                  ),
                  labelText: "Class",
                  labelStyle: AppTextStyle.interRegular.copyWith(
                    color: AppColors.c_555555,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
