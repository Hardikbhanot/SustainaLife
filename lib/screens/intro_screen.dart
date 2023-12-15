import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sustaina_life/screens/age_group_screen.dart';

class IntroScreen extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Welcome to SustainaLife",
        body: "Your journey towards a sustainable future starts here.",
        image: Image(image: AssetImage('images/cp.jpeg'),),
        decoration: getPageDecoration(),
      ),
      PageViewModel(
        title: "Learn and Grow",
        body: "Expand your knowledge about sustainability and eco-living.",
        image:  Image(image: AssetImage('images/lg.jpeg'),),
        
        decoration: getPageDecoration(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: getPages(),
        onDone: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => AgeGroupScreen()),
          );
        },
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green),
        ),
        next: const Icon(
          Icons.navigate_next,
          size: 30,
          color: Colors.green, // Set the desired color here
        ),
        done: const Text(
          "Done",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.green),
        ),
        dotsDecorator: getDotsDecorator(),
      ),
    );
  }
}

PageDecoration getPageDecoration() {
  return const PageDecoration(
    imagePadding: EdgeInsets.only(top: 120),
    pageColor: Colors.white,
    bodyPadding: EdgeInsets.only(top: 8, left: 20, right: 20),
    titlePadding: EdgeInsets.only(top: 50, bottom: 10),
    titleTextStyle: const TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.w900,
      fontSize: 35,
      
      fontFamily: 'Times New Roman'
    ),
    bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 23),
  );
}

DotsDecorator getDotsDecorator() {
  return const DotsDecorator(
    spacing: EdgeInsets.symmetric(horizontal: 2),
    activeColor: Colors.green,
    color: Colors.grey,
    activeSize: Size(12, 5),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
    ),
  );
}
