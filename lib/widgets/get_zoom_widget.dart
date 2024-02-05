import 'package:first_browse_screen/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../utils/styles/app_text_style.dart';

class GetZoomWidget extends StatefulWidget {
  const GetZoomWidget({super.key, required this.title, required this.containerColor, required this.titleColor});

  final String title;
  final Color containerColor;
  final Color titleColor;

  @override
  State<GetZoomWidget> createState() => _GetZoomWidgetState();
}

class _GetZoomWidgetState extends State<GetZoomWidget> {
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        setState(() {
        });
      },
      child: Container(
        width: 70.getW(),
        height: 25.getH(),
        decoration: BoxDecoration(
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(11),
          boxShadow: [
            BoxShadow(
              color:  widget.containerColor.withOpacity(0.5),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.title,
            style: AppTextStyle.interBold.copyWith(
              color: widget.titleColor,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
