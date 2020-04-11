import 'package:flutter/material.dart';
import 'package:component_flutter/pages/home_page_temp.dart';

void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           debugShowCheckedModeBanner: false,
           home: HomePageTemp()
      );
  }
}