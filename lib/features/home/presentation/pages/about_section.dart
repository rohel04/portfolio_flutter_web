import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/section_title.dart';
import 'package:flutter_resume/utils/color_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
        color: Colors.white10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const TweenText(title: 'About Me',size: 30),
            const SizedBox(height: 30),
            Text('Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document. To make your document look professionally produced, Word provides header, footer, cover page, and text box designs that complement each other. For example, you can add a matching cover page, header, and sidebar. Click Insert and then choose the elements you want from the different galleries. Themes and styles also help keep your document coordinated.',style: TextStyle(fontSize: 18.sp,color: ColorUtils.kHomeTextWhite,height: 2),textAlign: TextAlign.justify)
          ],
        ),

    );
  }
}
