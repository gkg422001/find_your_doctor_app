import 'package:doctor_app/widgets/list_items.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      height: 180,
      child: GridView.count(
        mainAxisSpacing: 7.0,
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: const [
          ListItem(
              color: Color.fromARGB(255, 91, 128, 230),
              image: 'images/007-stethoscope.png',
              text: 'Consultation',
              color1: Color.fromARGB(255, 133, 159, 229)),
          ListItem(
            color: Color.fromARGB(255, 14, 206, 113),
            image: 'images/012-medicine.png',
            text: 'Medicines',
            color1: Color.fromARGB(255, 91, 203, 149),
          ),
          ListItem(
            color: Color.fromARGB(255, 200, 112, 251),
            image: 'images/004-teeth.png',
            text: 'Dental',
            color1: Color.fromARGB(255, 207, 156, 237),
          ),
          ListItem(
            color: Color.fromARGB(255, 45, 204, 244),
            image: 'images/013-care-2.png',
            text: 'Physician',
            color1: Color.fromARGB(255, 69, 212, 248),
          ),
          ListItem(
            color: Color.fromARGB(227, 236, 131, 74),
            image: 'images/017-heart.png',
            text: 'Heart',
            color1: Color.fromARGB(225, 242, 176, 141),
          ),
          ListItem(
            color: Color.fromARGB(255, 237, 66, 197),
            image: 'images/028-bandage.png',
            text: 'Skin',
            color1: Color.fromARGB(255, 240, 106, 209),
          ),
          ListItem(
            color: Color.fromARGB(255, 250, 175, 55),
            image: 'images/024-clinic.png',
            text: 'Hospitals',
            color1: Color.fromARGB(255, 250, 187, 85),
          ),
          ListItem(
            color: Color.fromARGB(255, 245, 94, 94),
            image: 'images/005-syringe.png',
            text: 'Surgeon',
            color1: Color.fromARGB(255, 247, 138, 138),
          ),
          ListItem(
            color: Color.fromARGB(255, 91, 128, 230),
            image: 'images/007-stethoscope.png',
            text: 'Consultation',
            color1: Color.fromARGB(255, 133, 159, 229),
          ),
          ListItem(
            color: Color.fromARGB(255, 14, 206, 113),
            image: 'images/012-medicine.png',
            text: 'Medicines',
            color1: Color.fromARGB(255, 91, 203, 149),
          ),
          ListItem(
            color: Color.fromARGB(255, 200, 112, 251),
            image: 'images/004-teeth.png',
            text: 'Dental',
            color1: Color.fromARGB(255, 207, 156, 237),
          ),
          ListItem(
            color: Color.fromARGB(255, 45, 204, 244),
            image: 'images/013-care-2.png',
            text: 'Physician',
            color1: Color.fromARGB(255, 69, 212, 248),
          ),
        ],
      ),
    );
  }
}
