import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/appcolors.dart';

class UiHelper {

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }


  static CustomText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",

        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ?
                AppColors.textdarkmode
                : AppColors.textlightmode),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );


  }

  static CustomButtom({
    required String buttonname,
    required VoidCallback callback,
    Color? buttoncolor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonname,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context, required IconData icondata
  }) {
    return Container(

      height: 40,
      width: 327,
      decoration: BoxDecoration(
        color:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.containerdarkmode
                : AppColors.containerlightmode,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        keyboardType: textinputtype,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icondata, color: AppColors.iconlight),
          hintStyle: TextStyle(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? AppColors.hintdarkmode
                    : AppColors.hintlightmode,
            fontSize: 14,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
