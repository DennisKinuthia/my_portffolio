import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'History',
        style: GoogleFonts.roboto(color: Colors.white),
      ),
    );
  }
}
