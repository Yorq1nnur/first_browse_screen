import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import '../utils/images/app_images.dart';

class SingleRow extends StatelessWidget {
  const SingleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.healthy,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.sushi,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.meat,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.healthy,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.sushi,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.meat,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.healthy,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.sushi,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.meat,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.healthy,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.sushi,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.meat,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.healthy,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.sushi,
          width: 98.getW(),
          height: 64.getH(),
        ),
        Image.asset(
          AppImages.meat,
          width: 98.getW(),
          height: 64.getH(),
        ),
      ],
    );
  }
}
