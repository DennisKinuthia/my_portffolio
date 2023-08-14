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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // TODO : set up links to social media accounts
          SocialIcon(
            onTap: () {},
            image: 'assets/images/linkedin.png',
            label: 'LinkedIn',
          ),
          SocialIcon(
            onTap: () {},
            image: 'assets/images/dribbble.png',
            label: 'Dribbble',
          ),
          SocialIcon(
            onTap: () {},
            image: 'assets/images/behance.png',
            label: 'Behance',
          ),
          SocialIcon(
            onTap: () {},
            image: 'assets/images/github.png',
            label: 'Github',
          ),
          SocialIcon(
            onTap: () {},
            image: 'assets/images/twitter.png',
            label: 'Twitter',
          ),
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
    required this.label,
  });

  final VoidCallback onTap;
  final String image;
  final String label;

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
            fit: BoxFit.contain,
            width: Sizes.p16,
            height: Sizes.p16,
          )),
    );
  }
}
