import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class FirstCheckBox extends StatefulWidget {
  const FirstCheckBox({super.key});

  @override
  State<FirstCheckBox> createState() => _FirstCheckBoxState();
}

class _FirstCheckBoxState extends State<FirstCheckBox> {
  @override
  Widget build(BuildContext context) {
    bool isSelectedFirst = false;
    bool isSelectedSecond = false;
    return Container(
      height: 100.getH(),
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
        padding: EdgeInsets.fromLTRB(
          16.getW(),
          16.getH(),
          20.getW(),
          16.getH(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isSelectedFirst = !isSelectedFirst;
                      isSelectedSecond = !isSelectedFirst;
                    });
                  },
                  icon: Container(
                    height: 18.getH(),
                    width: 18.getH(),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: isSelectedFirst
                                ? AppColors.c_4157FF
                                : Colors.grey.withOpacity(0.15),
                            spreadRadius: 1,
                          ),
                        ]),
                    child: Center(
                      child: Container(
                        height: 13.getH(),
                        width: 13.getW(),
                        decoration: BoxDecoration(
                            color: isSelectedFirst
                                ? AppColors.c_4157FF
                                : AppColors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.white,
                                  spreadRadius: 2)
                            ]),
                      ),
                    ),
                  ),
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 16.getW(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.getH()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.c_090F47,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.getH(),
                    ),
                  ),
                  Text(
                    "(205) 555-024",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.c_090F47.withOpacity(0.45),
                      fontWeight: FontWeight.w400,
                      fontSize: 13.getH(),
                    ),
                  ),
                  Text(
                    "1786 Wheeler Bridge",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.c_090F47.withOpacity(0.45),
                      fontWeight: FontWeight.w400,
                      fontSize: 13.getH(),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 9.getH()),
                  child: ZoomTapAnimation(child: SvgPicture.asset(AppImages.pencil),),
                )
              ],
            ),
          ],
        ),
      ),
    )
    ;
  }
}
