import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText(
      {super.key,
      required this.text,
      required this.fontweight,
      required this.color});
  final String text;
  final FontWeight fontweight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: 34,
        color: color,
        fontWeight: fontweight,
      ),
    );
  }
}
