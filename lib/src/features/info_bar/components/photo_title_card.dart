import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/info_bar/components/pulsating_dot.dart';

class PhotoAndTitleCard extends StatelessWidget {
  const PhotoAndTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bsCardColor,
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p64,
        vertical: Sizes.p24,
      ),
      child: Column(
        children: <Widget>[
          const Stack(
            children: <Widget>[
              Opacity(
                opacity: .8,
                child: CircleAvatar(
                  radius: Sizes.p48,
                  backgroundImage:
                      AssetImage('assets/images/dennis_headshot.jpg'),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Tooltip(
                    message: 'I am available for freelance hire',
                    child: PulsatingDot()),
              ),
            ],
          ),
          gapH12,
          Text(
            'Dennis Kinuthia',
            style: GoogleFonts.roboto(
              fontSize: Sizes.p16,
              fontWeight: FontWeight.w700,
              color: AppColors.headlineColor,
            ),
          ),
          gapH8,
          Text(
            'Full Stack Developer,',
            style: GoogleFonts.roboto(
              fontSize: Sizes.p12,
              color: AppColors.textColor,
            ),
          ),
          Text(
            'Flutter & Firebase/NodeJs',
            style: GoogleFonts.roboto(
              fontSize: Sizes.p12,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
