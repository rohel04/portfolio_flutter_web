import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_resume/features/home/presentation/widgets/social_icon_widget.dart';

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIconWidget(
            iconTitle: 'Facebook',
            imageTag: 'fb.png',
            onTap: () async{
                   launchURL('https://www.facebook.com');
            }),
        SocialIconWidget(
            iconTitle: 'Instagram',
            imageTag: 'instagram.png',
            onTap: () {
                launchURL('https://www.instagram.com/rohel_shk');
            }),
        SocialIconWidget(
            iconTitle: 'LinkedIn',
            imageTag: 'linkedin.png',
            onTap: () {
                launchURL('https://www.linkedin.com/in/rohel-shakya');
            }),
        SocialIconWidget(
            iconTitle: 'GitHub',
            imageTag: 'github.png',
            onTap: () {
                  launchURL('https://www.github.com');
            }),
        SocialIconWidget(
            iconTitle: 'Twitter',
            imageTag: 'twitter.png',
            onTap: () {
                  launchURL('https://www.twitter.com');
            }),
      ],
    );
  }

  void launchURL(String url) async{
    var uri=Uri.parse(url);
    if(await canLaunchUrl(uri)){
      await launchUrl(uri);
    }
    else{
    }
  }
}
