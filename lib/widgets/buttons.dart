import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  ButtonsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 68, 133, 253),
              borderRadius: BorderRadius.circular(8)),
          child: Transform.scale(
            scale: 1.5,
            child: const ImageIcon(
              NetworkImage(
                "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674250/findYourDoctorAppAssets/Icons-Comment_dciynr.png",
              ),
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 204, 106),
              borderRadius: BorderRadius.circular(8)),
          width: 255,
          height: 56,
          child: const Center(
              child: Text(
            "Make An Appointment",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          )),
        )
      ],
    );
  }
}
