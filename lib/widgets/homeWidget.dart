import 'package:flutter/material.dart';


class myDraw extends StatefulWidget {
  @override
  _myDrawState createState() => _myDrawState();
}

class _myDrawState extends State<myDraw> {
  @override
  Widget build(BuildContext context) {
   
    return Drawer(

  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(

    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Shalom Akos'),
               accountEmail: Text('akosshalom@gmail.com'),

               otherAccountsPictures: [
                 CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                    AssetImage("assets/user7.jpg"),
              ),
               ],
              decoration: BoxDecoration(color: Colors.purple),
              currentAccountPicture: new CircleAvatar(
                radius: 50.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                    AssetImage("assets/user2.jpg"),
              ),
            ),
        
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
    // Update the state of the app
    // ...
    // Then close the drawer
          Navigator.pop(context);
         },
      ),
      Divider(),
    ListTile(
            title: Text('Discover'),
            leading: Icon(Icons.location_pin),
            onTap: () {
    // Update the state of the app
    // ...
    // Then close the drawer
          Navigator.pop(context);
         },
      ),
    ListTile(
            title: Text('Play'),
            leading: Icon(Icons.library_music),
            onTap: () {
    // Update the state of the app
    // ...
    // Then close the drawer
          Navigator.pop(context);
         },
      ),
      ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person_pin_circle),
            onTap: () {
    // Update the state of the app
    // ...
    // Then close the drawer
          Navigator.pop(context);
         },
      ),
      ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.logout),
            onTap: () {
    // Update the state of the app
    // ...
    // Then close the drawer
          Navigator.pop(context);
         },
      ),
          ],
  )
        );
  }
}

Widget  homeBigCard(){
  return Container(
     margin: EdgeInsets.fromLTRB(10,20,10,5),
child: Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20)
  ),
  child: Container(
   
    child: Stack(
      children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child:   Image.asset('assets/landing.jpg', ),
      ),
        Column(
          children: [
            Container(
              
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('wORLD PREMIER', style: TextStyle(color: Colors.white),),
                      Icon(Icons.menu_rounded, color: Colors.white,)
                    ]
                  ),
                  Text('ROMEO & JULIET', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                  Text('wORLD PREMIER', style: TextStyle(color: Colors.white),),
                  SizedBox(height: 100,),
                  Text('SHOW', style: TextStyle(color: Colors.white),),


                ]
              )
            )
          ]
        )
      ],
    ),
  ),
),
  );
}


Widget userCard(String img,name,nickName,post, postImg, ){

 return Container(
   margin: EdgeInsets.only(left:10, right:10),
   child: Card(
     child: Container(
       padding: EdgeInsets.all(10),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CircleAvatar(
                 backgroundImage: AssetImage(img),
                 radius: 20,
               ),
              SizedBox(height: 10,),
              Container(
                
                decoration: BoxDecoration(
                  color: Colors.purple,
                borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.fromLTRB(10, 1, 10,1),
                
                child:  Icon(Icons.arrow_right_alt,
               color: Colors.white,
               ) ,
              )
             ],
           ),
           
           Container(
             margin: EdgeInsets.only(left:1,right: 1),
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('$name', style: TextStyle(fontWeight: FontWeight.bold),),
                 Text('@$nickName',style: TextStyle(color: Colors.grey),),
                 SizedBox(width: 5,),
                 Text('$post', maxLines: 5,softWrap: true, )
               ],
             ),
           ),
           
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 
                 width: 70,
                 child:ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                   child:  Image.asset(postImg),
                 ),
               )
             ],
           )
         ],
       )
     ),
   ),
 );
}




Widget listImg(String img,songName,artistName){
  return Container(
    height: 150,
    width: 150,
    
      child: Column(
        children: [
          ClipRect(
            child: Image.asset(img),
          ),
          SizedBox(height: 5,),
          Text('$songName', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          Text('$artistName'),
        ],
      
    ),
  );
}