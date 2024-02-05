import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../utils/colors/app_colors.dart';
import '../utils/images/app_images.dart';
import '../utils/size/size_utils.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 76.getH(),
      decoration: const BoxDecoration(
          color: AppColors.white
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 43.getW()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ZoomTapAnimation(child: SvgPicture.asset(AppImages.bottomLocation)),
            ZoomTapAnimation(child: SvgPicture.asset(AppImages.order)),
            ZoomTapAnimation(child: SvgPicture.asset(AppImages.profile))
          ],
        ),
      ),
    );
  }
}
