
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sustaina_life/screens/home_screen.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String verificationId;
  const VerifyOtpScreen({Key? key, required this.verificationId})
      : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());
  String errorMessage = "";

  Widget buildOtpBox(int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = (screenWidth * 0.1); // Adjust the percentage as needed

    return Container(
      width: containerWidth,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: TextField(
          controller: otpControllers[index],
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 1,
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
            counterText: "",
            border: InputBorder.none,
          ),
          onChanged: (value) {
            if (value.length == 1 && index < 5) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }

  void verifyOTP() async {
    String otp = otpControllers.map((controller) => controller.text).join();

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId, smsCode: otp);

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (userCredential.user != null) {
        Navigator.popUntil(context, (route) => route.isFirst);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } on FirebaseAuthException catch (ex) {
      setState(() {
        errorMessage = ex.message ?? "An error occurred!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Verify OTP"),
      //   backgroundColor: Colors.green,
      // ),
      body: SafeArea(
        
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.symmetric(vertical: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/phone.jpeg'),height: 200,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Text('Enter Your 6-Digit Verification Code',style: TextStyle(fontFamily: 'Times New Roman',fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                      6,
                      (index) => buildOtpBox(index),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      verifyOTP();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Verify",
                        style: TextStyle(fontSize: 18,color:Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
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
      //     ],
      //   ),
      // ),
     ) );
  }
}
