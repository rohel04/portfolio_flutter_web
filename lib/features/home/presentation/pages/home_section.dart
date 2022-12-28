import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/social_media.dart';
import 'package:flutter_resume/features/home/presentation/widgets/tween_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color_util.dart';
import '../widgets/tween_image.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/banner-b&w.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black87, BlendMode.darken)

          )
        ),
        padding:  EdgeInsets.symmetric(horizontal:30.w,vertical: 70.h),
            child: Column(children: [
              Container(
                margin:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 50.h),
                child: Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                 const TweenText(title: 'WELCOME TO MY PORTFOLIO', size: 26),
                                SizedBox(width: 2.w),
                                 Icon(
                                  Icons.waving_hand,
                                  size: 20.w,
                                  color: Colors.yellowAccent,
                                )
                              ]),
                          SizedBox(height: 15.h),
                          const TweenText(title: 'Rohel Shakya', size: 48,fontWeight: FontWeight.bold,),
                          SizedBox(height: 15.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:   const [
                                Icon(Icons.play_arrow_rounded,
                                    color: Colors.redAccent),
                                TweenText(title: 'Flutter Developer', size: 24)
                              ]),
                           SizedBox(height: 100.h),
                           const TweenText(title: 'Connect via :', size:12),
                          SizedBox(height: 30.h),
                          const SocialMediaWidget()
                        ],
                      ),
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: TweenImage.tweenImage('assets/images/prof.png',500,500)
                    // )
                  ],
                ),
              ),

            ]),

        ),
    );
  }
}
