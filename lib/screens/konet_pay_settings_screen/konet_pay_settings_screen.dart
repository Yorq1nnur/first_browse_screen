import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KonetPaySettingsScreen extends StatefulWidget {
  const KonetPaySettingsScreen({super.key});

  @override
  State<KonetPaySettingsScreen> createState() => _KonetPaySettingsScreenState();
}

class _KonetPaySettingsScreenState extends State<KonetPaySettingsScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          title: Text(
            "Settings",
            style: AppTextStyle.interThin.copyWith(
              color: AppColors.c_0D2333,
              fontSize: 32.getH(),
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: false,
        ),
        backgroundColor: AppColors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 33.getW()),
          child: Column(
            children: [
              const Spacer(),
              ZoomTapAnimation(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Log Out",
                  style: AppTextStyle.interBold.copyWith(
                    color: AppColors.c_F02E54,
                    fontWeight: FontWeight.w800,
                    fontSize: 18.getH(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
