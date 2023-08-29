import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Blog',
        style: GoogleFonts.roboto(color: Colors.white),
      ),
    );
  }
}
