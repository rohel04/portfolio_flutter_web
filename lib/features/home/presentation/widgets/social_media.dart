import 'package:flutter/material.dart';
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
            onTap: () {

            }),
        SocialIconWidget(
            iconTitle: 'Instagram',
            imageTag: 'instagram.png',
            onTap: () {

            }),
        SocialIconWidget(
            iconTitle: 'LinkedIn',
            imageTag: 'linkedin.png',
            onTap: () {

            }),
        SocialIconWidget(
            iconTitle: 'GitHub',
            imageTag: 'github.png',
            onTap: () {

            }),
        SocialIconWidget(
            iconTitle: 'Twitter',
            imageTag: 'twitter.png',
            onTap: () {

            }),
      ],
    );
  }
}
