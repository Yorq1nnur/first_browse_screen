import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class GetContainer extends StatelessWidget {
  const GetContainer({super.key, required this.address, required this.title});

  final String address;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.getH(),
      width: 321.getW(),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: AppColors.c_090F47.withOpacity(0.1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.getW(), right: 20.getW()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(title, style: AppTextStyle.interBold.copyWith(
                  color: AppColors.c_090F47,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.getH(),
                ),),
                Text("(205) 555-024", style: AppTextStyle.interBold.copyWith(
                  color: AppColors.c_090F47.withOpacity(0.45),
                  fontWeight: FontWeight.w400,
                  fontSize: 13.getH(),
                ),),
                Text(address, style: AppTextStyle.interBold.copyWith(
                  color: AppColors.c_090F47.withOpacity(0.45),
                  fontWeight: FontWeight.w400,
                  fontSize: 13.getH(),
                ),),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: SvgPicture.asset(AppImages.pencil))
          ],
        ),
      ),
    );
  }
}
