import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Contact',
        style: GoogleFonts.roboto(color: Colors.white),
      ),
    );
  }
}
