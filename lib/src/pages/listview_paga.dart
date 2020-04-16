 import 'package:flutter/material.dart';

 class ListPage extends StatefulWidget {
   @override
   _ListPageState createState() => _ListPageState();
 }
 
 class _ListPageState extends State<ListPage> {

   List<int> _numberList =[1,2,3,4,5];

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Listview builder'),
       ),
       body: _createList(),
       
     );
   }

 Widget _createList() {
         return ListView.builder(
           itemCount: _numberList.length ,
           itemBuilder: (BuildContext context, int index){
              final _list = _numberList[index];
              return FadeInImage(
                fit: BoxFit.contain,
                placeholder: AssetImage('assets/jar_loading.gif'), 
                image: NetworkImage('https://picsum.photos/id/$_list/500/300')
                );

           }
           );
  }
 }