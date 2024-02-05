import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';

import 'get_diamond_container.dart';

class DiamondRow extends StatelessWidget {
  const DiamondRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const GetDiamondContainer(),
        SizedBox(width: 10.getW(),),
        const GetDiamondContainer(),
        SizedBox(width: 10.getW(),),
        const GetDiamondContainer(),
        SizedBox(width: 10.getW(),),
        const GetDiamondContainer(),
        SizedBox(width: 10.getW(),),
        const GetDiamondContainer(),
        SizedBox(width: 10.getW(),),
        const GetDiamondContainer(),
      ],
    );
  }
}
