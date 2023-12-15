
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:sustaina_life/screens/signup_screen.dart';
import 'package:sustaina_life/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sustaina_life/screens/phone_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = ""; // Added to store error message.

  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(email == "" || password == "") {
      log("Please fill all the fields!");
      setState(() {
        errorMessage = "Please fill all the fields!";
      });
    } else {

      try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
        if(userCredential.user != null) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(context, CupertinoPageRoute(
            builder: (context) => HomeScreen()
          ));
          
        }
      } on FirebaseAuthException catch(ex) {
        log(ex.code.toString());
        setState(() {
          errorMessage = ex.message ?? "An error occurred!";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text("Login",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w800,fontSize: 45,fontFamily: 'Times New Roman',),),
                    Icon(Icons.person,color: Colors.green,size: 200,),
                   
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email Address"
                      ),
                    ),

                    SizedBox(height: 10,),

                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: "Password"
                      ),
                    ),

                    SizedBox(height: 30,),

                    CupertinoButton(
                      onPressed: () {
                        login();
                      },
                      color: Colors.green,
                      child: Text("Log In",style: TextStyle(fontFamily: 'Times New Roman'),),
                    ),

                    SizedBox(height: 10,),

                    Text(
                      errorMessage,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10,),

                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(context, CupertinoPageRoute(
                          builder: (context) => SignUpScreen()
                        ));
                      },
                      child: Text("Create an Account",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),),
                    ),

                    SizedBox(height: 10,),

                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(context, CupertinoPageRoute(
                          builder: (context) => SignInWithPhone()
                        ));
                      },
                      child: Text("Sign in With Phone",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


