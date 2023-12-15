import 'package:flutter/material.dart';

class Reduce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 70, bottom: 20),
          child: Text(
            "Reduce",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
          ),
        ),
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: screenWidth * 0.4,
                height: 60,
                margin: EdgeInsets.only(right: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade700,
                      Colors.green.shade500,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Challenges",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.4,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Actions",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
