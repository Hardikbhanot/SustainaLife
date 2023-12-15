import 'package:flutter/material.dart';
import 'package:sustaina_life/screens/intro_screen.dart';
import 'package:sustaina_life/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(SustainaLifeApp());
}

class SustainaLifeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SustainaLife',
      theme: ThemeData(
        textTheme: TextTheme(
          labelLarge: TextStyle(
            fontFamily: 'Times New Roman',
            color: Colors.black, // Text color set to black
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Times New Roman',
            color: Colors.black, // Text color set to black
          ),
        ),
        primarySwatch: Colors.green,
        // canvasColor: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
          centerTitle: true,
        ),
        primaryColorLight: Colors.green,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateColor.resolveWith(
            (Set<MaterialState> states) {
              return Colors.green;
            },
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          // focusColor: ColorSwatch()
        ),
        scaffoldBackgroundColor: Colors.white, // Background color set to white
      ),
      home: IntroScreen(),
    );
  }
}
