import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class TextButtonHelperScreen extends StatelessWidget {
  const TextButtonHelperScreen(
      {super.key,
      required this.containerColor,
      required this.spreadColor,
      required this.title,
      required this.onTap});

  final Color containerColor;
  final Color spreadColor;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: onTap,
      child: Container(
        height: 50.getW(),
        width: double.infinity,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: spreadColor,
              spreadRadius: 2,
              blurRadius: 2,
            )
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.interBold
                .copyWith(color: AppColors.black, fontSize: 25.getH()),
          ),
        ),
      ),
    );
  }
}
