import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class SelectionWidgets extends StatefulWidget {
  const SelectionWidgets({super.key});

  @override
  State<SelectionWidgets> createState() => _SelectionWidgetsState();
}

bool firstSelected = false;
bool secondSelected = false;
bool thirdSelected = false;

class _SelectionWidgetsState extends State<SelectionWidgets> {
  @override
  Widget build(BuildContext context) {



    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero
          ),
          onPressed: () {
            setState(() {
              firstSelected = !firstSelected;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: firstSelected ? AppColors.c_0093D6 : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: firstSelected ? AppColors.c_0093D6 : AppColors.c_0D2333,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                23.getW(),
                16.getH(),
                34.getW(),
                19.getW(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AppImages.person, color: firstSelected ? AppColors.white : AppColors.c_0D2333,),
                  SizedBox(width: 33.getW(),),
                  Text("Profile", style: AppTextStyle.interBold.copyWith(
                    color: firstSelected ? AppColors.white : AppColors.c_0D2333,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.getH(),
                  ),),
                  SizedBox(width: 120.getW(),),
                  SvgPicture.asset(AppImages.arrowFollowIos, color: firstSelected ? AppColors.white : AppColors.c_0D2333,),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 41.getH(),),
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero
          ),
          onPressed: () {
            setState(() {
              secondSelected = !secondSelected;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: secondSelected ? AppColors.c_0093D6 : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: secondSelected ? AppColors.c_0093D6 : AppColors.c_0D2333,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                23.getW(),
                16.getH(),
                34.getW(),
                19.getW(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppImages.stats, color: secondSelected ? AppColors.white : AppColors.c_0D2333,),
                  Text("Account Statement", style: AppTextStyle.interBold.copyWith(
                    color: secondSelected ? AppColors.white : AppColors.c_0D2333,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.getH(),
                  ),),
                  SvgPicture.asset(AppImages.arrowFollowIos, color: secondSelected ? AppColors.white : AppColors.c_0D2333,),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 41.getH(),),
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero
          ),
          onPressed: () {
            setState(() {
              thirdSelected = !thirdSelected;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: thirdSelected ? AppColors.c_0093D6 : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: thirdSelected ? AppColors.c_0093D6 : AppColors.c_0D2333,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                23.getW(),
                16.getH(),
                34.getW(),
                19.getW(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AppImages.support, color: thirdSelected ? AppColors.white : AppColors.c_0D2333,),
                  SizedBox(width: 21.getW(),),
                  Text("Support", style: AppTextStyle.interBold.copyWith(
                    color: thirdSelected ? AppColors.white : AppColors.c_0D2333,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.getH(),
                  ),),
                  SizedBox(width: 120.getW(),),
                  SvgPicture.asset(AppImages.arrowFollowIos, color: thirdSelected ? AppColors.white : AppColors.c_0D2333,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}