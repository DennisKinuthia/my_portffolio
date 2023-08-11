import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/info_bar/components/address_card.dart';
import 'package:portfolio/src/features/info_bar/components/photo_title_card.dart';
import 'package:portfolio/src/features/info_bar/components/social_links.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: Sizes.p32),
      color: AppColors.navBgcolor,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PhotoAndTitleCard(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(children: <Widget>[
                AddressCard(),
              ]),
            ),
          ),
          SocialLinks(),
          //LanguageProficiency(),
        ],
      ),
    );
  }
}
