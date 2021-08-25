import 'package:flutter/material.dart';
import 'package:flutter_app4/screens/discover.dart';
import 'package:flutter_app4/screens/playing.dart';
import 'package:flutter_app4/screens/profile.dart';
import 'package:flutter_app4/screens/share.dart';
import 'package:flutter_app4/widgets/homeWidget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


List<String> imgs =[
   'assets/cover6.jpg',
  'assets/listImg2.jpg',
  'assets/cover5.jpg',
  'assets/cover6.jpg'
  
];

List<String> friendsImg=[
  'assets/user1.jpg',
  'assets/user2.jpg',
  'assets/user3.jpg',
  'assets/user4.jpg',
  'assets/user5.jpg',
  'assets/user6.jpg',
  'assets/user7.jpg',
  'assets/user8.jpg',
  'assets/user9.jpg',
  'assets/user10.jpg',
  'assets/user6.jpg',
  'assets/user7.jpg',
  'assets/user8.jpg',
  'assets/user9.jpg',
  'assets/user10.jpg',
];

List<String> songNames =[
  'FishBone',
  'My Lady',
  'Upgrade',
  'Upgrade2'
];
List<String> artistsNames =[
  'Khostik',
  'V.I',
  'Akhostik',
  'Jackson'
];

List<Widget> pages= [
  HomePage(),
  Discover(),
  Playing(),
  Profile()

];
  int _selectedIndex = 0;

  void _onTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Animate a bottom drawer
          },
        ),
        
        IconButton(icon: Icon(Icons.location_pin), onPressed: () {
           Navigator.push( context,MaterialPageRoute(builder: (context) => Discover()));
        }),
         IconButton(icon: Icon(Icons.library_music), onPressed: () {
           Navigator.push( context,MaterialPageRoute(builder: (context) => Playing()));
        }),
          IconButton(icon: Icon(Icons.share_outlined), onPressed: () {
           Navigator.push( context,MaterialPageRoute(builder: (context) => SharePage()));
        }),
      ],
      )),
      drawer: myDraw(),
      
    
      appBar: 
    
      AppBar(
        toolbarHeight: 70,
        elevation: 0,
        iconTheme:  IconThemeData(color: Colors.black),
        title: Text('Home', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        actions: [
          Container(
          padding: EdgeInsets.only(right:15),
            child: Icon(Icons.search),
          )
        ],

      ),
  body: SingleChildScrollView(
    child: Column(
      children: [
        
      homeBigCard(),
      Container(
        margin: EdgeInsets.only(left:15, right:15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Just for you', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
           Row(
             children: [
                Text('View All', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            Icon(Icons.keyboard_arrow_right,)

             ],
           )
            
          ],
        ),
      ),
      SizedBox(height: 5,),
    Container(
      margin: EdgeInsets.only(left:15,right:15),
      height: 210,
      width: 400,
      child:  
       ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: imgs.length,
        itemBuilder: (context,index){
          return listImg('${imgs[index]}', '${songNames[index]}', '${artistsNames[index]}');
        },
      )
    ),

  
    userCard('assets/user4.jpg', 'Shalom', 'akhostik', 'Checkout the best rendition \n i did a couple of days back!', 'assets/cover4.jpg'),
    SizedBox(height: 5,),
     userCard('assets/user3.jpg', 'Jane', 'janey20', 'Hey guys i am new here! \n I love this space!', 'assets/coverlast.jpg'),
       SizedBox(height: 15,),
       Container(
        margin: EdgeInsets.only(left:15, right:15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Friends Activities', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
           Row(
             children: [
                Text('View All', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            Icon(Icons.keyboard_arrow_right,)

             ],
           ),
           
            
          ],
        ),
      ),
SizedBox(height: 15,),
       Container(
         margin: EdgeInsets.only(left:15, right: 20),
         height: 30,
         width: 400,
         child: ListView.builder(
          scrollDirection: Axis.horizontal,
       
          itemCount: friendsImg.length,
          itemBuilder: (context,index){
            return CircleAvatar(
              backgroundImage: AssetImage(friendsImg[index]),
            );
          },
      ),
       )
      ]
    ),
  ),
    );
  }
}