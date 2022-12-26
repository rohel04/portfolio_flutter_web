import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/tween_text.dart';
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
        const TweenText(title: 'Works', size: 30,fontWeight: FontWeight.bold,),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             workContainer(title: 'Mobile Application Developer',position: 'Internship',organization: 'Young Innovations Pvt Ltd.',location: 'Mahalakhsmisthan, Lalitpur',startDate: '2022/09/12',endDate: '2022/12/12'),
             workContainer(title: 'Mobile Application Developer',position: 'Traineeship',organization: 'Young Innovations Pvt Ltd.',location: 'Mahalakhsmisthan, Lalitpur',startDate: '2022/12/12',endDate: '2023/03/12'),
             workContainer(title: 'Mobile Application Developer',position: 'Traineeship',organization: 'Young Innovations Pvt Ltd.',location: 'Mahalakhsmisthan, Lalitpur',startDate: '2022/09/12',endDate: '2022/12/12'),



            ],
          )

      ]),
    );
  }

  Widget workContainer({required String title,required String position,required String organization,required String location,required String startDate,String endDate='Present'}){
    return TweenAnimationBuilder(
      tween: Tween<double>(begin:0,end:1),
      duration: const Duration(seconds: 2),
      builder: (BuildContext context, double value, Widget? child) {
        return Opacity(opacity: value,child: child);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 10.w),
        color: const Color(0xFF252525),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              const Icon(Icons.play_arrow_rounded,
                  color: Colors.redAccent),
              Text(title,style: TextStyle(fontSize: 18.sp,)),


            ]),
            SizedBox(height: 20.h),
            Text(position,style: TextStyle(fontSize: 16.sp),),
            SizedBox(height: 20.h),
            Text(organization,style: TextStyle(fontSize: 14.sp)),SizedBox(height: 20.h),
            Text(location,style: TextStyle(fontSize: 14.sp)),SizedBox(height: 20.h),
            Text('$startDate - $endDate',style: TextStyle(fontSize: 14.sp)),
          ],
        ),
      ),
    );
  }
}
