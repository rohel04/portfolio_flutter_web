import 'package:flutter/material.dart';
import 'package:flutter_resume/utils/color_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/home/presentation/pages/home_screen.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize:const Size(1280,720),
      minTextAdapt: true,
      builder:(context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  const HomeScreen(),
          theme: ThemeData(

            textTheme: Theme.of(context).textTheme.apply(
              bodyColor: ColorUtils.kHomeTextWhite,
              fontFamily: 'Montserrat',
            )
          ),
        );
      }
    );
  }
}
