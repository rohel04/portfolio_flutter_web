import 'package:flutter/material.dart';
import 'package:flutter_resume/features/home/presentation/pages/about_section.dart';
import 'package:flutter_resume/features/home/presentation/widgets/appbar_actions.dart';
import 'package:flutter_resume/features/home/presentation/pages/contact_section.dart';
import 'package:flutter_resume/features/home/presentation/pages/home_section.dart';
import 'package:flutter_resume/features/home/presentation/pages/experiences_section.dart';
import 'package:flutter_resume/features/home/presentation/pages/skills_section.dart';
import 'package:flutter_resume/utils/color_util.dart';
import 'package:flutter_resume/utils/value_listener.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PageController pageController=PageController();
  List navItems=['Home','About','Skills','Experiences','Contact'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtils.kHomeBlack,
        title: const Text('My Resume',style: TextStyle(fontSize: 22)),
        elevation: 0.0,
        actions: List.generate(5, (index) => AppBarActionWidget(onTap: (){
          scrollToIndex(index);
          }, text: navItems[index], index: index,))
      ),
      body: Container(
        color: ColorUtils.kHomeBlack,
        child: PageView(
          pageSnapping: false,
          controller: pageController,
          scrollDirection: Axis.vertical,
          onPageChanged: (index){
              ValueListener.currentIndex.value=index;
          },
          children:const [
            HomeSection(),
            AboutSection(),
            SkillsScreen(),
            WorksSection(),
            ContactSection(),
          ]
        ),
      ),
    );


  }
  void scrollToIndex(int index){
    pageController.animateToPage(index, duration: const Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}
