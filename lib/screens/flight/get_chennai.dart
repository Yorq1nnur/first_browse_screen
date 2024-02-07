import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class GetChennai extends StatefulWidget {
  const GetChennai({super.key});

  @override
  State<GetChennai> createState() => _GetChennaiState();
}

class _GetChennaiState extends State<GetChennai> {

  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 350.w,
          child: TextField(
            controller: textEditingController1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.c_E6E8E7,
                    width: 1
                ),
              ),
              hintText: "CHENNAI   CHE",
              hintStyle: AppTextStyle.interRegular.copyWith(
                color: AppColors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600
              ),
              labelText: "From",
              labelStyle: AppTextStyle.interRegular.copyWith(
                  color: AppColors.c_555555,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400
              ),
              prefixIcon: SvgPicture.asset(AppImages.fieldFirstIcon,),
              prefixIconConstraints: BoxConstraints(maxHeight: 20.h, maxWidth: 20.h,),
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        SizedBox(
          width: 350.w,
          child: TextField(
            controller: textEditingController2,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.c_E6E8E7,
                    width: 1
                ),
              ),
              hintText: "BANGALORE   BLR",
              hintStyle: AppTextStyle.interRegular.copyWith(
                  color: AppColors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600
              ),
              labelText: "From",
              labelStyle: AppTextStyle.interRegular.copyWith(
                  color: AppColors.c_555555,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400
              ),
              prefixIcon: SvgPicture.asset(AppImages.fieldSecondIcon,),
              prefixIconConstraints: BoxConstraints(maxHeight: 20.h, maxWidth: 20.h,),
            ),
          ),
        ),
      ],
    );
  }
}
