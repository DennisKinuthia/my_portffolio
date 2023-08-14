import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class DownloadCV extends StatefulWidget {
  const DownloadCV({super.key});

  @override
  State<DownloadCV> createState() => _DownloadCVState();
}

class _DownloadCVState extends State<DownloadCV> {
  Color _linkColor = AppColors.textColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        setState(() {
          _linkColor = AppColors.headlineColor;
        });
      },
      onExit: (event) {
        setState(() {
          _linkColor = AppColors.textColor;
        });
      },
      child: GestureDetector(
        onTap: () {
          // TODO: link to download my cv
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p20,
            vertical: Sizes.p12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'DOWNLOAD CV',
                style: GoogleFonts.roboto(
                  fontSize: Sizes.p12,
                  color: _linkColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              gapW8,
              Icon(
                Icons.download_rounded,
                size: Sizes.p20,
                color: _linkColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
