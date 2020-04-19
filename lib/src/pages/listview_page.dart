import 'package:flutter/material.dart';

import 'dart:async';

 class ListPage extends StatefulWidget {
   @override
   _ListPageState createState() => _ListPageState();
 }
 
 class _ListPageState extends State<ListPage> {

   ScrollController _scrollController = new ScrollController();
   List<int> _numberList = new List();
   int _ultimoItem = 0;
   bool _isLoading = false;

   @override
   void initState() { 
     super.initState();
     _agregarImage10();

    _scrollController.addListener((){
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
           
          _fetchData();
      }
    });

   }

   @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Listview builder'),
       ),
       body: Stack(

         children: <Widget>[
            _createList(),
            _createLoading()
       ]
       ),
       
     );
   }

 Widget _createList() {
         return ListView.builder(
           controller: _scrollController,
           itemCount: _numberList.length ,
           itemBuilder: (BuildContext context, int index){
              final _list = _numberList[index];
              return  FadeInImage(
                fit: BoxFit.contain,
                placeholder: AssetImage('assets/jar_loading.gif'), 
                image: NetworkImage('https://picsum.photos/id/$_list/500/300')
                );

           }
           );
  }

 void _agregarImage10(){
   
     for (var i = 1; i < 10; i++) {
         _ultimoItem++;
         _numberList.add(_ultimoItem);
     }
     setState(() {});
 }

  Future<Null> _fetchData() async {

    _isLoading  = true;
    setState(() { });
    final duration = new Duration(seconds: 2);
    return new Timer(duration, _responseHTTP);

  }

void _responseHTTP () {
     _isLoading  = false;

     _scrollController.animateTo(
     _scrollController.position.pixels + 300,
     duration: Duration(milliseconds: 250), 
     curve:Curves.fastOutSlowIn
  );

  _agregarImage10();

}

 Widget _createLoading() {
        
        if(_isLoading){
          
          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                ],
              ),
              SizedBox(height: 15.0,)
            ],
          );

        }
        else{
          
          return Container();
        }
  }

 }

