import 'package:flutter/material.dart';

class ArtBoardBtn extends StatelessWidget {
  const ArtBoardBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 56,
      left: 351,
      child: Image.asset(
        'images/Icons-Artboard 31 1.png',
      ),
    );
  }
}
