import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class PackagesAndTechnologies extends StatelessWidget {
  const PackagesAndTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    return const InformationContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Package(framework: 'Flutter, Firebase'),
          gapH8,
          Package(framework: 'Express.js, MongoDB'),
          gapH8,
          Package(framework: 'GIT knowledge'),
          gapH8,
          Package(framework: 'Flask, postgreSQL'),
          gapH8,
          Package(framework: 'Virtual Private Servers'),
          gapH8,
          Package(framework: 'Domains, Hosting'),
        ],
      ),
    );
  }
}

class Package extends StatelessWidget {
  const Package({super.key, required this.framework});

  final String framework;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Icon(
          Icons.check_rounded,
          color: AppColors.primary,
          size: Sizes.p20,
        ),
        gapW12,
        Text(
          framework,
          style: GoogleFonts.roboto(
            fontSize: Sizes.p12,
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
