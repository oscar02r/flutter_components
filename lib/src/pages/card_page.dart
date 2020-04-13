
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
             title: Text('Cards'),
             ),
             body:ListView(
               padding: EdgeInsets.all(20.0) ,
               children: <Widget>[
                 _cardTipo1(),
                 SizedBox(height: 30.0,),
                 _cardTipo2()
               ],
             )

    );
  }

  Widget _cardTipo1() {

        return Card(
               child: Column(
                 children: <Widget>[
                   ListTile(
                     title: Text('Soy el titulo de esta tarjeta'),
                     subtitle: Text('Aqui estamos con la descripcion de la tarjeta aprendiendo a manejar los cards'),
                     leading: Icon(Icons.photo_album, color: Colors.blue)
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       FlatButton(
                         child: Text('Cancer'),
                         onPressed: (){},

                       ),
                       FlatButton(
                         child: Text('Ok'),
                         onPressed: (){},

                       )
                     ],
                   )
                 ],
               ),
        );
  }

 Widget _cardTipo2() {
      return Card(
         child: Column(
               children: <Widget>[

                 FadeInImage(
                   placeholder: AssetImage('assets/jar_loading.gif') , 
                   image: NetworkImage("https://cdn.pixabay.com/photo/2020/04/07/17/01/chicks-5014152__340.jpg"),
                   fadeInDuration: Duration(milliseconds: 200),
                   height: 250.0,
                   fit: BoxFit.cover,
                   ),
                 Container(
                   padding: EdgeInsets.all(10.0),
                   child: Text('No tengo idea de que poner aqui ')
                   )
               ],
         ),
      );
 }
}