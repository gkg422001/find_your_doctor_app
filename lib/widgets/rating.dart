import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/Icons-Star 1.png',
      color: Colors.yellow,
      width: 20,
      height: 20,
    );
  }
}
