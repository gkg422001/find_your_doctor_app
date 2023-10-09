import 'package:flutter/material.dart';

class DocPic extends StatelessWidget {
  const DocPic({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      child: Image.asset(
        image,
        width: screenWidth,
        height: 290,
        fit: BoxFit.cover,
      ),
    );
  }
}
