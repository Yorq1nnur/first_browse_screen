// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
  late DeliveryAddress? _character;

  @override
  void initState() {
    _character = address[0];
    super.initState();
  }

  final List<DeliveryAddress> address = [
    DeliveryAddress(
      text: "Home",
      subTitle: Text(
        "(205) 555-024\n1786 Wheeler Bridge",
        style: AppTextStyle.interBold.copyWith(
          color: AppColors.c_090F47.withOpacity(0.45),
          fontWeight: FontWeight.w400,
          fontSize: 13.getH(),
        ),
      ),
    ),
    DeliveryAddress(
      text: "Office",
      subTitle: Text(
        "(205) 555-024\n1786 w Dallas St under field",
        style: AppTextStyle.interBold.copyWith(
          color: AppColors.c_090F47.withOpacity(0.45),
          fontWeight: FontWeight.w400,
          fontSize: 13.getH(),
        ),
      ),
    ),
  ];

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
              child: Icon(Icons.arrow_back),
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
              GetTopItems(),
              ...List.generate(
                address.length,
                (index) => Column(
                  children: [
                    SizedBox(height: 8.getH(),),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black, //.withOpacity(0.1)
                                spreadRadius: 1)
                          ]),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(bottom: 7.getH()),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(
                                    padding: EdgeInsets.zero),
                                onPressed: () {},
                                icon: SvgPicture.asset(AppImages.pencil),
                              ),
                            ],
                          ),
                        ),
                        titleTextStyle: AppTextStyle.interBold.copyWith(
                            color: AppColors.c_090F47,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.getH()),
                        title: Text(address[index].text),
                        subtitle: address[index].subTitle,
                        leading: Radio<DeliveryAddress>(
                            activeColor: AppColors.c_4157FF,
                            value: address[index],
                            groupValue: _character,
                            onChanged: (DeliveryAddress? value) {
                              setState(() {
                                _character = value;
                              });
                            }),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 0.getH(),
              ),
              Padding(
                padding: EdgeInsets.only(right: 6.getW()),
                child: Row(
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
                              width: 8.getW(),
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
              PaymentMethods(),
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

class DeliveryAddress {
  final String text;
  final Text subTitle;

  DeliveryAddress({required this.text, required this.subTitle});
}
