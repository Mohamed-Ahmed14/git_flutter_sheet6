import 'package:flutter/material.dart';
import 'package:solution_sheet_6/messenger_model/conversation.dart';

class MessangerHorizonWidget extends StatelessWidget {
  final Conversation conversation;
  const MessangerHorizonWidget({required this.conversation,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IntrinsicHeight(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/kevin.jpg"),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Text(conversation.name!.split(' ')[0],style: TextStyle(color: Colors.white,fontSize: 12),)
        ],
      ),
    );
  }
}
