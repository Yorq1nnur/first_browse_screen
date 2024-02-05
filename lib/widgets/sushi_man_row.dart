import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:first_browse_screen/widgets/get_sushi_man_container.dart';
import 'package:flutter/material.dart';

class SushiManRow extends StatelessWidget {
  const SushiManRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const GetSushiManContainer(),
        SizedBox(width: 10.getW(),),
        const GetSushiManContainer(),
        SizedBox(width: 10.getW(),),
        const GetSushiManContainer(),
        SizedBox(width: 10.getW(),),
        const GetSushiManContainer(),
        SizedBox(width: 10.getW(),),
        const GetSushiManContainer(),
        SizedBox(width: 10.getW(),),
        const GetSushiManContainer(),
      ],
    );
  }
}
