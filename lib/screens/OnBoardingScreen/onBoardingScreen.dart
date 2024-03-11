// ignore: file_names
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              _buildPageIndecator(
                  text: 'MEET YOUR COACH, \nSTART YOUR JOURNEY',
                  imageAsset: 'assets/onboardingImages/img_background_2.png'),
              _buildPageIndecator(
                  text: 'CREATE A WORKOUT PLAN \nTO STAY FIT',
                  imageAsset: 'assets/onboardingImages/img_background_1.png'),
              _buildPageIndecator(
                  text: 'ACTION IS THE \nKEY TO ALL SUCCESS',
                  imageAsset: 'assets/onboardingImages/img_background_3.png'),
            ],
          ),
          isLastPage
              ? const SizedBox.shrink()
              : Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: TextButton(
                    onPressed: () {
                      controller.animateToPage(2,
                          duration: const Duration(microseconds: 300),
                          curve: Curves.ease);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
          isLastPage
              ? Positioned(
                  left: MediaQuery.of(context).size.width * 0.25,
                  right: MediaQuery.of(context).size.width * 0.25,
                  bottom: MediaQuery.of(context).size.height * 0.06,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(208, 253, 62, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink(),

          //sliding Indicator
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.42,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    dotColor: Colors.grey,
                    activeDotColor: Color.fromRGBO(208, 253, 62, 1)),
              ))
        ],
      ),
    );
  }

  // ignore: unused_element
  //Image Rendering
  Widget _buildPageIndecator(
      {required String text, required String imageAsset}) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          imageAsset,
          height: size.height * 0.6,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.4,
              width: size.width,
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ))
      ],
    );
  }
}
