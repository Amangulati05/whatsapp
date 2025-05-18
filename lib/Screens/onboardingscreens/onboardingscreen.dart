import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Loginscreen.dart';
import 'package:whatsapp/Widgets/Uihelper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(height: 20),
            uihelper.CustomText(
              text: 'Welcome to WhatsApp',
              height: 18,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uihelper.CustomText(text: 'Read out', height: 14),
                uihelper.CustomText(
                  text: ' Privacy Policy.',
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
                uihelper.CustomText(
                  text: 'Tap “Agree and continue”',
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uihelper.CustomText(text: 'to accept the', height: 14),
                uihelper.CustomText(
                  text: ' Teams of Service.',
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
           


          ],
        ),
      ),
          floatingActionButton: uihelper.CustomButton(Callback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen()));
          }, buttonName: "Agree and Continue"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
