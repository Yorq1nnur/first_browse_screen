import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/images/app_images.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:first_browse_screen/widgets/bottom_container.dart';
import 'package:first_browse_screen/widgets/diamond_row.dart';
import 'package:first_browse_screen/widgets/global_container.dart';
import 'package:first_browse_screen/widgets/pancake_row.dart';
import 'package:first_browse_screen/widgets/single_row.dart';
import 'package:first_browse_screen/widgets/sushi_man_row.dart';
import 'package:first_browse_screen/widgets/view_all_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF4C95FF),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F3F8),
        appBar: AppBar(
          backgroundColor: const Color(0xFF4C95FF),
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.getW()),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppImages.location,
                  width: 16.getW(),
                  height: 16.getH(),
                ),
                SizedBox(
                  width: 4.getW(),
                ),
                Text(
                  "1 Pat Tat St, San Po Kong",
                  style: AppTextStyle.interBold.copyWith(
                      color: AppColors.white,
                      fontSize: 14.getH(),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 4.getW(),
                ),
                ZoomTapAnimation(child: SvgPicture.asset(AppImages.arrowBottom)),
                SizedBox(
                  width: 80.getW(),
                ),
                ZoomTapAnimation(child: SvgPicture.asset(AppImages.scaner)),
                SizedBox(
                  width: 15.getW(),
                ),
                ZoomTapAnimation(child: SvgPicture.asset(AppImages.search)),
              ],
            ),
          ),
          elevation: 0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70.getH(),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleRow(),
                  ),
                  const ViewAllItem(),
                  SizedBox(
                    height: 8.getH(),
                  ),
                  const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: PanCakeRow()
                  ),
                  SizedBox(height: 16.getH(),),
                  const ViewAllItem(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.getW()),
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DiamondRow(),
                    ),
                  ),
                  SizedBox(height: 16.getH(),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.getW()),
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SushiManRow(),
                    ),
                  ),

                ],
              ),
            ),
            Positioned(child: Column(
              children: [
                const GlobalContainer(),
                SizedBox(
                  height: 16.getH(),
                ),
              ],
            ),),
            Positioned(
                left: 128.getW(),
                bottom: 92.getH(),
                child: Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.getW()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ZoomTapAnimation(
                          child: Text("Map", style: AppTextStyle.interBold.copyWith(
                            color: AppColors.black
                          ),),
                        ),
                        SizedBox(width: 10.getW(),),
                        SizedBox(width: 0.getW(),),
                        ZoomTapAnimation(
                          child: Text("Filter", style: AppTextStyle.interBold.copyWith(
                              color: AppColors.black
                          ),),
                        ),
                      ],
                    ),
                  ),
            ),),
          Positioned(
            left: 190.getW(),
            bottom: 85.getW(),
            child: Container(
            width: 1.getW(),
            height: 16.getH(),
            decoration: BoxDecoration(
              color: const Color(0xFF999999).withOpacity(0.2),
            ),
          ),
          ),
            const Positioned(
              bottom: 0,
              child: BottomContainer())
          ],
        ),
      ),
    );
  }
}