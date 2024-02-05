import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {

  late Title? _character;

  @override
  void initState() {
    _character = titles[0];
    super.initState();
  }

  final List<Title> titles = [
    Title(titleSecond: "Credit Card"),
    Title(titleSecond: "PayPal"),
    Title(titleSecond: "Google pay"),
    Title(titleSecond: "Apple pay"),
  ];

  final List<String> icons = [
    AppImages.creditCard,
    AppImages.payPal,
    AppImages.googlePlay,
    AppImages.applePay,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252.getH(),
      width: 321.getW(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
              color: AppColors.c_090F47.withOpacity(0.1),
              spreadRadius: 1
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.getH(),),
          ...List.generate(
            titles.length,
                (index) => ListTile(
              titleTextStyle: AppTextStyle.interBold.copyWith(
                color: AppColors.c_090F47,
                fontWeight: FontWeight.w600,
                fontSize: 14.getH(),
              ),
              leading: Container(
                width: 40.getW(),
                height: 40.getH(),
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
                child: Image.asset(icons[index]),
              ),
              onTap: (){
                setState(() {
                  _character = titles[index];
                });
              },
              title:  Text(titles[index].titleSecond),
              trailing: Radio<Title>(
                activeColor: AppColors.c_4157FF,
                value: titles[index],
                groupValue: _character,
                onChanged: (Title? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Title {
  final String titleSecond;
  Title({required this.titleSecond});
}
