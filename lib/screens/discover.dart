import 'dart:ui';

import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 60,
        title: Text('Discover', style: TextStyle(color: Colors.black,)),
        actions: [
         Container(
           margin: EdgeInsets.only(right:20),
           child:  Icon(Icons.search),
         )
        ],
      ),
      body: Column(
      
        children: [
            SizedBox(height: 90),
          playWidget(Icons.location_pin),
          SizedBox(height: 10),
          Container(
            
         width: 190,
            child: 
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
                          child: RaisedButton(
                            color: Colors.purple,
          child: Text("Discover People", style: TextStyle(color: Colors.white)),
          onPressed: (){},
          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
        )
            ),
          )
        ]
      )
    );
  }
}


Widget playWidget(icon){

  return Container(

    decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(50)
    ),
    margin: EdgeInsets.only(top:20),
    child: Center(
      
      child: CircleAvatar( 
        backgroundColor: Colors.grey[300],
        radius: 80,
         child: Icon(icon, size: 100,color: Colors.black,),
      ),
    ),
  );
}