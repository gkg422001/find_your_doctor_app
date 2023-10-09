import 'package:doctor_app/widgets/doctor_list.dart';
import 'package:doctor_app/widgets/grid_view.dart';
import 'package:doctor_app/widgets/headline_text.dart';
import 'package:doctor_app/widgets/icon_container.dart';
import 'package:doctor_app/widgets/text_top_doctors.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        children: <Widget>[
          Row(
            children: [
              IconCont(
                  image:
                      'images/Icons-Menu-Burger.png'), //Widget contained in icon_container.dart
              Spacer(flex: 2),
              IconCont(image: 'images/Mask Group.png'),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              HeadlineText(
                  //Widget contained in headline_text.dart
                  text: 'Find ',
                  color: Colors.black,
                  fontweight: FontWeight.w400),
              HeadlineText(
                  text: 'your doctor',
                  color: Colors.grey,
                  fontweight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Search(), //Widget container in search_bar.dart
          SizedBox(
            height: 25,
          ),
          HorizontalList(), //Widgets contained in grid_view.dart
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              TextPart(word: 'Top Doctors', size: 18, color: Colors.black),
              Spacer(),
              TextPart(word: 'View all', size: 11, color: Colors.lightBlue),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          DoctorList(
            image: 'images/Group 22.png',
            docname: 'dr. Gilan Segara Bening',
            specialization: 'Heart • Persahabatan Hospital',
            rating: '(1221)',
            contcolor: Color.fromARGB(255, 162, 247, 209),
            status: 'Open',
            textcolor: Color.fromARGB(255, 13, 207, 20),
            swidth: 50,
            gender: 'Male',
          ),
          SizedBox(
            height: 15,
          ),
          DoctorList(
            image: 'images/Group 23.png',
            docname: 'dr. Shabil Chan',
            specialization: 'Dental • Columbia Asia Hospital',
            rating: '(964)',
            contcolor: Color.fromARGB(255, 162, 247, 209),
            status: 'Open',
            textcolor: Color.fromARGB(255, 13, 207, 20),
            swidth: 55,
            gender: 'Female',
          ),
          SizedBox(
            height: 15,
          ),
          DoctorList(
            image: 'images/Group 24.png',
            docname: 'dr. Mustakim',
            specialization: 'Eye • Salemba Carolus Hospital',
            rating: '(762)',
            contcolor: Color.fromARGB(255, 245, 195, 180),
            status: 'Close',
            textcolor: Color.fromARGB(255, 234, 81, 34),
            swidth: 55,
            gender: 'Male',
          ),
          SizedBox(
            //Color.fromARGB(255, 162, 247, 209)           const Color.fromARGB(255, 13, 207, 20)
            height: 15,
          ),
          DoctorList(
            image: 'images/Group 25.png',
            docname: 'dr. Suprihatini',
            specialization: 'Heart • Salemba Carolus Hospital',
            rating: '(762)',
            contcolor: Color.fromARGB(255, 162, 247, 209),
            status: 'Open',
            textcolor: Color.fromARGB(255, 13, 207, 20),
            swidth: 55,
            gender: 'Female',
          ),
        ],
      ),
    );
  }
}
