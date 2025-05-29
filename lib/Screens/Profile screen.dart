import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Home%20screen.dart';
import 'package:whatsapp/Widgets/Uihelper.dart';

class ProfileScreen   extends StatefulWidget {


  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            uihelper.CustomText(
              text: "Profile info",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            uihelper.CustomText(
              text: "Please provide your name and an optional",
              height: 14,
              color: Color(0XFF5E5E5E),
            ),
            uihelper.CustomText(
              text: "profile photo",
              height: 14,
              color: Color(0XFF5E5E5E),
            ),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 90,
              backgroundColor: Color(0XFFD9D9D9),
              child: Image.asset(
                "assets/images/profile.png",
                height: 62,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(

                  width: 300,

                  child: TextField(
                    keyboardType: TextInputType.name,

                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82)),
                      ),
                    ),
                  ),
                ),
                Image.asset("assets/images/happy-face 1.png")
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 45,
        width: 300,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));



          },
          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(40))),
          child: Text(
            'Next',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }



  }




  










