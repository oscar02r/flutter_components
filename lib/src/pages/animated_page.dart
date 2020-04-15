import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
    double _width = 50.0;
    double _heigth = 50.0;
    Color _color = Colors.pink;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: Text('Animated Page'),
      ),

      body: Center(
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(seconds: 1),
          height: _heigth,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius

          ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          _shapeChange();
                    
                  }
                ),
              );
            }
          
        void _shapeChange() {

          setState(() {
            final random =  Random();
            _heigth = random.nextInt(300).toDouble();
            _width = random.nextInt(300).toDouble();
            _borderRadius = BorderRadius.circular(random.nextInt(400).toDouble());
            _color = Color.fromRGBO( 
              random.nextInt(255), 
              random.nextInt(255), 
              random.nextInt(255), 
              1);  
                      
          }); 
        }
}