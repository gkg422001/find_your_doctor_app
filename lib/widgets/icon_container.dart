import 'package:flutter/material.dart';

class IconCont extends StatelessWidget {
  const IconCont({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        image,
      ),
    );
  }
}
