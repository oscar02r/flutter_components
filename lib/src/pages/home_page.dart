import 'package:component_flutter/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar( title:Text('Components')
           ),
        body: _list(),
    );
  }
  

Widget  _list() {
      
     print(menuProvider.loadData());
      return ListView(children:_itemsList(),);
  }

 List <Widget> _itemsList () {
       return [
         ListTile(
         title:Text('Hola mundo')
       ),
       Divider(),
       ListTile(
         title:Text('Hola mundo')
       )
       ];
  }    
}



