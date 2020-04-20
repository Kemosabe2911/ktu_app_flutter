import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black
      ),
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
      ); 
  }
}
class MyStatefulWidget extends StatefulWidget{
  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('KTU HELP',style: TextStyle(fontSize: 22.0),)),
    );
  }
}

