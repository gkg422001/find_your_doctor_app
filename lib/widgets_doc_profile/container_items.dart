import 'package:doctor_app/widgets_doc_profile/text_style.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items(
      {super.key,
      required this.item1,
      required this.item2,
      required this.item3});
  final Widget item1, item2, item3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Column(
        children: [
          item1,
          Spacer(),
          Row(
            children: [
              item2,
              SizedBox(
                width: 5,
              ),
              item3,
            ],
          ),
        ],
      ),
    );
  }
}
