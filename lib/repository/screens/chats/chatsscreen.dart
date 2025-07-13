import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/repository/screens/uihelper.dart';

import '../../../domain/constants/appcolors.dart';

class ChatsScreen extends StatelessWidget {
  TextEditingController searchController= TextEditingController();
  var arrstatus = [
  {"imga" : "1.1.jpg",
    "txt" : "My Story"
  },
{ "imga" : "1.2.jpg",
"txt" : "anish" },
{
"imga" : "1.3.jpg",
"txt" : "Aims"
},
    {"imga" : "1.4.jpg",
      "txt" : "Ajay"
    },
    { "imga" : "1a.jpg",
      "txt" : "Rupesh" },
    {
      "imga" : "2.jpg",
      "txt" : "Shashank"
    },
    {"imga" : "15.jpg",
      "txt" : "Aman"
    },
    { "imga" : "17.jpg",
      "txt" : "Ammu" },
    {
      "imga" : "18.jpg",
      "txt" : "gautam"
    },
  ];
  var arrchat = [
    {
      "img": "1.1.jpg",
      "name": "Rupesh",
      "msg": "Good mrng",
      "date": "Today",
      "msgcount": "5",
    },
    {
      "img": "1.2.jpg",
      "name": "Aims",
      "msg": "hyy",
      "date": "5 sec ago",
      "msgcount": "4",
    },
    {
      "img": "1.3.jpg",
      "name": "Don",
      "msg": "hello",
      "date": "2 min ago",
      "msgcount": "3",
    },
    {
      "img": "1.4.jpg",
      "name": "Shashank",
      "msg": "ok coming",
      "date": " 1 hrs ago",
      "msgcount": "5",
    },
    {
      "img": "1a.jpg",
      "name": "Rupesh",
      "msg": "Good mrng",
      "date": "1 min ago",
      "msgcount": "10",
    },
    {
      "img": "2.jpg",
      "name": "Abhishek",
      "msg": "ok Thanks",
      "date": "5 hrs ago",
      "msgcount": "2",
    },
    {
      "img": "15.jpg",
      "name": "Anish",
      "msg": "haan ji ",
      "date": "ok go ahead",
      "msgcount": "7",
    },
    {
      "img": "17.jpg",
      "name": "Ajay",
      "msg": "sorry",
      "date": "5 days ago",
      "msgcount": "18",
    },
    {
      "img": "18.jpg",
      "name": "Asheesh",
      "msg": "Good mrng",
      "date": "Today",
      "msgcount": "5",
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
            text: "Chats",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
            fontfamily: "bold",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.mark_chat_unread_outlined),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: arrstatus.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/${arrstatus[index]["imga"]}"),
                      ),
                      SizedBox(height: 5),
                      Text(
                        arrstatus[index]["txt"].toString(),
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                );
              },
            ),
          ),


          Divider(color: Color(0XFFADB5BD),),
          SizedBox(height: 10),
          UiHelper.CustomTextField(controller: searchController, text: "search", textinputtype: TextInputType.number, context: context, icondata: Icons.search),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/${arrchat[index]["img"]}"),
                ),
                title: UiHelper.CustomText(
                    text: arrchat[index]["name"].toString(),
                    fontsize: 14,
                    context: context,
                    fontweight: FontWeight.w600),
                subtitle: UiHelper.CustomText(
                    text: arrchat[index]["msg"].toString(),
                    fontsize: 14,
                    context: context,
                    color: Color(0XFFADB5BD)),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  UiHelper.CustomText(text: arrchat[index]["date"].toString(), fontsize: 15, context: context,color: Color(0XFFA4A4A4)),
                  SizedBox(height: 10),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0XFFD2D5F9),
                    child: UiHelper.CustomText(text: arrchat[index]["msgcount"].toString(), fontsize: 10, context: context),
                  ),
                ],),
              );
            }, itemCount: arrchat.length),
          )
        ]));
  }
}
