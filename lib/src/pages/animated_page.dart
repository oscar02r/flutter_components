import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
    double _width = 50.0;
    double _heigth = 50.0;
    Color _color = Colors.pink;
    
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Page'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1000),
          height: _heigth,
          width: _width,
          color: _color,
        
          ),
      ),
      
    );
  }
}