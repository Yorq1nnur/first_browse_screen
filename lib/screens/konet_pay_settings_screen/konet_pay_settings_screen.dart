import 'package:first_browse_screen/screens/konet_pay_settings_screen/bottom_container.dart';
import 'package:first_browse_screen/screens/konet_pay_settings_screen/get_row.dart';
import 'package:first_browse_screen/screens/konet_pay_settings_screen/notifications_switch.dart';
import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/images/app_images.dart';

class KonetPaySettingsScreen extends StatefulWidget {
  const KonetPaySettingsScreen({super.key});

  @override
  State<KonetPaySettingsScreen> createState() => _KonetPaySettingsScreenState();
}

class _KonetPaySettingsScreenState extends State<KonetPaySettingsScreen> {
  bool apperance = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.c_0098DA,
          child: SvgPicture.asset(
            AppImages.plus,
            height: 22.getH(),
            width: 22.getW(),
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 34.getW(),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 66.getH(),
                ),
                Text(
                  "Settings",
                  style: AppTextStyle.interBold.copyWith(
                    color: AppColors.c_0D2333,
                    fontSize: 32.getH(),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 57.getH(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Security",
                      style: AppTextStyle.interBold.copyWith(
                        color: AppColors.c_0D2333,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.getH(),
                      ),
                    ),
                    SizedBox(
                      height: 28.getH(),
                    ),
                    const GetRows(),
                    SizedBox(
                      height: 28.getH(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppImages.transactionsPin),
                        Padding(
                          padding: EdgeInsets.only(right: 50.getW()),
                          child: Text(
                            "Change Transaction Pin",
                            style: AppTextStyle.interBold.copyWith(
                                color: AppColors.c_0D2333,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SvgPicture.asset(AppImages.arrowTr)
                      ],
                    ),
                    SizedBox(
                      height: 57.getH(),
                    ),
                    Text(
                      "Change Transaction Pin",
                      style: AppTextStyle.interBold.copyWith(
                          color: AppColors.c_0D2333,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.getH()),
                    ),
                    SizedBox(
                      height: 30.getH(),
                    ),
                    const NotificationsSwitch(),
                    SizedBox(
                      height: 57.getH(),
                    ),
                    Text(
                      "Appearance",
                      style: AppTextStyle.interBold.copyWith(
                          color: AppColors.c_0D2333,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.getH()),
                    ),
                    SizedBox(
                      height: 28.getH(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppImages.alarm),
                        Padding(
                          padding: EdgeInsets.only(right: 70.getW()),
                          child: Text(
                            "Dark Theme",
                            style: AppTextStyle.interBold.copyWith(
                              color: AppColors.c_0D2333,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.getH(),
                            ),
                          ),
                        ),
                        CupertinoSwitch(
                          trackColor: AppColors.c_979797,
                          activeColor: AppColors.c_0D2333,
                          value: apperance,
                          onChanged: (v) {
                            apperance = !apperance;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 110.getH(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Log Out",
                        style: AppTextStyle.interBold.copyWith(
                            color: AppColors.c_F02E54,
                            fontSize: 18.getH(),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 55.getH(),
                ),
                const BottomContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
