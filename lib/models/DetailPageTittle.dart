import 'package:flutter/material.dart';

class DetailPageTittle extends StatelessWidget {
  final String heading;
  final String subhead;
  const DetailPageTittle(
      {super.key, required this.heading, required this.subhead});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        Text(
          heading.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.06),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: size.width * 0.02,
        ),
        Container(
          child: Text(
            subhead.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                fontSize: size.width * 0.04),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
