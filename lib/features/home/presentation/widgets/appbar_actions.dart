import 'package:flutter/material.dart';
import 'package:flutter_resume/utils/color_util.dart';
import 'package:flutter_resume/utils/value_listener.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarActionWidget extends StatefulWidget {

  final String text;
  Icon? icon;
  VoidCallback onTap;
  final int index;



  AppBarActionWidget({Key? key,required this.onTap, required this.text,this.icon, required this.index}) : super(key: key);

  @override
  State<AppBarActionWidget> createState() => _AppBarActionWidgetState();
}

class _AppBarActionWidgetState extends State<AppBarActionWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      builder: (context,value,child){
        return Container(
            padding:EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
            child: ElevatedButton(
              onPressed: widget.onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorUtils.kHomeBlack,
                elevation: 0.0,

              ),
              child: Text(widget.text,style: TextStyle(fontWeight: value==widget.index?FontWeight.bold:FontWeight.w500,fontSize: 18),),
            )
        );
      },
      valueListenable: ValueListener.currentIndex,

    );
  }
}
