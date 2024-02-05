import 'package:flutter/material.dart';

import '../utils/size/size_utils.dart';
import 'get_rows.dart';

class GlobalContainer extends StatelessWidget {
  const GlobalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 46.getH(),
      decoration: const BoxDecoration(color: Color(0xFFFEFEFF)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.getW()),
        child: const GetRows(),
      ),
    );
  }
}
