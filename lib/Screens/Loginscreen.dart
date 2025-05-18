import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/Uihelper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phonecontroller = TextEditingController();
  String selectedcountry = "India";

  List<String> counteries = ["India", "America", "Africa", "Germany", "Italy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: uihelper.CustomText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          uihelper.CustomText(
            text: "WhatsApp will need to verify your phone number.",
            height: 16,
          ),
          uihelper.CustomText(text: "Carrier charges may apply", height: 16),
          SizedBox(height: 10),
          uihelper.CustomText(
            text: "What’s my number?",
            height: 16,
            color: Color(0XFF00A884),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items:
                  counteries.map((String country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  selectedcountry = newvalue!;
                });
              },
              value: selectedcountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+91",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10),




                  SizedBox(

                  width: 850,

                  child: TextField(
                    keyboardType: TextInputType.number,

                    controller: phonecontroller,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),

            ],
          ),
        ],
      ),
      floatingActionButton: uihelper.CustomButton(Callback: (){}, buttonName: "Next"),


        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }
}
