import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/custom_textfield.dart';
import 'package:flutter_resume/features/home/presentation/widgets/tween_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color_util.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {

  final _formkey = GlobalKey<FormState>();

  Future<void> startAuthentication(BuildContext buildContext) async {
    bool? validity = _formkey.currentState?.validate();
    if (validity!) {
      _formkey.currentState?.save();
      //call api
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height*1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 100.w,vertical: 10.h),
              padding: EdgeInsets.symmetric(horizontal:100.w,vertical: 10.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TweenText(title: 'Contact Me', size: 30,fontWeight: FontWeight.bold),
                    SizedBox(height: 40.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Form(
                                  key: _formkey,
                              child: Column(
                                  children: [
                                    CustomTextField(hintText: 'Full Name'),
                                    CustomTextField(hintText: 'Email'),
                                    CustomTextField(hintText: 'Phone'),
                                    CustomTextField(hintText: 'Message',maxLine: 5),
                                    ElevatedButton(onPressed: (){
                                      startAuthentication(context);
                                    },style: ElevatedButton.styleFrom(
                                      minimumSize: Size(double.infinity, 50.h),
                                      backgroundColor: Colors.white10
                                    ), child: const Text('Send Message'),),
                                  ],
                              ),
                            ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h,horizontal: 50.w),
                          height: 300.h,
                            width: 300.h,
                          child: Column(
                            children: [
                              Text('Address | Contact',style: TextStyle(fontSize: 18.sp,color:ColorUtils.kHomeTextWhite,fontWeight: FontWeight.bold,height: 2)),
                              SizedBox(height: 10.h),
                              Text('Rohel Man Shakya',style: TextStyle(fontSize: 14.sp,color:Colors.white)),
                              SizedBox(height: 10.h),
                              Text('Naghal',style: TextStyle(fontSize: 14.sp,color:Colors.white)),
                              SizedBox(height: 10.h),
                              Text('Kathmandu, Nepal',style: TextStyle(fontSize: 14.sp,color:Colors.white)),
                              SizedBox(height: 30.h),
                              Text('Latest Blog',style: TextStyle(fontSize: 18.sp,color:ColorUtils.kHomeTextWhite,fontWeight: FontWeight.bold,height: 2)),
                              SizedBox(height: 10.h),
                              Text('Planning to start writing soon',style: TextStyle(fontSize: 14.sp,color:Colors.white)),

                            ],
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 40.h,
            width: double.infinity,
            color: Color(0xFF252525),
            child: Center(child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children:[
                    const Icon(Icons.email,),
                    SizedBox(width: 1.w),
                    const Text('rohelshk@gmail.com')
                  ],
                ),
                SizedBox(width: 10.w),
                Row(
                  children:[
                    const Icon(Icons.location_on),
                    SizedBox(width: 1.w),
                    const Text('Kathmandu, Nepal')
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
