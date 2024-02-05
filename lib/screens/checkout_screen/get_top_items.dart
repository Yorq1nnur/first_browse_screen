import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class GetTopItems extends StatelessWidget {
  const GetTopItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "2 Items in your cart",
              style: AppTextStyle.interBold.copyWith(
                color: AppColors.c_090F47.withOpacity(0.45),
                fontSize: 14.getH(),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "TOTAL",
              style: AppTextStyle.interBold.copyWith(
                color: AppColors.c_090F47.withOpacity(0.45),
                fontSize: 13.getH(),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "\$185.00",
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.c_090F47,
              fontSize: 16.getH(),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 11.getH(),
        ),
        Text(
          "Delivery Address",
          style: AppTextStyle.interBold.copyWith(
            color: AppColors.c_090F47,
            fontSize: 16.getH(),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 7.getH(),
        ),
      ],
    );
  }
}
