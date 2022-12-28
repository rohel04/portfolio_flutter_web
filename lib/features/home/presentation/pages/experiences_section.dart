import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/tween_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines/timelines.dart';
import '../../../../utils/color_util.dart';

class WorksSection extends StatefulWidget {
  const WorksSection({Key? key}) : super(key: key);

  @override
  State<WorksSection> createState() => _WorksSectionState();
}

class _WorksSectionState extends State<WorksSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      padding: EdgeInsets.symmetric(horizontal:100.w,vertical: 30.h),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const TweenText(
          title: 'Experiences',
          size: 30,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 30.h),
        Expanded(
          child: Timeline.tileBuilder(
            physics: const BouncingScrollPhysics(),
              builder: TimelineTileBuilder.fromStyle(
                  itemCount: 2,
                  contentsAlign: ContentsAlign.alternating,
                  contentsBuilder: (context, index) =>
                    index==0?workContainer(title: 'Mobile Application Developer', position: 'Internship', organization: 'Young Innovations Pvt Ltd', location: 'Mahalakxmisthan, Lalitpur', startDate: '2022/08/12'):
                    workContainer(title: 'Mobile Application Developer', position: 'Traineeship', organization: 'Young Innovations Pvt Ltd', location: 'Mahalakxmisthan, Lalitpur', startDate: '2022/08/12')
                  )),
        )
      ]),
    );
  }

  Widget workContainer(
      {required String title,
      required String position,
      required String organization,
      required String location,
      required String startDate,
      String endDate = 'Present'}) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(seconds: 2),
      builder: (BuildContext context, double value, Widget? child) {
        return Opacity(opacity: value, child: child);
      },
      child: Container(
        width: 300.w,
        padding: EdgeInsets.symmetric(vertical: 20.h),
        color: const Color(0xFF252525),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const Icon(Icons.play_arrow_rounded, color: Colors.redAccent),
              Text(title,
                  style: TextStyle(
                    fontSize: 18.sp,
                  )),
            ]),
            SizedBox(height: 20.h),
            Text(
              position,
              style: TextStyle(fontSize: 16.sp),
            ),
            SizedBox(height: 10.h),
            Text(organization, style: TextStyle(fontSize: 14.sp)),
            SizedBox(height: 10.h),
            Text(location, style: TextStyle(fontSize: 14.sp)),
            SizedBox(height: 10.h),
            Text('$startDate - $endDate', style: TextStyle(fontSize: 14.sp)),
          ],
        ),
      ),
    );
  }
}
