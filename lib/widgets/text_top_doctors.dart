import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextPart extends StatelessWidget {
  const TextPart(
      {super.key, required this.word, required this.size, required this.color});
  final String word;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      style: GoogleFonts.lato(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
