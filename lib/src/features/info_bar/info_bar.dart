import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/features/info_bar/components/address_card.dart';
import 'package:portfolio/src/features/info_bar/components/photo_title_card.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.navBgcolor,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PhotoAndTitleCard(),
          AddressCard(),
        ],
      ),
    );
  }
}
