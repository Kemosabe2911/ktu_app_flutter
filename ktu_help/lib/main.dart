import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(title: Text('KTU HELP')),
      ),
      debugShowCheckedModeBanner: false,
      ); 
  }
}

