import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';
import 'get_zoom_widget.dart';

class GetRows extends StatelessWidget {
  const GetRows({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GetZoomWidget(title: "Take away", containerColor: Color(0xFFFEFEFF), titleColor: AppColors.black),
        GetZoomWidget(title: "Delivery", containerColor: Color(0xFFFEFEFF), titleColor: AppColors.black),
        GetZoomWidget(title: "Book", containerColor: Color(0xFFFEFEFF), titleColor: AppColors.black),
        GetZoomWidget(title: "Browse", containerColor: Color(0xFF4C95FF), titleColor: AppColors.white),
      ],
    );
  }
}
