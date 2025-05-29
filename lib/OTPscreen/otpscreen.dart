import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:whatsapp/Screens/Profile%20screen.dart';
=======
>>>>>>> origin/master
import 'package:whatsapp/Widgets/Uihelper.dart';

class Otpscreen extends StatelessWidget {
  final String phonenumber; // Add 'final' to fix the error

  Otpscreen({required this.phonenumber});
  TextEditingController otp1controller = TextEditingController();
  TextEditingController otp2controller = TextEditingController();
  TextEditingController otp3controller = TextEditingController();
  TextEditingController otp4controller = TextEditingController();
  TextEditingController otp5controller = TextEditingController();
  TextEditingController otp6controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            uihelper.CustomText(
              text: "Verifying your number",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            uihelper.CustomText(
              text: "You’ve tried to register +91${phonenumber}",
              height: 14,
              color: Color(0XFF5E5E5E),
            ),
            uihelper.CustomText(
              text: "recently. Wait before requesting an sms or a call.",
              height: 14,
              color: Color(0XFF5E5E5E),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  uihelper.CustomText(
                    text: "with your code.",
                    height: 14,
                    color: Color(0XFF5E5E5E),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle tap here, e.g., navigate back or to another screen
                      Navigator.pop(context); // or any function you want
                    },
                    child: uihelper.CustomText(
                      text: "Wrong number?",
                      height: 14,
                      color: Color(0XFF00A884),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                uihelper.CustomContainer(otp1controller),
                SizedBox(width: 10),
                uihelper.CustomContainer(otp2controller),
                SizedBox(width: 10),
                uihelper.CustomContainer(otp3controller),
                SizedBox(width: 10),
                uihelper.CustomContainer(otp4controller),
                SizedBox(width: 10),
                uihelper.CustomContainer(otp5controller),
                SizedBox(width: 10),
                uihelper.CustomContainer(otp6controller),
                SizedBox(width: 10),
              ],

            ),
            SizedBox(
              height: 20,
            ),
            uihelper.CustomText(text: "Didn’t receive code?", height: 16,color: Color(0XFF00A884)),
          ],
        ),
      ),

      floatingActionButton:  SizedBox(
        height: 45,
        width: 300,
        child: ElevatedButton(
          onPressed: () {
<<<<<<< HEAD
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen()),

            );
=======
>>>>>>> origin/master


          },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
          child: Text(
            'Continue',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
