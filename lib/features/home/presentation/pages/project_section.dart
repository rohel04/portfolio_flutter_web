import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/section_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color_util.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
       [
        const TweenText(title: 'Projects', size: 30),
        const SizedBox(height: 30),
        bulletList('E-cooking'),
        bulletList('Ecommerce'),

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
