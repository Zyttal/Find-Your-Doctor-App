import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  DoctorDetails({Key? key, required this.reviewRatingNumber}) : super(key: key);
  final int reviewRatingNumber;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            children: [
              Text(
                "Experience",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "3",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 43, 146, 228),
                        fontWeight: FontWeight.w400),
                  ),
                  Baseline(
                    baseline: 20,
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      " yr",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 170, 170, 170)),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            width: 14,
          ),
          const VerticalDivider(),
          const SizedBox(
            width: 14,
          ),
          Column(
            children: [
              const Text(
                "Patient",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "$reviewRatingNumber",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 43, 146, 228),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Baseline(
                      baseline: 20,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        "ps",
                        style: TextStyle(
                            color: Color.fromARGB(255, 170, 170, 170)),
                      ))
                ],
              )
            ],
          ),
          const SizedBox(
            width: 14,
          ),
          const VerticalDivider(),
          const SizedBox(
            width: 14,
          ),
          const Column(
            children: [
              Text(
                "Rating",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "5.0",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 43, 146, 228),
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
