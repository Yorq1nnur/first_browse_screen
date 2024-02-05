import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../utils/images/app_images.dart';

class ViewAllItem extends StatelessWidget {
  const ViewAllItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.getW(), top: 16.getH(), bottom: 16.getH()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Featured", style: AppTextStyle.interBold.copyWith(
            color: const Color(0xFF333333),
            fontSize: 18.getH(),
            fontWeight: FontWeight.w700,
          ),),
          Padding(
              padding: EdgeInsets.only(
                right: 10.getW(),
              ),
              child: ZoomTapAnimation(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Veiw all", style: AppTextStyle.interThin.copyWith(
                      color: const Color(0xFF999999),
                      fontSize: 14.getH(),
                      fontWeight: FontWeight.w500,
                    ),),
                    SvgPicture.asset(AppImages.arrowFollow),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
