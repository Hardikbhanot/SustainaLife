// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sustaina_life/screens/profile.dart';
import 'package:sustaina_life/screens/learn.dart';
import 'package:sustaina_life/screens/reduce.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: _currentIndex == 0
          ? AppBar(
              backgroundColor: Colors.green,
              title: Text('Community',style: TextStyle(fontWeight: FontWeight.bold),),

            )
              : _currentIndex == 2
                  ? AppBar(
                      backgroundColor: Colors.green,
                      title: Text('Learn',style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  : null,
      body: SingleChildScrollView(
        child: Center(
          child: _currentIndex == 0
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Footprint Screen Content'),
                  ],
                )
              : _currentIndex == 1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Reduce()]
                    )
                  : _currentIndex == 2
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Learn()
                          ],
                        )
                      : Column(
                          children: [
                            Profile(),
                            // The rest of your Profile content
                          ],
                        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black54,
        useLegacyColorScheme: true,
        selectedItemColor: Colors.green,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recycling),
            label: 'Reduce',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
