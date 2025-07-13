import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/appcolors.dart';
import 'package:messenger_clone/repository/screens/bottomnav/bottomnavigationscreen.dart';
import 'package:messenger_clone/repository/screens/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.scaffolddark
                : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          text: "Your Profile",
          fontsize: 20,
          context: context,
          fontweight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "dark_profile.png")
                : UiHelper.CustomImage(imgurl: "light_profile.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: firstnameController,
              text: "First Name (Required)",
              textinputtype: TextInputType.name,
              context: context, icondata: Icons.person
            ),
            UiHelper.CustomTextField(
              controller: lastnameController,
              text: "Last Name (optional)",
              textinputtype: TextInputType.name,
              context: context, icondata: CupertinoIcons.person_2
            ),
          ],
        ),
      ),

      floatingActionButton: UiHelper.CustomButtom(buttonname: "Save", callback: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
