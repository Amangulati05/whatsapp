import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Camerascreen.dart';
import 'package:whatsapp/Screens/onboardingscreens/Chats.dart';


import 'package:whatsapp/Widgets/Uihelper.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),

              ),
              Tab(text: "CHATS",),
              Tab(text: "STATUS"),
              Tab(text: "CALLS",)
            ] ,indicatorColor: Colors.white,
            ),
      toolbarHeight: 100,
            title: uihelper.CustomText(text: "WhatsApp", height: 20,color: Colors.white),
            actions: [
              IconButton(
                iconSize: 50,
                color: Colors.white,
                onPressed: () {},
                icon:
                   Image.asset("assets/images/Search.png")
                  // Adjust size if needed
                ),

            ],

          ),
        body: TabBarView(children: [
          Camerascreen(),

          Chats(),

        ]),




        )


    );

  }
}
