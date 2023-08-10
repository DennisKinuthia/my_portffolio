import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final age = today.year - 1996;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.p20),
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p20, vertical: Sizes.p16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.textColor.withOpacity(.3),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Residence:',
                style: GoogleFonts.roboto(
                  color: AppColors.headlineColor,
                  fontSize: Sizes.p12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              gapH8,
              Text(
                'City:',
                style: GoogleFonts.roboto(
                  color: AppColors.headlineColor,
                  fontSize: Sizes.p12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              gapH8,
              Text(
                'Age:',
                style: GoogleFonts.roboto(
                  color: AppColors.headlineColor,
                  fontSize: Sizes.p12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'U.A.E',
                style: GoogleFonts.roboto(
                  color: AppColors.textColor,
                  fontSize: Sizes.p12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              gapH8,
              Text(
                'Dubai',
                style: GoogleFonts.roboto(
                  color: AppColors.textColor,
                  fontSize: Sizes.p12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              gapH8,
              Text(
                '$age',
                style: GoogleFonts.roboto(
                  color: AppColors.textColor,
                  fontSize: Sizes.p12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
