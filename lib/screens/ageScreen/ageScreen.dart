import 'package:fitness_app/models/DetailPageButton.dart';
import 'package:fitness_app/models/DetailPageTittle.dart';
import 'package:flutter/material.dart';

class AgePage extends StatefulWidget {
  const AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          top: size.height * 0.07,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.height * 0.03,
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const DetailPageTittle(
              heading: 'How old are you ?',
              subhead: 'This helps us create your personalized plan',
            ),
            const Spacer(),
            DetailPageButton(
              text: 'Next',
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
