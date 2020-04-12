import 'package:component_flutter/src/pages/alert_page.dart';
import 'package:component_flutter/src/pages/avartar_page.dart';
import 'package:component_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:component_flutter/src/pages/home_page.dart';


void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           debugShowCheckedModeBanner: false,
           initialRoute: '/',
           routes:getAplicationRotues(),
           onGenerateRoute: (settings){

            return MaterialPageRoute(
               builder: (BuildContext context) => AlertPage()
             );
             
           },
      );
  }
}