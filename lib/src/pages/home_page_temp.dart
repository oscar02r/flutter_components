import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Temp')
        ),
        body: ListView(
          children: _createItemsShort())
        );
  }

  List<Widget> _createItems() {
    final List<Widget> list = new List<Widget>();

    for (String opt in options) {
        
        final tempWidget = ListTile(
          title: Text(opt)
        );

      list..add(tempWidget )
      ..add(Divider(color:Colors.deepPurpleAccent));
    }
    return list;
  }

  List<Widget> _createItemsShort(){
     return options.map((opt){
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(opt + '!'),
                leading: Icon(Icons.account_balance),
                subtitle: Text('Welcome to lisView'),
                trailing:Icon(Icons.keyboard_arrow_right),
                onTap: (){},
              ),
              Divider(color: Colors.deepOrange)
            ],
          ); 
     }).toList();
  }

}
