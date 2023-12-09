import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import '../pages/details_page.dart';

// ignore: must_be_immutable
class VerticalListItem extends StatelessWidget {
  VerticalListItem({
    Key? key,
    required this.doctorImageURL,
    required this.doctorName,
    required this.doctorSpec,
    required this.doctorResidency,
    required this.reviewRatingNumber,
    required this.availability,
  }) : super(key: key);

  final String doctorImageURL, doctorName, doctorSpec, doctorResidency;
  final int reviewRatingNumber;
  final bool availability;
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(
                      doctorImageURL: doctorImageURL,
                      doctorName: doctorName,
                      doctorSpec: doctorSpec,
                      doctorResidency: doctorResidency,
                      reviewRatingNumber: reviewRatingNumber,
                    )));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 88,
            height: 80,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(doctorImageURL)),
          ),
          SizedBox(
            width: 223,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  '$doctorSpec •  $doctorResidency Hospital',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 170, 170, 170)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SmoothStarRating(
                            rating: 5,
                            size: 11,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: const Color.fromARGB(255, 255, 232, 72),
                            borderColor:
                                const Color.fromARGB(255, 255, 232, 72),
                            starCount: 5,
                            allowHalfRating: false,
                            spacing: 2.0,
                            onRatingChanged: (value) {
                              // setState(() { rating = value; });
                              // You don't need to use setState here since it's a StatelessWidget.
                            },
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '($reviewRatingNumber)',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 196, 196, 196),
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    if (!availability)
                      SizedBox(
                        width: 70,
                        height: 24,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 247, 228, 217),
                            ),
                            elevation: MaterialStateProperty.all<double>(0),
                          ),
                          child: const Text(
                            'Closed',
                            style: TextStyle(
                                color: Color.fromARGB(255, 204, 73, 0),
                                fontSize: 12),
                          ),
                        ),
                      )
                    else
                      SizedBox(
                        width: 70,
                        height: 24,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 204, 245, 225),
                            ),
                            elevation: MaterialStateProperty.all<double>(0),
                          ),
                          child: const Text(
                            'Open',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 204, 106),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
