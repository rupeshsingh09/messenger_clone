import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/appcolors.dart';
import 'package:messenger_clone/repository/screens/chats/chatsscreen.dart';
import 'package:messenger_clone/repository/screens/contacts/contactsscreen.dart';
import 'package:messenger_clone/repository/screens/more/morescreen.dart';

class BottomNavigationScreen extends StatefulWidget{
  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex=0;
  List<Widget>pages=[
    ContactsScreen(),
    ChatsScreen(),
    MoreScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_2_alt), label: "Contacts"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_fill), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More")

      ], currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex=value!;
        });
      },
        unselectedIconTheme: IconThemeData(color: Theme.of(context).brightness==Brightness.dark?AppColors.bottomdarkmode:AppColors.bottomdarkmode),
      selectedIconTheme: IconThemeData(color: Theme.of(context).brightness==Brightness.dark?AppColors.icondarkmode:AppColors.iconlightmode),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),

    );

  }
}