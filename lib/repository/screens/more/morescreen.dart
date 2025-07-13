import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/repository/screens/uihelper.dart';

import '../../../domain/constants/appcolors.dart';

class MoreScreen extends StatelessWidget {
  var arrMore = [
    {
      "icon": Icons.person,
      "text": "Account",
    },
    {
      "icon": CupertinoIcons.chat_bubble_fill,
      "text": "Chats",
    },
    {
      "icon": Icons.notifications_active,
      "text": "Notification",
    },
    {
      "icon": Icons.privacy_tip,
      "text": "Privacy",
    },
    {
      "icon": Icons.help,
      "text": "Help",
    },
    {
      "icon": Icons.mail,
      "text": "Mail",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
        Theme
            .of(context)
            .brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          text: "More",
          fontsize: 15,
          context: context,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading:
            Theme
                .of(context)
                .brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "dark_profile.png")
                : UiHelper.CustomImage(imgurl: "light_profile.png"),
            title: UiHelper.CustomText(text: "Rupesh kumar singh",
                fontsize: 14,
                context: context,
                fontweight: FontWeight.bold),
            subtitle: UiHelper.CustomText(text: "7355515098",
                fontsize: 14,
                context: context,
                fontweight: FontWeight.bold),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(CupertinoIcons.forward)),
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(

                leading: Icon(arrMore[index]["icon"] as IconData, color: Theme.of(context).brightness== Brightness.dark?AppColors.icondarkmode:AppColors.iconlightmode),
                title: UiHelper.CustomText(text: arrMore[index]["text"].toString(), fontsize: 15, context: context),
                trailing: Icon(CupertinoIcons.forward),
              );
            },itemCount: arrMore.length),
          )
        ],
      ),
    );
  }
}
