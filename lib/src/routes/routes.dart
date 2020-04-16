import 'package:flutter/material.dart';


import 'package:component_flutter/src/pages/home_page.dart';
import 'package:component_flutter/src/pages/alert_page.dart';
import 'package:component_flutter/src/pages/avartar_page.dart';
import 'package:component_flutter/src/pages/card_page.dart';
import 'package:component_flutter/src/pages/animated_page.dart';
import 'package:component_flutter/src/pages/input_page.dart';
import 'package:component_flutter/src/pages/slider_page.dart';

Map <String , WidgetBuilder> getAplicationRotues(){
        return  <String , WidgetBuilder> {
                '/'      : (context) => HomePage(),
                'alert'  : (context) => AlertPage(),
                'avatar' : (context) => AvatarPage(),
                'card'   : (context) => CardPage(),
                'animated_container' : (context) => AnimatedPage(),
                'inputs' : (context) => InputPage(),
                'slider' : (context) => SliderPage()
        };
}