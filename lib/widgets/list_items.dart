import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.color,
      required this.image,
      required this.text,
      required this.color1});
  final Color color, color1;
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.none,
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 16,
                left: 16,
                child: Image.asset(
                  image,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 36,
                right: 38,
                child: Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      color: color1, borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          text,
          style: GoogleFonts.lato(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
