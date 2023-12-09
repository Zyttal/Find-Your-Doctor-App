import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem(
      {Key? key,
      required this.content,
      required this.imageURL,
      required this.a,
      required this.b,
      required this.r,
      required this.g,
      required this.ellipseURL})
      : super(key: key);
  final String content, imageURL, ellipseURL;
  final int a, r, b, g;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Color.fromARGB(a, r, g, b),
                  borderRadius: BorderRadius.circular(8)),
              width: 56,
              height: 56,
              // child: Image.network(imageURL),
              child: Stack(children: [
                Positioned(child: Image.network(ellipseURL)),
                Align(
                  alignment: Alignment.center,
                  child: ImageIcon(
                    NetworkImage(imageURL),
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              content,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}
