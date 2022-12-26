import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/social_media.dart';
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
        padding:  EdgeInsets.symmetric(vertical: 60.h),
          color: ColorUtils.kHomeBlack,
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
                                 Text('WELCOME TO MY PORTFOLIO',
                                    style: TextStyle(
                                        fontSize: 26.h,
                                        color: ColorUtils.kHomeTextWhite,
                                        fontFamily: 'Montserrat')),
                                SizedBox(width: 2.w),
                                 Icon(
                                  Icons.waving_hand,
                                  size: 5.w,
                                  color: Colors.yellowAccent,
                                )
                              ]),
                          SizedBox(height: 20.h),
                          Text(
                            'Rohel Shakya',
                            style: TextStyle(
                                fontSize: 48.h, color: ColorUtils.kHomeTextWhite,fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:   [
                                const Icon(Icons.play_arrow_rounded,
                                    color: Colors.redAccent),
                                Text(
                                  'Flutter Developer',
                                  style: TextStyle(
                                      fontSize: 24.h,
                                      color: ColorUtils.kHomeTextWhite),
                                )
                              ]),
                           SizedBox(height: 150.h),
                           Text(
                            'Connect via:',
                            style: TextStyle(color: ColorUtils.kHomeTextWhite,fontSize: 12.sp),
                          ),
                          SizedBox(height: 30.h),
                          const SocialMediaWidget()
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TweenImage.tweenImage('assets/images/canva_one.jpg',400,400)
                    )
                  ],
                ),
              ),

            ]),

        ),
    );
  }
}
