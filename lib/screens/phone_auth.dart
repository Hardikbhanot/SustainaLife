import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sustaina_life/screens/verify_otp.dart';

class SignInWithPhone extends StatefulWidget {
  const SignInWithPhone({Key? key}) : super(key: key);

  @override
  State<SignInWithPhone> createState() => _SignInWithPhoneState();
}

class _SignInWithPhoneState extends State<SignInWithPhone> {
  TextEditingController phoneController = TextEditingController();
  String errorMessage = "";

  void sendOTP() async {
    String phone = "+91" + phoneController.text.trim();

    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: phone,
          codeSent: (verificationId, resendToken) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VerifyOtpScreen(
                          verificationId: verificationId,
                        )));
          },
          verificationCompleted: (credential) {},
          verificationFailed: (ex) {
            setState(() {
              errorMessage = ex.message ?? "An error occurred!";
            });
          },
          codeAutoRetrievalTimeout: (verificationId) {},
          timeout: Duration(seconds: 30));
    } catch (ex) {
      setState(() {
        errorMessage = ex.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   centerTitle: true,
      //   title: Text("Sign In with Phone"),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(image: AssetImage('images/phone.jpeg'),height: 200,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Text('Enter Your Phone Number',style: TextStyle(fontFamily: 'Times New Roman',fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: phoneController,
              style: TextStyle(fontSize: 18,color: Colors.black),
              decoration: InputDecoration(
                focusColor: Colors.white54,
                labelText: "Phone Number",
                prefixText: "+91 ",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                sendOTP();
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
