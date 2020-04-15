import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name ='';
  String _email ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _inputCreate(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createPerson()
        ],
      ),
      
    );
  }

  Widget _inputCreate() {

    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Count letters ${_name.length}'),
        hintText: 'Write the anme',
        labelText: 'Name',
        helperText: 'Only is the name',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle) 
      ),
      onChanged: (value) => setState(() {_name =value;})
      
    );
  }

Widget  _createEmail() {
       return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Count letters ${_email.length}'  ),
        hintText: 'Write the email',
        labelText: 'Email',
        helperText: 'Only is the email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email) 
      ), 
      onChanged: (value) =>setState(() { _email =value; })
      
    );
}

  _createPassword() {
      return TextField(
        obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Count letters ${_email.length}'  ),
        hintText: 'Write your password',
        labelText: 'Password',
        helperText: 'Only is the password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock) 
      ), 
      onChanged: (value) =>setState(() { _email =value; })
      
    );
  }

   Widget _createPerson(){
        return ListTile(
           title: Text('The name is $_name'),
        );
  }
}

