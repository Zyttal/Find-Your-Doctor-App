import 'package:find_your_doctor_application/widgets/gridItem.dart';
import 'package:find_your_doctor_application/widgets/homeSearch.dart';
import 'package:find_your_doctor_application/widgets/verticalListItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: DefaultTextStyle(
          style: GoogleFonts.lato(
              textStyle: TextStyle(fontWeight: FontWeight.w400)),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Column(
                  children: [
                    Row(children: [
                      Column(
                        children: [
                          Image.network(
                              'https://res.cloudinary.com/dbwwffypj/image/upload/v1696674250/findYourDoctorAppAssets/Icons-Menu-Burger_zv4qa6.png')
                        ],
                      ),
                      SizedBox(
                        width: 247,
                      ),
                      Column(
                        children: [
                          Image.network(
                              'https://res.cloudinary.com/dbwwffypj/image/upload/v1696674266/findYourDoctorAppAssets/Mask_Group_ohta5t.png')
                        ],
                      )
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Find",
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              " your doctor",
                              style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    HomeSearch(),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        height: 170,
                        width: 333,
                        child: GridView.count(
                          primary: false,
                          crossAxisCount: 4,
                          children: <Widget>[
                            GridItem(
                                content: "Consultation",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674249/findYourDoctorAppAssets/007-stethoscope_hjholu.png",
                                a: 255,
                                b: 253,
                                r: 68,
                                g: 133,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696679800/findYourDoctorAppAssets/Ellipse_11_bsx1pq.png"),
                            GridItem(
                                content: "Dental",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674250/findYourDoctorAppAssets/004-teeth_af2nvm.png",
                                a: 255,
                                b: 255,
                                r: 183,
                                g: 156,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696685009/findYourDoctorAppAssets/Ellipse_11-3_bc01ws.png"),
                            GridItem(
                                content: "Heart",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674249/findYourDoctorAppAssets/017-heart_f7of9s.png",
                                a: 255,
                                b: 84,
                                r: 255,
                                g: 120,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696685012/findYourDoctorAppAssets/Ellipse_11-1_pgakhz.png"),
                            GridItem(
                                content: "Hospitals",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674249/findYourDoctorAppAssets/017-heart_f7of9s.png",
                                a: 255,
                                b: 37,
                                r: 254,
                                g: 167,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696685010/findYourDoctorAppAssets/Ellipse_11-5_qkxjnb.png"),
                            GridItem(
                                content: "Medicines",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674249/findYourDoctorAppAssets/012-medicine_hbrzid.png",
                                a: 255,
                                b: 106,
                                r: 0,
                                g: 204,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696685011/findYourDoctorAppAssets/Ellipse_11-6_bmdn7x.png"),
                            GridItem(
                                content: "Physician",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674249/findYourDoctorAppAssets/013-care-2_gwvjpo.png",
                                a: 255,
                                b: 228,
                                r: 0,
                                g: 201,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696685010/findYourDoctorAppAssets/Ellipse_11-4_ytqogv.png"),
                            GridItem(
                                content: "Skin",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674249/findYourDoctorAppAssets/028-bandage_smreci.png",
                                a: 255,
                                b: 179,
                                r: 253,
                                g: 68,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696685009/findYourDoctorAppAssets/Ellipse_11-2_j1ty1z.png"),
                            GridItem(
                                content: "Surgeon",
                                imageURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674250/findYourDoctorAppAssets/005-syringe_mdilfy.png",
                                a: 255,
                                b: 68,
                                r: 253,
                                g: 68,
                                ellipseURL:
                                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696685012/findYourDoctorAppAssets/Ellipse_11_doqysd.png"),
                          ],
                        )),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "Top Doctors",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 68, 133, 253)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),

                    Column(
                      children: [
                        VerticalListItem(
                          doctorImageURL:
                              "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674313/findYourDoctorAppAssets/Group_22_uawysu.png",
                          doctorName: "Dr. Gilang Segara Bening",
                          doctorSpec: "Heart",
                          doctorResidency: "Persahabatan",
                          reviewRatingNumber: 1221,
                          availability: true,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        VerticalListItem(
                          doctorImageURL:
                              "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674312/findYourDoctorAppAssets/Group_23_kbr9ss.png",
                          doctorName: "Dr. Shabil Chan",
                          doctorSpec: "Dental",
                          doctorResidency: "Columbia Asia",
                          reviewRatingNumber: 964,
                          availability: true,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        VerticalListItem(
                          doctorImageURL:
                              "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674312/findYourDoctorAppAssets/Group_23_kbr9ss.png",
                          doctorName: "Dr. Mustakim",
                          doctorSpec: "Eye",
                          doctorResidency: "Salemba Carolus",
                          reviewRatingNumber: 762,
                          availability: false,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        VerticalListItem(
                          doctorImageURL:
                              "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674313/findYourDoctorAppAssets/Group_25_ggb8kd.png",
                          doctorName: "Dr. Suprihatini",
                          doctorSpec: "Heart",
                          doctorResidency: "Salemba Carolus",
                          reviewRatingNumber: 762,
                          availability: true,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    )

                    // Vertical
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
