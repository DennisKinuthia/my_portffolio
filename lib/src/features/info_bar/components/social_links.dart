import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return InformationContainer(
      showBottomMargin: false,
      child: Wrap(
        spacing: 38.0,
        children: <Widget>[
          //TODO: replace with SVG
          SocialIcon(onTap: () {}, image: 'assets/images/linkedin.png'),
          SocialIcon(onTap: () {}, image: 'assets/images/dribbble.png'),
          SocialIcon(onTap: () {}, image: 'assets/images/behance.png'),
          SocialIcon(onTap: () {}, image: 'assets/images/github.png'),
          SocialIcon(onTap: () {}, image: 'assets/images/twitter.png'),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.onTap,
    required this.image,
  });

  final VoidCallback onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Image.asset(
          image,
          height: Sizes.p12,
          width: Sizes.p12,
          fit: BoxFit.contain,
        ));
  }
}
