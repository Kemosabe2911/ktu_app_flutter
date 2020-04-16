import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var _courses= ['CSE','ME','CE','ECE','EEE'];
  var _courseSelected='Select Course';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
            appBar: AppBar(title: Text('KTU HELP',style: TextStyle(fontSize: 20.0))
      ),
      body: new Container(
        child: Text('Select Course:',style: TextStyle(fontSize: 20.0)),
        DropdownButton<String>(
          items: _courses.map((String dropDownStringItem){
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem),
            );
          }).toList(),

          onChanged: (String newValueSelected){
              _onDropDownItemSelected(newValueSelected);
          },

          value: _courseSelected,
        )
      ),
    ); 
  }
  void _onDropDownItemSelected(String newValueSelected){
     setState((){
       this._courseSelected= newValueSelected;
     })
  }
}
