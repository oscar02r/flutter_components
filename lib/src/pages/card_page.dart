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
                 _cardTipo1()
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
}