import 'package:doctor_app/screens/doctor_profile.dart';
import 'package:doctor_app/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorList extends StatelessWidget {
  const DoctorList(
      {super.key,
      required this.image,
      required this.docname,
      required this.specialization,
      required this.rating,
      required this.status,
      required this.contcolor,
      required this.textcolor,
      required this.swidth,
      required this.gender});
  final String image, docname, specialization, rating, status, gender;
  final Color contcolor, textcolor;
  final double swidth;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => DocProfile(
                      image: image,
                      docname: docname,
                      specialization: specialization,
                      rating: rating,
                      gender: gender,
                    )));
      },
      child: Container(
        width: 370,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                  child: Text(
                    docname,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 3, 0, 0),
                  child: Text(
                    specialization,
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                  child: Row(
                    children: [
                      Rating(),
                      Rating(),
                      Rating(),
                      Rating(),
                      Rating(),
                      Text(
                        rating,
                        style: GoogleFonts.lato(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: swidth,
                      ),
                      Container(
                        width: 56,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: contcolor,
                        ),
                        child: Center(
                          child: Text(
                            status,
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              color: textcolor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
