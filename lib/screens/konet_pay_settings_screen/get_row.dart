import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class GetRows extends StatefulWidget {
  const GetRows({super.key});

  @override
  State<GetRows> createState() => _GetRowsState();
}

class _GetRowsState extends State<GetRows> {

  bool fingerPrint = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(AppImages.handleScaner),
        Text("Activate Fingerprint", style: AppTextStyle.interBold.copyWith(
            color: AppColors.c_0D2333,
            fontWeight: FontWeight.w700
        ),),
        SizedBox(width: 14.getW(),),
        CupertinoSwitch(
          trackColor: AppColors.c_979797,
          activeColor: AppColors.c_0D2333,
          value: fingerPrint,
          onChanged: (v) {
            fingerPrint = !fingerPrint;
            setState(() {});
          },
        ),
      ],
    );
  }
}
