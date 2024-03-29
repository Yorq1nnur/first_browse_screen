import 'package:first_browse_screen/screens/checkout_screen/delivery_radio.dart';
import 'package:first_browse_screen/screens/checkout_screen/get_top_items.dart';
import 'package:first_browse_screen/screens/checkout_screen/payment_methods.dart';
import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/images/app_images.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          title: Text(
            "Checkout",
            style: AppTextStyle.interThin.copyWith(
                color: AppColors.c_090F47,
                fontSize: 16.getH(),
                fontWeight: FontWeight.w700),
          ),
          leading: Padding(
            padding: EdgeInsets.only(
              left: 24.getW(),
              right: 16.getW(),
            ),
            child: ZoomTapAnimation(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ),
        backgroundColor: AppColors.white,
        body: Padding(
          padding: EdgeInsets.only(
            left: 24.getW(),
            right: 24.getW(),
            top: 18.getH(),
            bottom: 11.getH(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GetTopItems(),
              const DeliveryRadioWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: SizedBox(
                      width: 111,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(AppImages.plus),
                          SizedBox(
                            width: 6.getW(),
                          ),
                          Text(
                            "Add Address",
                            style: AppTextStyle.interBold.copyWith(
                                color: AppColors.c_4157FF,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11.getH(),
              ),
              Text(
                "Payment method",
                style: AppTextStyle.interBold.copyWith(
                    color: AppColors.c_090F47,
                    fontSize: 16.getH(),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 12.getH(),
              ),
              const PaymentMethods(),
              SizedBox(
                height: 20.getH(),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.c_4157FF,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.c_4157FF.withOpacity(0.1),
                        blurRadius: 14)
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 13.getH()),
                    child: Text(
                      "Pay Now \$185.00",
                      style: AppTextStyle.interBold.copyWith(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
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