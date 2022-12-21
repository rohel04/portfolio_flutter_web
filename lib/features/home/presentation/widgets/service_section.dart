import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/section_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color_util.dart';

class ServiceSection extends StatefulWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  State<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TweenText(title:'Services',size: 30),
            const SizedBox(height: 30),
            bulletList('Mobile Application Development'),
            bulletList('Web Application Development'),
            bulletList('Desktop Application Development'),
          ]),
    );
  }

  Widget bulletList(String title){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Icon(Icons.play_arrow,color: Colors.redAccent,),
          Text(title,style:TextStyle(color: ColorUtils.kHomeTextWhite,fontSize: 18.sp)),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
