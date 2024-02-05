// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_browse_screen/screens/checkout_screen/get_container.dart';
import 'package:first_browse_screen/screens/checkout_screen/radio_model.dart';
import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {

    bool isSelected = false;

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
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.c_090F47,
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2 Items in your cart",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.c_090F47.withOpacity(0.45),
                      fontSize: 14.getH(),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "TOTAL",
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.c_090F47.withOpacity(0.45),
                      fontSize: 13.getH(),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "\$185.00",
                  style: AppTextStyle.interBold.copyWith(
                    color: AppColors.c_090F47,
                    fontSize: 16.getH(),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 11.getH(),
              ),
              Text(
                "Delivery Address",
                style: AppTextStyle.interBold.copyWith(
                  color: AppColors.c_090F47,
                  fontSize: 16.getH(),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15.getH(),
              ),
            Container(
              height: 93.getH(),
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
              child: ListTile(
                onTap: (){
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                title: Padding(
                  padding: EdgeInsets.only(left: 16.getW(), top: 16.getW(), bottom: 16.getW()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Home", style: AppTextStyle.interBold.copyWith(
                        color: AppColors.c_090F47,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.getH(),
                      ),),
                      Text("(205) 555-024", style: AppTextStyle.interBold.copyWith(
                        color: AppColors.c_090F47.withOpacity(0.45),
                        fontWeight: FontWeight.w400,
                        fontSize: 13.getH(),
                      ),),
                      Text("1786 Wheeler Bridge", style: AppTextStyle.interBold.copyWith(
                        color: AppColors.c_090F47.withOpacity(0.45),
                        fontWeight: FontWeight.w400,
                        fontSize: 13.getH(),
                      ),),
                    ],
                  ),
                ),
                leading: Checkbox(
                  checkColor: AppColors.blue,
                    value: isSelected, onChanged: (v){
                  setState(() {
                    isSelected = !isSelected;
                  });
                }),
                trailing: Checkbox(
                  checkColor: AppColors.blue,
                  value: false,
                  onChanged: (v) {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
