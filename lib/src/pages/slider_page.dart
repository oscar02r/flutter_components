import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> { 

  double _sliderValue = 100.0;
  bool   _checkboxValue = false;
  bool   _switchValue =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          _createSlider(),
          _createCheckBox(),
          Divider(),
          _createSwitch(),
          Expanded(
            child: _createImage()
          )
        ],
      ),
    );
  }

 Widget _createSlider() {
  
   return Slider(
     value: _sliderValue,
     label: 'Size of image',
     activeColor: Colors.cyanAccent,
    // divisions:40,
     max: 400.0,
     min: 100.0,
      onChanged: _checkboxValue || _switchValue ? null : 
      (value)=> setState(() {_sliderValue = value; })
    );
 }

 Widget _createCheckBox() {
        /*return Checkbox(
          value: _checkboxValue,
          onChanged:(value)=>setState(() =>_checkboxValue = value)
          );*/
          return CheckboxListTile(
          title:Text('Block slider'),
          value: _checkboxValue,
          onChanged:(value)=>setState(() =>_checkboxValue = value)
          );
  }

  Widget _createSwitch() {

          /*return Switch(
        
          value: _switchValue,
          onChanged:(value)=>setState(() =>_switchValue = value)
          );*/

          return SwitchListTile(
            title: Text('Block slider'),
            value: _switchValue,
            onChanged: (value)=>setState(() =>_switchValue = value),
          );
  }
    

Widget  _createImage() {
  return Center(
    child: Image(
      width: _sliderValue,
      fit: BoxFit.contain,
       image: NetworkImage('https://cdn.pixabay.com/photo/2018/12/06/11/15/fantasy-3859580_960_720.png'),
    ),
  );
  }




}