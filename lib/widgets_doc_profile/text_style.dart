import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.text,
      required this.fSize,
      required this.color,
      required this.fWeight});
  final String text;
  final double fSize;
  final Color color;
  final FontWeight fWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: fSize,
        color: color,
        fontWeight: fWeight,
      ),
    );
  }
}
