import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/social_media.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color_util.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.kHomeBlack,
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 500.h,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Text('WELCOME TO MY PORTFOLIO',
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    color: ColorUtils.kHomeTextWhite,
                                    fontFamily: 'Montserrat')),
                            SizedBox(width: 2.w),
                            const Icon(
                              Icons.waving_hand,
                              color: Colors.yellowAccent,
                            )
                          ]),
                      SizedBox(height: 15.h),
                       Text(
                        'Rohel Shakya',
                        style: TextStyle(
                            fontSize: 46.sp, color: ColorUtils.kHomeTextWhite),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const Icon(Icons.play_arrow_rounded,
                                color: Colors.redAccent),
                            Text(
                              'Flutter Developer',
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  color: ColorUtils.kHomeTextWhite),
                            )
                          ]),
                      SizedBox(height: 60.h),
                      const Text(
                        'Connect via:',
                        style: TextStyle(color: ColorUtils.kHomeTextWhite),
                      ),
                      SizedBox(height: 30.h),
                      const SocialMediaWidget()
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(5, 10, 15, 10),
                    child: TweenAnimationBuilder(
                      duration:const Duration(seconds: 5),
                      tween: Tween<double>(begin: 0, end: 1),
                      builder: (BuildContext context,value, Widget? child) {
                        return Opacity(opacity: value,
                        child:child
                        );
                  },
                      child: Image.asset(
                        'assets/images/profile.png',
                        height: 400,
                        width: 400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

        ]),
      ),
    );
  }
}
