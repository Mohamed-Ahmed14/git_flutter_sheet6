import 'package:flutter/material.dart';
import 'package:solution_sheet_6/messenger_model/conversation.dart';

class MessangerVerticalWidget extends StatelessWidget {
  final Conversation conversation;
  const MessangerVerticalWidget({required this.conversation, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Container(
          height: 50,
          width: 50,
          child: IntrinsicHeight(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/kevin.jpg"),
                ),
                if(conversation.status == "online")
                  Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor:Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 12,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(conversation.name!,style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12
              ),),
              SizedBox(height: 5,),
              Text(conversation.lastMessage!,style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12
              ),),
            ],
          ),
        ),
        Text("11:37 PM",style: TextStyle(
            color: Colors.grey,
            fontSize: 12
        ),),
        SizedBox(width: 5,),
      ],
    );
  }
}
