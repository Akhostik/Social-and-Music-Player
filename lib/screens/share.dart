import 'package:flutter/material.dart';

class SharePage extends StatefulWidget {
  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 60,
        title: Text('Share', style: TextStyle(color: Colors.black,)),
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
             Container(
        margin: EdgeInsets.only(left:15, right:15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recent Shares', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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

          ],
        ),
  
      ),
    );
    
  }
}

