import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/tween_text.dart';
import 'package:flutter_resume/utils/color_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/tween_image.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 10.h),
        color: Colors.white10,
              child: Column(
              children: <Widget> [
               const TweenText(title: 'About Me',size: 30,fontWeight: FontWeight.bold,),
                SizedBox(height: 30.h),
                Expanded(
                  child: Row(

                    children: [
                      Expanded(
                        flex:1,
                        child:TweenImage.tweenImage('assets/images/about.jpg', 300, 300),),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            TweenText(title: aboutFirst, size: 16),
                            SizedBox(height: 10.h),
                            TweenText(title: aboutSecond, size: 16)
                          ]
                        ),
                      )
                  ],
                  ),
                ),
              ],
          ),


    );
  }

  final String aboutFirst="Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document. To make your document look professionally produced, Word provides header, footer, cover page, and text box designs that complement each other. For example, you can add a matching cover page, header, and sidebar.";
  final String aboutSecond="Click Insert and then choose the elements you want from the different galleries. Themes and styles also help keep your document coordinated. When you click Design and choose a new Theme, the pictures, charts, and SmartArt graphics change to match your new theme. When you apply styles, your headings change to match the new theme. Save time in Word with new buttons that show up where you need them.";

}
