import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
             title: Text('Alert Page'),
           ),
           body: Center(
             child: RaisedButton(
               shape: StadiumBorder(),
               textColor: Colors.white,
               color: Colors.blue,
               child: Text('Show alert'),
               onPressed: ()=>_showAlert(context),
             ),
           ),
           floatingActionButton: FloatingActionButton(
             child: Icon(Icons.keyboard_arrow_left),
             onPressed:(){
               Navigator.pop(context);
             } ,
           ),
      );
  }

 void _showAlert( BuildContext context) {
       showDialog(
         context: context,
         barrierDismissible: false,
         builder: (context){
              return AlertDialog(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  title: Text('Titulo'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Wuold like to go home?'),
                      FlutterLogo(size:100.0)
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('Cancer'),
                      onPressed: () => Navigator.of(context).pop() ,
                    ),
                    FlatButton(
                      child: Text('Ok'),
                      onPressed: ()=> Navigator.of(context).pushNamed('/'),
                    )
                  ],
              );
         }
         );
  }
}