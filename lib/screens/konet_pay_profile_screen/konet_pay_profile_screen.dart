// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_browse_screen/screens/konet_pay_profile_screen/selected_widgets.dart';
import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/images/app_images.dart';

class KonetPayProfileScreen extends StatefulWidget {
  const KonetPayProfileScreen({super.key});

  @override
  State<KonetPayProfileScreen> createState() => _KonetPayProfileScreenState();
}

class _KonetPayProfileScreenState extends State<KonetPayProfileScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return AnnotatedRegion(
        value:
            const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 34.getW(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 77.getH(),
                ),
                IconButton(
                  icon: SvgPicture.asset(AppImages.arrowBack),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: IconButton.styleFrom(padding: EdgeInsets.zero),
                ),
                SizedBox(
                  height: 46.getH(),
                ),
                Text(
                  "About You",
                  style: AppTextStyle.interThin.copyWith(
                      color: AppColors.c_0D2333,
                      fontSize: 32.getH(),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 44.getH(),
                ),
                SelectionWidgets(),
              ],
            ),
          ),
        ));
  }
}
