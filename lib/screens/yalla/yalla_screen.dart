import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';

class YallaScreen extends StatefulWidget {
  const YallaScreen({super.key});

  @override
  State<YallaScreen> createState() => _YallaScreenState();
}

class _YallaScreenState extends State<YallaScreen> {
  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return  AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        backgroundColor: AppColors.c_3A0CA3,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(25.w, 173.h, 25.w, 47.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.c_46B658,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                    ),
                    onPressed: (){}, child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  child: Center(
                    child: Text("Favorilerim", style: AppTextStyle.interBold.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),),
                  ),
                ),),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.c_4229A2
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 13.h, left: 20.w, right: 60.w, bottom: 29.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 2.w), child: Text("Son Siparislerim", style: AppTextStyle.interRegular.copyWith(
                          color: AppColors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400
                      ),),),
                      Padding(
                        padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(AppImages.simple),
                            SizedBox(width: 3.w,),
                            Center(
                              child: Text("Sandy Ridge Camping Canton", style: AppTextStyle.interRegular.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(AppImages.simple),
                            SizedBox(width: 3.w,),
                            Center(
                              child: Text("Sandy Ridge Camping Canton", style: AppTextStyle.interRegular.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(AppImages.simple),
                            SizedBox(width: 3.w,),
                            Center(
                              child: Text("Sandy Ridge Camping Canton", style: AppTextStyle.interRegular.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
