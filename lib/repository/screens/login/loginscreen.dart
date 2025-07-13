import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/appcolors.dart';
import 'package:messenger_clone/repository/screens/OTP/otpscreen.dart';
import 'package:messenger_clone/repository/screens/uihelper.dart';

class LoginScreen extends StatelessWidget{
  TextEditingController phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor:
       Theme.of(context).brightness == Brightness.dark
           ? AppColors.scaffolddark
           : AppColors.scaffoldlight,
       leading: IconButton(onPressed: () {
         Navigator.pop(context);
       },
           icon: Icon(CupertinoIcons.back)),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         UiHelper.CustomText(text: "Enter your Phone ", fontsize: 24, context: context, fontfamily: "bold", fontweight: FontWeight.bold),
         UiHelper.CustomText(text: "Please conform your country code and enter ", fontsize: 14, context: context),
         UiHelper.CustomText(text: "Your phone number", fontsize: 14, context: context),
           SizedBox(height: 20),
           UiHelper.CustomTextField(controller: phoneController, text: "Phone Controller", textinputtype: TextInputType.number, context: context, icondata: Icons.phone)


       ],),
     ),
     floatingActionButton: UiHelper.CustomButtom(buttonname: "Continue", callback: () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=> OTPScreen()));
     } ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   );
  }

}