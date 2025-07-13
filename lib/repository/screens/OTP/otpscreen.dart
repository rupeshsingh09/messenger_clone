import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/appcolors.dart';
import 'package:messenger_clone/repository/screens/Profile/profilescreen.dart';
import 'package:messenger_clone/repository/screens/uihelper.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {

  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(
        fontSize: 20,
        color:
            Theme.of(context).brightness == Brightness.dark
                ? Colors.red
                : Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color:
          Theme.of(context).brightness == Brightness.dark
              ? AppColors.otpdarkmode
              : AppColors.otplightmode,

      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.otpdarkmode
                : AppColors.otplightmode,
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter Code",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            UiHelper.CustomText(
              text: "We have sent you an SMS the code ",
              fontsize: 18,
              context: context,
            ),
            SizedBox(height: 10),
            UiHelper.CustomText(
              text: "to +62 1309 - 1710 - 1920 ",
              fontsize: 18,
              context: context,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                autofocus: true,
                controller: otpController,
                defaultPinTheme:
                    defaultPinTheme,
                focusedPinTheme: focusedPinTheme, // same
                submittedPinTheme: submittedPinTheme, // same
              ),
            ),

          ],
        ),
      ),

      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          "Resend OTP",
          style: TextStyle(
              fontSize: 16,
              color:
              Theme.of(context).brightness == Brightness.dark
                  ? AppColors.otptextdark
                  : AppColors.otptextlight
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
