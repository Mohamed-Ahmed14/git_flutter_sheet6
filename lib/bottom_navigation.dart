import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'furniture_screen.dart';
import 'instagram_screen.dart';
import 'login_screen.dart';
import 'messagner_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int currentIndex=0;
  List<Widget> screens=[
    InstagramScreen(),
    MassengerScreen(),
    LoginScreen(),
    FurnitureScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.blue,
        elevation: 0,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedFontSize: 16,
        unselectedFontSize: 16,

        currentIndex: currentIndex,

        onTap: (value){
          setState(() {
            currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home_outlined,),
            label: "home",
            backgroundColor: Colors.black,
            activeIcon: Column(
              children: [
                Icon(Icons.home),
                SizedBox(height: 1,),
                CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.red,
                ),

              ],
            ),


          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.search_outlined,),
            backgroundColor: Colors.black,
            label: "Search",
            activeIcon: Column(
              children: [
                Icon(Icons.search_outlined),
                SizedBox(height: 1,),
                CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.red,
                ),

              ],
            ),

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.video_library_outlined,),
            backgroundColor: Colors.white,
            label: "Video",
            activeIcon: Column(
              children: [
                Icon(Icons.video_library_rounded),
                SizedBox(height: 1,),
                CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.red,
                ),

              ],
            ),

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.business_center_outlined,),
            backgroundColor: Colors.white,
            label: "Bussiness",
            activeIcon: Column(
              children: [
                Icon(Icons.business_center),
                SizedBox(height: 1,),
                CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.red,
                ),

              ],
            ),

          ),
        ],
      ),
    );
  }
}
