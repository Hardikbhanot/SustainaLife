import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sustaina_life/screens/login_screen.dart';

class AgeGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Image(image: AssetImage('images/age.jpeg'), fit: BoxFit.cover),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Select Your Age Group',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 59, 153, 62),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Times New Roman',
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        AgeGroupList(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AgeGroupList extends StatelessWidget {
  final List<String> ageGroups = [
    '0-15',
    '15-30',
    '30-45',
    '45-60',
    '60 and above',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ageGroups
          .map(
            (ageGroup) => GestureDetector(
              onTap: () {
                // Handle age group selection here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 200, // Adjust the width as needed
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    ageGroup,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
