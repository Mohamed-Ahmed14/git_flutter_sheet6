import 'package:flutter/material.dart';

class Conversation{
  String? name;
  String? lastMessage;
  String? status;

  Conversation({this.name,this.lastMessage,this.status});
}


List<Conversation> conversationList=[
  Conversation(
    name: "Kevin De Bruyne",
    lastMessage: "Welcome To Manchester City",
    status: "online",
  ),
  Conversation(
    name:"Amir Yasser",
    lastMessage: "Welcome To Flutter",
    status: "offline",
  ),
  Conversation(
    name: "Weal Serag",
    lastMessage: "Welcome To Backend",
    status: "online",
  ),
  Conversation(
    name: "Talaat Waleed",
    lastMessage: "Welcome To Frontend",
    status: "offline",
  ),
  Conversation(
    name: "Micheal Joe",
    lastMessage: "Welcome To England",
    status: "offline",
  ),
  Conversation(
    name: "Menna Amir",
    lastMessage: "Welcome To Machine Learning",
    status: "online",
  ),
  Conversation(
    name: "Joe Wael",
    lastMessage: "Welcome To Cyber security",
    status: "offline",
  ),
  Conversation(
    name: "Yasser Amir",
    lastMessage: "Welcome To AI",
    status: "online",
  ),
];