import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/section_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../utils/color_util.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  late List<_ChartData> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=[
      _ChartData(x: 'Meeting deadlines', y: 80),
      _ChartData(x: 'Communication', y: 70),
      _ChartData(x: 'Django', y: 60),
      _ChartData(x: 'Python', y: 50),
      _ChartData(x: 'Flutter', y: 80),
      _ChartData(x: 'Dart', y: 70),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60.w,vertical: 100.h),
      height: 450.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children:[
          const TweenText(title: 'Skills', size: 30),
          SizedBox(height: 30),
          Expanded(
            child: SfCartesianChart(
              plotAreaBorderWidth: 0,
              backgroundColor: Colors.black45,
                primaryXAxis: CategoryAxis(majorGridLines: MajorGridLines(width: 0),labelStyle: TextStyle(fontSize: 14),borderWidth: 0
                ),
                primaryYAxis: NumericAxis(minimum: 0, maximum: 100,isVisible:false,majorGridLines: MajorGridLines(width: 0)),
                series: <ChartSeries<_ChartData, String>>[
                  BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      name: 'Gold',
                      isVisible:true,
                      isTrackVisible: true,
                      trackColor: Colors.white10,
                      opacity: 0.2,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white60)
                ]),
          ),

        ]
      ),
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
class _ChartData{

  final String x;
  final double y;

  _ChartData({required this.x,required this.y});
}
