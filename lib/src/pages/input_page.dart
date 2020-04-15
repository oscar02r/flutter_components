import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name ='';
  String _email ='';
  String _date ='';
  String _selectOption ='Fly';

  List <String> _powers = ['Fly', 'Rayos X', 'Super aliento', 'Super fuerza' ]; 

  TextEditingController _controllerDate = new TextEditingController();

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
          _createDate(context),
          Divider(),
           _createDropdown(),
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

 Widget _createEmail() {
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

 Widget _createPassword() {
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

 Widget _createDate(BuildContext context) {

         return TextField(
           controller: _controllerDate,
           enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Birthday',
        labelText: 'Date',
        helperText: 'Only is the data',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.perm_contact_calendar) 
      ), 
      onTap: (){
           FocusScope.of(context).requestFocus(new FocusNode());
           _selectDate(context);
      },
      
    );
    }

 _selectDate(BuildContext  context) async {
        DateTime picked = await showDatePicker(
          context: context,
          initialDate : DateTime.now(), 
          firstDate   : DateTime(2018),
          lastDate    : DateTime(2025),
          locale      : Locale('es', 'ES')
      );
      if (picked!=null){
            _date = picked.toString().substring(0,10);
            _controllerDate.text = _date;
      }         
  }


 Widget _createPerson(){
        return ListTile(
           title: Text('The name is $_name'),
           trailing: Text(_selectOption),
        );
  }

List<DropdownMenuItem<String>> getOptionsDropdown(){
     List<DropdownMenuItem<String>> _list = new List();
     _powers.forEach((power){
           _list.add(
             DropdownMenuItem(
               child: Text(power),
               value: power,
             )
           );
     });
   return _list;
}

 Widget _createDropdown() {
        return Row(
          children: <Widget>[
            Icon(Icons.select_all),
            SizedBox(width: 30.0,),
            Expanded(
                          child: DropdownButton(
                     items:getOptionsDropdown(),
                     value: _selectOption,
                    isExpanded: true,
                     onChanged: (opt){
                         setState(() {
                           _selectOption= opt;
                         });
                     },
              ),
            ),
          ],
        );
}
}