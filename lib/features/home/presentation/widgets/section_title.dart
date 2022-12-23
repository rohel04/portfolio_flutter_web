import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color_util.dart';

class TweenText extends StatefulWidget {

  final String title;
  final int size;

  const TweenText({Key? key, required this.title, required this.size}) : super(key: key);

  @override
  State<TweenText> createState() => _TweenTextState();
}

class _TweenTextState extends State<TweenText> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 3),
      tween: Tween<double>(begin: 0, end: 1),
      child: Text(widget.title,style: TextStyle(fontSize: widget.size.sp,color: ColorUtils.kHomeTextWhite,fontWeight: FontWeight.bold)),
      builder: (context,value,child){
        return Opacity(opacity: value,child: child);
      },
    );
  }
}
