import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 327,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(
            255,
            246,
            246,
            246,
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Search doctor, medicines etc",
                style: TextStyle(
                    color: Color.fromARGB(
                  255,
                  202,
                  204,
                  207,
                )),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.network(
                  "https://res.cloudinary.com/dbwwffypj/image/upload/v1696674250/findYourDoctorAppAssets/Search_hxqwmm.png")
            ],
          )
        ]),
      ),
    );
  }
}
