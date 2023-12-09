

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_navigation.dart';
import 'furniture_screen.dart';
import 'instagram_screen.dart';
import 'login_screen.dart';
import 'messagner_screen.dart';

void main()
{

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: FurnitureScreen(),
    //home: MassengerScreen(),
    //home: LoginScreen(),
    //home: InstagramScreen(),
    home: BottomNavigationScreen(),



  ));
}