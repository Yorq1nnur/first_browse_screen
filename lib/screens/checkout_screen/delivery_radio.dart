import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class DeliveryRadioWidget extends StatefulWidget {
  const DeliveryRadioWidget({super.key});

  @override
  State<DeliveryRadioWidget> createState() => _DeliveryRadioWidgetState();
}

class _DeliveryRadioWidgetState extends State<DeliveryRadioWidget> {

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [...List.generate(
        address.length,
            (index) => Column(
          children: [
            SizedBox(height: 8.getH(),),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: const [
                    BoxShadow(
                        color: AppColors.black, //.withOpacity(0.1)
                        spreadRadius: 1)
                  ]),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(bottom: 28.getH()),
                  child: IconButton(
                    style: IconButton.styleFrom(
                        padding: EdgeInsets.zero),
                    onPressed: () {},
                    icon: SvgPicture.asset(AppImages.pencil),
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
      ),],
    );
  }
}

class DeliveryAddress {
  final String text;
  final Text subTitle;

  DeliveryAddress({required this.text, required this.subTitle});
}
