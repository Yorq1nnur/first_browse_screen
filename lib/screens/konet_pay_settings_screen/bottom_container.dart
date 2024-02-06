import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.getH(),
      decoration: const BoxDecoration(color: AppColors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(style: IconButton.styleFrom(
                  padding: EdgeInsets.zero
              ), onPressed: (){}, icon: SvgPicture.asset(AppImages.bottomHome),),
              SizedBox(width: 40.getW(),),
              IconButton(style: IconButton.styleFrom(
                  padding: EdgeInsets.zero
              ), onPressed: (){}, icon: SvgPicture.asset(AppImages.bottomChange),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(style: IconButton.styleFrom(
                  padding: EdgeInsets.zero
              ), onPressed: (){}, icon: SvgPicture.asset(AppImages.bottomScaner),),
              SizedBox(width: 40.getW(),),
              IconButton(style: IconButton.styleFrom(
                  padding: EdgeInsets.zero
              ), onPressed: (){}, icon: SvgPicture.asset(AppImages.bottomSettings),),

            ],
          ),
        ],
      ),
    );
  }
}
