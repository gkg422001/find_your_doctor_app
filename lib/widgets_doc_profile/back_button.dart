import 'package:doctor_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 56,
      left: 30,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (contex) => const HomeScreen()));
        },
        child: Image.asset(
          'images/Icons-Back 1.png',
        ),
      ),
    );
  }
}
