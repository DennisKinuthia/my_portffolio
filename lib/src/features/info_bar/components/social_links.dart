import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/constants/app_colors.dart';
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

class SocialIcon extends StatefulWidget {
  const SocialIcon({
    super.key,
    required this.onTap,
    required this.image,
  });

  final VoidCallback onTap;
  final String image;

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  Color _iconColor = AppColors.textColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (PointerEvent event) {
        setState(() {
          _iconColor = AppColors.headlineColor;
        });
      },
      onExit: (PointerEvent event) {
        setState(() {
          _iconColor = AppColors.textColor;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: widget.onTap,
          child: Image.asset(
            widget.image,
            color: _iconColor,
            height: Sizes.p12,
            width: Sizes.p12,
            fit: BoxFit.contain,
          )),
    );
  }
}
