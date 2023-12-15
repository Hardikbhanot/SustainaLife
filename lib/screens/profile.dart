import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.elliptical(120, 30)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 130, left: screenWidth * 0.05, right: screenWidth * 0.05),
                height: 250,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.green, width: 1.5),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.green,
                              width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/profile.png'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Hardik Bhanot',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '100',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Earth Points',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Challenges',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '20',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Trees Planted',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 100),
                margin:
                    EdgeInsets.only(left: screenWidth * 0.32, top: 60, bottom: 30),
                child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 40),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "My Footprint",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Text(
              "Your carbon footprint in tons if you lived like today every day of the year.",
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
          ),
          
            
          Container(
            decoration: BoxDecoration( border: Border.all(
                  color: Colors.green, width: 1.5, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
            BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
      
         ] ),
            margin: EdgeInsets.only(top: 20, bottom: 40),
            child: Image(
              image: AssetImage('images/carbon_footprint.png'),
              // width: screenWidth * 0.9,
              height: 250,
            ),
            )
              
        ],
      ),
    );
  }
}
