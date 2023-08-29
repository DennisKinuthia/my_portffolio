import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Portfolio',
        style: GoogleFonts.roboto(color: Colors.white),
      ),
    );
  }
}
