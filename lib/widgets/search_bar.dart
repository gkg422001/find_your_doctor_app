import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 100,
      height: 56,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 246, 243, 243),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Text(
            'Search doctor, medicines etc',
            style: GoogleFonts.lato(
              fontSize: 14,
              color: const Color.fromARGB(255, 207, 207, 207),
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Image.asset('images/Search.png')
        ],
      ),
    );
  }
}
