import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/widgets/custom_textfield.dart';
import 'package:flutter_resume/features/home/presentation/widgets/section_title.dart';
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            const TweenText(title: 'Contact Me', size: 30),
            const SizedBox(height: 30),
            Form(
                key: _formkey,

                child:
            Column(
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
            ))
          ],
        ),
      ),
    );
  }
}
