import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
             title: Text('Avatar Page'),
             actions: <Widget>[
               
                 Container(
                   padding: EdgeInsets.all(4.0),
                   child: CircleAvatar(
                     backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_960_720.jpg'),
                     radius: 25.0,
                     
                   ),
                 ),
               Container(
                 margin: EdgeInsets.only(right: 10.0 ),
                 child: CircleAvatar(
                   child: Text('SL'),
                   backgroundColor: Colors.brown,
                 ),
                 ),
             ],
           ),
           body: Center(
             child:FadeInImage(
               image: NetworkImage('https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_960_720.jpg'),
               placeholder: AssetImage('assets/jar_loading.gif'),
               fadeInDuration: Duration(milliseconds: 200),
             ) ,
           ),
           floatingActionButton: FloatingActionButton(
             child: Icon(Icons.keyboard_arrow_left),
             onPressed:(){
               Navigator.pop(context);
             } ,
           ),
      );
  }
}