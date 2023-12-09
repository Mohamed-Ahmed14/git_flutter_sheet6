import 'package:flutter/material.dart';
import 'package:solution_sheet_6/messenger_model/conversation.dart';

import 'messanger_vertical_widget.dart';
import 'mssanger_horizon_widget.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "Kevin",
      "Silva",
      "Foden",
      "Haland",
      "Alvares",
      "Walker",
      "James",
      "Doko",
    ];
    List<String> fullNames = [
      "Kevin De Bruyne",
      "Amir Yasser",
      "Weal Serag",
      "Talaat Waleed ",
      "Micheal Joe",
      "Menna Amir",
      "Joe Wael",
      "Yasser Amir",
    ];
    List<String> welcome = [
      "City",
      "Flutter",
      "England",
      "EPL",
      "Firebase",
      "FrontEnd",
      "BackEnd",
      "AI",
    ];
    List<String> status = [
      "online",
      "offline",
      "online",
      "offline",
      "offline",
      "online",
      "offline",
      "online",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,

        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/kevin.jpg"),
          ),
        ),

        centerTitle: false,
        title: Text("Chats",
          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),

        actions: [
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(Icons.camera_alt_rounded,color: Colors.white,size: 20,)),
          SizedBox(width: 10,),
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(Icons.edit_rounded,color: Colors.white,size: 20,))
        ],

      ),
      body: Container(
        color: Colors.black,
        width: 1000,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Row(
                  children: [
                    Icon(Icons.search_outlined,color: Colors.white,size: 18,),
                    SizedBox(width: 10,),
                    Text("Search",style: TextStyle(color: Colors.white,fontSize: 16),)
                  ],
                ),
              ),
              SizedBox(height: 10,),

              SizedBox(
                height: 100,
                width:1000,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MessangerHorizonWidget(conversation: conversationList[index],);
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 5,);
                }, itemCount: conversationList.length),
              ),
              SizedBox(height: 9,),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return MessangerVerticalWidget(conversation: conversationList[index]);
                  }, separatorBuilder: (context, index) {
                return SizedBox(height: 10,);
              }, itemCount: conversationList.length),

            ],
          ),
        ),
      ),
    );
  }
}
