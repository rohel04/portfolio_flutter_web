import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color_util.dart';

class SocialIconWidget extends StatefulWidget {

  final String imageTag;
  VoidCallback onTap;
  final String iconTitle;
  SocialIconWidget({Key? key,required this.onTap,required this.imageTag, required this.iconTitle}) : super(key: key);

  @override
  State<SocialIconWidget> createState() => _SocialIconWidgetState();
}

class _SocialIconWidgetState extends State<SocialIconWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(children: [
        Image.asset('assets/icons/${widget.imageTag}',
            height: 30.h, width: 30.w, color: Colors.white),
        Text(
          widget.iconTitle,
          style: const TextStyle(color: ColorUtils.kHomeTextWhite),
        )
      ]),
    );
  }
}
