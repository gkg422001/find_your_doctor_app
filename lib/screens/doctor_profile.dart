import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/widgets/doctor_list.dart';
import 'package:doctor_app/widgets_doc_profile/art_board_btn.dart';
import 'package:doctor_app/widgets_doc_profile/back_button.dart';
import 'package:doctor_app/widgets_doc_profile/container_items.dart';
import 'package:doctor_app/widgets_doc_profile/doc_picture.dart';
import 'package:doctor_app/widgets_doc_profile/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocProfile extends StatelessWidget {
  const DocProfile(
      {super.key,
      required this.image,
      required this.docname,
      required this.specialization,
      required this.rating,
      required this.gender});
  final String image, docname, specialization, rating, gender;

  @override
  Widget build(BuildContext context) {
    List<String> hospital = specialization.split(' ');
    List<String> name = docname.split(' ');
    String newRating = rating.replaceAll('(', '').replaceAll(')', '');
    int? numOfPatients = int.tryParse(newRating);
    if (numOfPatients != null) {
      numOfPatients = (numOfPatients ~/ 100) * 100;
    }
    String hospitalDetail = '';
    for (int i = 2; i < hospital.length; i++) {
      hospitalDetail += '${hospital[i]} ';
    }
    String firstName = '${name[0]} ${name[1]}';
    String pronoun = '';
    if (gender == 'Male') {
      pronoun = 'He';
    } else {
      pronoun = 'She';
    }
    String text =
        '$firstName is one of the best doctors in the $hospitalDetail. $pronoun has saved more than $numOfPatients patients in the past 3 years. $pronoun has also received many awards from domestic and abroad as the best doctors. $pronoun is available on a private or schedule.';

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              DocPic(image: image),
              BackBtn(),
              ArtBoardBtn(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                    text: docname,
                    fSize: 24,
                    color: Colors.black,
                    fWeight: FontWeight.w700),
                SizedBox(
                  height: 15,
                ),
                MyText(
                    text: specialization,
                    fSize: 14,
                    color: Colors.grey,
                    fWeight: FontWeight.w400),
                SizedBox(
                  height: 15,
                ),
                MyText(
                    text: text,
                    fSize: 15,
                    color: Colors.grey,
                    fWeight: FontWeight.w400),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 20, 10),
            child: Container(
              width: 380,
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Items(
                      item1: MyText(
                          text: 'Experience',
                          fSize: 16,
                          color: Colors.black,
                          fWeight: FontWeight.w400),
                      item2: MyText(
                          text: '3',
                          fSize: 24,
                          color: Color.fromARGB(255, 91, 128, 230),
                          fWeight: FontWeight.w400),
                      item3: MyText(
                          text: 'yr',
                          fSize: 14,
                          color: Colors.grey,
                          fWeight: FontWeight.w400)),
                  VerticalDivider(
                    width: 10,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                  ),
                  Items(
                      item1: MyText(
                          text: 'Patient',
                          fSize: 16,
                          color: Colors.black,
                          fWeight: FontWeight.w400),
                      item2: MyText(
                          text: newRating,
                          fSize: 24,
                          color: Color.fromARGB(255, 91, 128, 230),
                          fWeight: FontWeight.w400),
                      item3: MyText(
                          text: 'ps',
                          fSize: 14,
                          color: Colors.grey,
                          fWeight: FontWeight.w400)),
                  VerticalDivider(
                    width: 10,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                  ),
                  Items(
                      item1: MyText(
                          text: 'Rating',
                          fSize: 16,
                          color: Colors.black,
                          fWeight: FontWeight.w400),
                      item2: MyText(
                          text: '5.0',
                          fSize: 24,
                          color: Color.fromARGB(255, 91, 128, 230),
                          fWeight: FontWeight.w400),
                      item3: MyText(
                          text: '',
                          fSize: 14,
                          color: Colors.grey,
                          fWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Row(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 91, 128, 230),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    width: 35,
                    height: 35,
                    'images/Icons-Comment.png',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 295,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 19, 216, 121),
                      borderRadius: BorderRadius.circular(10)),
                  child: MyText(
                      text: 'Make an Appointment',
                      fSize: 14,
                      color: Colors.white,
                      fWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
