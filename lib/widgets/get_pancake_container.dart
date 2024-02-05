import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/colors/app_colors.dart';
import '../utils/images/app_images.dart';
import '../utils/styles/app_text_style.dart';

class GetPancakeContainer extends StatelessWidget {
  const GetPancakeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 300.getH(),
        width: 255.getW(),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.recommendations,
            ),
            SizedBox(
              height: 12.getH(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.getW()),
              child: Text(
                "Pancake Restaurant",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.interBold.copyWith(
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w700,
                    fontSize: 16.getH()),
              ),
            ),
            SizedBox(
              height: 8.getH(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 12.getW(), right: 44.getW()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppImages.star,
                  ),
                  SizedBox(
                    width: 4.getW(),
                  ),
                  Text(
                    "5.0",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.interBold.copyWith(
                        color: const Color(0xFF333333),
                        fontSize: 13.getH(),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 2.getW(),
                  ),
                  Text(
                    "(99+)",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.interBold.copyWith(
                      color: const Color(0xFF999999),
                      fontSize: 12.getH(),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 8.getW(),
                  ),
                  Container(
                    width: 1.getW(),
                    height: 10.getH(),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEAEAEA),
                    ),
                  ),
                  SizedBox(
                    width: 8.getW(),
                  ),
                  Text(
                    "Western",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.interBold.copyWith(
                      color: const Color(0xFF999999),
                      fontWeight: FontWeight.w400,
                      fontSize: 13.getH(),
                    ),
                  ),
                  SizedBox(
                    width: 8.getW(),
                  ),
                  Container(
                    width: 1.getW(),
                    height: 10.getH(),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEAEAEA),
                    ),
                  ),
                  SizedBox(
                    width: 8.getW(),
                  ),
                  Text(
                    "50m",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.interBold.copyWith(
                      color: const Color(0xFF999999),
                      fontSize: 12.getH(),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
              EdgeInsets.all(12.getW()),
              child: Row(
                children: [
                  Container(
                    width: 110.getW(),
                    height: 24.getH(),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4C95FF).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.getW()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Quick \$100+", maxLines: 1, overflow: TextOverflow.ellipsis, style: AppTextStyle.interBold.copyWith(
                            color: const Color(0xFF4C95FF),
                            fontSize: 14.getH(),
                            fontWeight: FontWeight.w600,
                          ),),
                          SizedBox(width: 4.getW(),),
                          SvgPicture.asset(AppImages.bike)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.getW(),),
                  Container(
                    width: 100.getW(),
                    height: 24.getH(),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4C95FF).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.getW()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Take Away", maxLines: 1, overflow: TextOverflow.ellipsis, style: AppTextStyle.interBold.copyWith(
                            color: const Color(0xFFFBAC36),
                            fontSize: 14.getH(),
                            fontWeight: FontWeight.w600,
                          ),),
                          SizedBox(width: 2.getW(),),
                          SvgPicture.asset(AppImages.korzina)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Positioned(
        left: 205.getW(),
        top: 155.getH(),
        child: Container(
          width: 44.getW(),
          height: 44.getH(),
          decoration: const BoxDecoration(
              color: Color(0xFF4C95FF), shape: BoxShape.circle),
        ),
      ),
      Positioned(
        top: 165.getH(),
        left: 216.getW(),
        child: Text(
          "20-30\nminut",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.interBold.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 10.getH(),
          ),
        ),
      ),
    ],);
  }
}

/*
            Positioned(
              left: 210.getW(),
              top: 370.getH(),
              child: Container(
                width: 44.getW(),
                height: 44.getH(),
                decoration: BoxDecoration(
                    color: Color(0xFF4C95FF), shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 380.getH(),
              left: 220.getW(),
              child: Text(
                "20-30\nminut",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.interBold.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 10.getH(),
                ),
              ),
            ),
 */
