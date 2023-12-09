import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solution_sheet_6/post_model/post.dart';

class InstagramPostWidget extends StatelessWidget {
  final Post post;
  const InstagramPostWidget({required this.post,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     //mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [

              CircleAvatar(
                radius: 15,
                backgroundImage: Image.asset(post.user?.profile ?? "").image,

              ),
              SizedBox(width: 10,),
              Expanded(
                child: Text(post.user?.name ?? "",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Icon(Icons.more_horiz_outlined,color: Colors.white,size: 20,),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Image.asset(post.image ?? ""),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border_outlined,color: Colors.white,size: 25,),
                        SizedBox(width: 10,),
                        Icon(FontAwesomeIcons.comment,color: Colors.white,size: 25,),
                        SizedBox(width: 10,),
                        Icon(Icons.send_outlined,color: Colors.white,size: 25,),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 1,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(width: 5,),
                      ],

                    ),
                  ),
                  Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 20,),



                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundImage: Image.asset("assets/images/flutterIcon.png").image,
                  ),
                  SizedBox(width: 10,),
                  Text("Liked by ",style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),),
                  Text("flutter.deviser ",style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("and ",style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),),
                  Text("${post.likes} others ",style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Text(post.title ?? "",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
              SizedBox(height: 10,),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text("View ${post.comments} comment",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: Image.asset(post.user?.profile ?? "").image,

                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                    height: 45,
                    width: 270,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      cursorHeight: 27,
                      style: TextStyle(
                        color: Colors.white,
                      ),


                      decoration: InputDecoration(
                        hintText: "add a comment ....",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(

                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
