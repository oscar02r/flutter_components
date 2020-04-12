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
        
      return FutureBuilder(
        initialData: [],
        future: menuProvider.loadData(),
        builder: (context,  AsyncSnapshot<List<dynamic>> snashot){
        
               return ListView(  
                   children:_itemsList(snashot.data)
               );
        });

  }

 List <Widget> _itemsList (List<dynamic> data) {
       
        final List<Widget> options =[];

           data.forEach((opt){

           final tempWidget = ListTile(
             title:Text(opt['texto']),
             leading: Icon(Icons.account_circle, color: Colors.blue,),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: (){},
           );
           options..add(tempWidget)
                  ..add(Divider(color: Colors.redAccent,));
       });

       return options;
 }
      
}