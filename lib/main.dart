import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:component_flutter/src/pages/alert_page.dart';
import 'package:component_flutter/src/routes/routes.dart';




void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           debugShowCheckedModeBanner: false,
           localizationsDelegates: [
             GlobalMaterialLocalizations.delegate,
             GlobalWidgetsLocalizations.delegate
           ],
           supportedLocales: [
             const Locale('en','US'),
             const Locale('es', 'ES')
           ],
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