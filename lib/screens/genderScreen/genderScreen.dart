import 'package:fitness_app/constants/color.dart';
import 'package:fitness_app/models/DetailPageButton.dart';
import 'package:fitness_app/models/DetailPageTittle.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  bool isMale = false;
  bool isFemale = false;

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
              heading: 'Tell us about yourself!',
              subhead:
                  'To give you a better experience we need \nto know your gender',
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GenderIcon(
              icon: Icons.male,
              tittle: 'Male',
              onTap: () {
                setState(() {
                  isMale = true;
                  isFemale = false;
                });
              },
              isSelected: isMale,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            GenderIcon(
              icon: Icons.female,
              tittle: 'Female',
              onTap: () {
                setState(() {
                  isMale = false;
                  isFemale = true;
                });
              },
              isSelected: isFemale,
            ),
            const Spacer(),
            DetailPageButton(
              text: 'Next',
              showBackButton: false,
              onTap: () {
                //Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String tittle;
  final VoidCallback onTap;
  final bool isSelected;

  const GenderIcon(
      {super.key,
      required this.icon,
      required this.tittle,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size.width * 0.05),
        decoration: BoxDecoration(
            color: isSelected ? PrimaryColor : Colors.transparent,
            //borderRadius: BorderRadius.circular(20),
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: size.width * 0.1,
                color: isSelected ? Colors.black : Colors.white,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                tittle,
                style: TextStyle(
                    color: isSelected ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
