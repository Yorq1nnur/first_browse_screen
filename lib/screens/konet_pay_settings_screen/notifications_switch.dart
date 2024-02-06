import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class NotificationsSwitch extends StatefulWidget {
  const NotificationsSwitch({super.key});

  @override
  State<NotificationsSwitch> createState() => _NotificationsSwitchState();
}

class _NotificationsSwitchState extends State<NotificationsSwitch> {
  bool alerts = false;
  bool debit = false;
  bool broadcasts = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppImages.alarm),
            Padding(
              padding: EdgeInsets.only(right: 60.getW()),
              child: Text(
                "Credit Alerts",
                style: AppTextStyle.interBold.copyWith(
                  color: AppColors.c_0D2333,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.getH(),
                ),
              ),
            ),
            CupertinoSwitch(
              trackColor: AppColors.c_979797,
              activeColor: AppColors.c_0D2333,
              value: alerts,
              onChanged: (v) {
                alerts = !alerts;
                setState(() {});
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppImages.alarm),
            Padding(
              padding: EdgeInsets.only(right: 65.getW()),
              child: Text(
                "Debit Alerts",
                style: AppTextStyle.interBold.copyWith(
                  color: AppColors.c_0D2333,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.getH(),
                ),
              ),
            ),
            CupertinoSwitch(
              trackColor: AppColors.c_979797,
              activeColor: AppColors.c_0D2333,
              value: debit,
              onChanged: (v) {
                debit = !debit;
                setState(() {});
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppImages.alarm),
            Padding(
              padding: EdgeInsets.only(right: 70.getW()),
              child: Text(
                "Broadcasts",
                style: AppTextStyle.interBold.copyWith(
                  color: AppColors.c_0D2333,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.getH(),
                ),
              ),
            ),
            CupertinoSwitch(
              trackColor: AppColors.c_979797,
              activeColor: AppColors.c_0D2333,
              value: broadcasts,
              onChanged: (v) {
                broadcasts = !broadcasts;
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}
