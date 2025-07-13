import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/repository/screens/uihelper.dart';

import '../../../domain/constants/appcolors.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {"img": "1.1.jpg", "name": "Rupesh", "lastseen": " 1 min ago"},
    {"img": "1.2.jpg", "name": "Aims", "lastseen": " 10 min ago"},
    {"img": "1.3.jpg", "name": "Don", "lastseen": " 11 min ago"},
    {"img": "1.4.jpg", "name": "Ashish", "lastseen": " 15 min ago"},
    {"img": "1a.jpg", "name": "Gautam", "lastseen": " 16 min ago"},
    {"img": "2.jpg", "name": "Ajay", "lastseen": " 1 sec ago"},
    {"img": "15.jpg", "name": "Shashank", "lastseen": " 1 hrs ago"},
    {"img": "17.jpg", "name": "Rupesh", "lastseen": " 10 hrs ago"},
    {"img": "18.jpg", "name": "Anish", "lastseen": " 1 min ago"},
    {"img": "logo.jpg", "name": "Satyam", "lastseen": " 58 min ago"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.scaffolddark
                : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          text: "Contacts",
          fontsize: 18,
          context: context,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),

      body: Column(
        children: [
          SizedBox(height: 10),
          UiHelper.CustomTextField(
            controller: searchController,
            text: "Search",
            textinputtype: TextInputType.name,
            context: context,
            icondata: (Icons.search),
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/${arrContacts[index]["img"]}"),
              ),
              title: UiHelper.CustomText(text: arrContacts[index]["name"].toString(), fontsize: 14, context: context, fontweight: FontWeight.w600),
              subtitle: UiHelper.CustomText(text: arrContacts[index]["lastseen"].toString(), fontsize: 14, context: context),
            );
            }, itemCount: arrContacts.length),

          )],
      ),
    );
  }
}
