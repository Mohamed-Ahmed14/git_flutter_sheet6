import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solution_sheet_6/instagram_post_widget.dart';
import 'package:solution_sheet_6/post_model/post.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Text("Instagram",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
                Align(
                    alignment: AlignmentDirectional.center,
                    child: Icon(Icons.arrow_drop_down_outlined,color: Colors.white,size: 25,)),
              ],
            ),
            actions: [
              Icon(Icons.add_box_outlined,color: Colors.white,size: 25,),
              SizedBox(width: 10,),
              Stack(
                children: [
                  Icon(Icons.favorite_border_outlined,color: Colors.white,size: 25,),
                  PositionedDirectional(
                    top: 0,
                    end: 0,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(FontAwesomeIcons.facebookMessenger,color: Colors.white,size: 22,),
                  PositionedDirectional(
                    top: -2,
                    end: 0,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.red,
                      child: Text("6",style: TextStyle(
                          color: Colors.white,
                          fontSize: 8
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),


            ]
        ),
        body:ListView.separated(itemBuilder: (context, index) {
          return InstagramPostWidget(post: postsList[index],);
        }, separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        }, itemCount: postsList.length)
    );
  }
}
