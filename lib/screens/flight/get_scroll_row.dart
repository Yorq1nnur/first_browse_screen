import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';

class GetScrollRow extends StatelessWidget {
  const GetScrollRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 0.w,
          right: 17.w,
          bottom: 40.h,
          top: 12.h
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(10, (index) => Row(
                  children: [
                    SizedBox(width: 17.w,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.c_591B1B,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 25.h,
                            ),
                            decoration: const BoxDecoration(
                                color: AppColors.c_F2EBE1,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8),)
                            ),
                            child: Center(
                              child: Image.asset(AppImages.masterCard, width: 72, height: 68,),
                            ),
                          ),
                          SizedBox(
                            width: 136.w,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text("25% discount\nwith mastercard"),),),
                        ],
                      ),
                    ),
                  ],
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
