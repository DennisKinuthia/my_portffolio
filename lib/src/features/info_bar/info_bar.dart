import 'package:flutter/material.dart';
import 'package:portfolio/src/features/info_bar/components/photo_title_card.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        PhotoAndTitleCard(),
      ],
    );
  }
}
