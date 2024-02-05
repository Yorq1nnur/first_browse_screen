import 'package:first_browse_screen/utils/colors/app_colors.dart';
import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KonetPayProfileScreen extends StatefulWidget {
  const KonetPayProfileScreen({super.key});

  @override
  State<KonetPayProfileScreen> createState() => _KonetPayProfileScreenState();
}

class _KonetPayProfileScreenState extends State<KonetPayProfileScreen> {
  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return  AnnotatedRegion(value: const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparent
    ), child: Scaffold(
      appBar: AppBar(
        leading: ZoomTapAnimation(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, color: AppColors.black,),
        ),
        elevation: 0,
      ),
    ));
  }
}
