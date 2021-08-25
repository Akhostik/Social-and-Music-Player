import 'package:flutter/material.dart';
import 'package:flutter_app4/widgets/homeWidget.dart';

import 'package:carousel_slider/carousel_slider.dart';


class Playing extends StatefulWidget {
  @override
  _PlayingState createState() => _PlayingState();
}

class _PlayingState extends State<Playing> {

  List<int> numbers= [
    1,2,3
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 60,
        title: Text('Playing', style: TextStyle(color: Colors.black,)),
        actions: [
         Container(
           margin: EdgeInsets.only(right:20),
           child:  Icon(Icons.search),
         )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
//           CarouselSlider(
//   options: CarouselOptions(height: 200.0),
//   items: [
//     playWidget(Icons.play_arrow),
//     playWidget(Icons.play_arrow_rounded),
//     playWidget(Icons.play_circle_filled_outlined),
    
//   ].map((i) {
//     return Builder(
//       builder: (BuildContext context) {
//         return Container(
//           width: MediaQuery.of(context).size.width,
//           margin: EdgeInsets.symmetric(horizontal: 5.0),
//           decoration: BoxDecoration(
//             color: Colors.amber
//           ),
//           child: Text('text $i', style: TextStyle(fontSize: 16.0),)
//         );
//       },
//     );
//   }).toList(),
// )
// 

playWidget(Icons.play_circle_filled_outlined),
SizedBox(height: 5,),
Center(
  child: Text('Do I wanna Know', style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
),
Center(
  child: Text('Aerobic monk', style:TextStyle(fontSize: 15,)),
),
SizedBox(height: 10,),
 Center(
  child: Container(
    
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.arrow_left, size: 50,),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
            child: Icon(Icons.arrow_right,size: 50, )),
          Icon(Icons.arrow_right, size: 50,)
      ],
    ),
  ),

),
SizedBox(height: 10,),
playCard(1, 'Hold my hand', '4:30'),
playCard(2, 'I am Yours', '5:00'),
playCard(3, 'We are here', '3:00'),
playCard(4, 'Who am I', '2:00'),
playCard(5, 'Gratitude', '4:00'),
playCard(6, 'Jesus Saves', '3:00'),
playCard(7, 'Light Me ', '2:00'),
playCard(8, 'Ark Of God', '2:30'),





        ],
      ),
      ),
    );
  }
}


Widget playWidget(icon){
  return Container(
    margin: EdgeInsets.only(top:20),
    child: Center(
      
      child: CircleAvatar( 
        backgroundColor: Colors.purple[100],
        radius: 80,
         child: Icon(icon, size: 100,color: Colors.white,),
      ),
    ),
  );
}


Widget playCard(int number, String songTitle, duration){
  return Container(
    
    margin: EdgeInsets.only(left: 10,right: 10),
    child: Card(

      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('$number')
                  ],
                ),
                SizedBox(width: 10,),
                Column( 
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$songTitle', style:TextStyle(fontWeight: FontWeight.bold)),
                    Text('$duration')
                  ],
                )
                ]
              ),
                Column(
                  children: [Icon(Icons.arrow_drop_down_circle_outlined )]
                ),
  
              ],
            ),
          ),
     
        ],
        
      ),
    ),
  );
}