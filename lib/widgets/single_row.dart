import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../utils/images/app_images.dart';

class SingleRow extends StatelessWidget {
  const SingleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.healthy,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.sushi,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.meat,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.healthy,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.sushi,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.meat,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.healthy,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.sushi,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.meat,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.healthy,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.sushi,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.meat,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.healthy,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.sushi,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
        ZoomTapAnimation(
          child: Image.asset(
            AppImages.meat,
            width: 98.getW(),
            height: 64.getH(),
          ),
        ),
      ],
    );
  }
}
