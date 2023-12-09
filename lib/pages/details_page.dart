import 'package:find_your_doctor_application/widgets/buttons.dart';
import 'package:find_your_doctor_application/widgets/doctor_details.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String doctorResidency, doctorSpec, doctorImageURL, doctorName;
  final int reviewRatingNumber;

  const DetailsPage(
      {Key? key,
      required this.doctorImageURL,
      required this.doctorName,
      required this.doctorSpec,
      required this.doctorResidency,
      required this.reviewRatingNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            Navigator.of(context).pop(); // Swipe right, navigate back
          }
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Image.network(
              doctorImageURL,
              width: screenWidth,
            ),
            Positioned(
                top: 56,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const ImageIcon(NetworkImage(
                      "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674250/findYourDoctorAppAssets/Icons-Back_1_y0ru3h.png")),
                )),
            const Positioned(
                top: 56,
                right: 30,
                child: ImageIcon(NetworkImage(
                    "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674249/findYourDoctorAppAssets/Icons-Artboard_31_1_kdzsqj.png")))
          ]),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '$doctorSpec •  $doctorResidency Hospital',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 170, 170, 170)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "$doctorName is one of the best doctors in the $doctorResidency Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.",
                  softWrap: true,
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 170, 170, 170)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: DoctorDetails(
                    reviewRatingNumber: reviewRatingNumber,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                ButtonsRow(),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
