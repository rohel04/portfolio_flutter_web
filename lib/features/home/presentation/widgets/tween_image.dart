import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TweenImage{

  static Widget tweenImage(String path,int height,int width){
    return Container(
      // padding:  EdgeInsets.fromLTRB(5, 10, 10.h, 10),
      child: TweenAnimationBuilder(
        duration:const Duration(seconds: 5),
        tween: Tween<double>(begin: 0, end: 1),
        builder: (BuildContext context,value, Widget? child) {
          return Opacity(opacity: value,
              child:child
          );
        },
        child: Image.asset(
          path,
          height: height.h,
          width: width.w,

        ),
      ),
    );
  }

}