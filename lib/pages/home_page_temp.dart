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
          children: _createItems())
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
}
