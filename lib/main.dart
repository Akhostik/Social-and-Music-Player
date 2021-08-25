import 'package:flutter/material.dart';
import 'package:flutter_app4/screens/discover.dart';
import 'package:flutter_app4/screens/home.dart';
import 'package:flutter_app4/screens/playing.dart';
import 'package:flutter_app4/screens/profile.dart';

void main()=>runApp(
MaterialApp(
  routes: {
    'home': (BuildContext context)=>HomePage(),
    'discover': (BuildContext context)=>Discover(),
    'playing': (BuildContext context)=>Playing(),
    'profile': (BuildContext context)=>Profile()
  },
  debugShowCheckedModeBanner: false,
  home:  HomePage(),
)
);



