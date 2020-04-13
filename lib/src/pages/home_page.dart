import 'package:flutter/material.dart';

import 'package:component_flutter/src/providers/menu_provider.dart';
import 'package:component_flutter/src/utils/icon_string_util.dart';

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
        
      return FutureBuilder(
        initialData: [],
        future: menuProvider.loadData(),
        builder: (context,  AsyncSnapshot<List<dynamic>> snashot){
        
               return ListView(  
                   children:_itemsList(snashot.data, context)
               );
        });

  }

 List <Widget> _itemsList (List<dynamic> data, BuildContext context) {
       
        final List<Widget> options =[];
           
           data.forEach((opt){

           final tempWidget = ListTile(
             title:Text(opt['texto']),
             leading: getIcon(opt['icon']),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: (){

               Navigator.pushNamed(context, opt['ruta']);

               /*  final route = MaterialPageRoute(
                   builder:(context) => AlertPage()
                 );
                 Navigator.push(context, route);*/
             },
           );
           options..add(tempWidget)
                  ..add(Divider(color: Colors.redAccent,));
       });

       return options;
 }
      
}