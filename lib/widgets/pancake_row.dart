import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';

import 'get_pancake_container.dart';

class PanCakeRow extends StatelessWidget {
  const PanCakeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16.getW(),
        ),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
        SizedBox(width: 16.getW(),),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
        SizedBox(width: 16.getW(),),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
        SizedBox(width: 16.getW(),),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
        const GetPancakeContainer(),
        SizedBox(width: 16.getW(),),
      ],
    );
  }
}
