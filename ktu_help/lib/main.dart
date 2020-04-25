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
      home: MyTabbedPage(),
      debugShowCheckedModeBanner: false,
      ); 
  }
}
/*class MyStatefulWidget extends StatefulWidget{
  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyTabbedPage(),
    );
  }
}*/
class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({ Key key }) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'CGPA'),
    Tab(text: 'SGPA'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KTU HELP',style: TextStyle(fontSize: 24.0),),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:[
          /*Text('Selected Semester',style: const TextStyle(fontSize: 25), textAlign: TextAlign.center),
          Text('This is SGPA Tab',style: const TextStyle(fontSize: 36),textAlign: TextAlign.center,),*/
          CgpaPage(),
          Text('This is SGPA Tab',style: const TextStyle(fontSize: 36),textAlign: TextAlign.center,),
          //SgpaPage(),

        ]),/*myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),*/
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('KTU HELP',style: TextStyle(fontSize: 25),),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CgpaPage extends StatefulWidget{
  @override
  _CgpaPageState createState() => _CgpaPageState();
}

class _CgpaPageState extends State<CgpaPage>{
      List<String> _semesters=['S1','S2','S3','S4','S5','S6','S7','S8'];

    @override
      Widget build(BuildContext context){
        return Scaffold(
          body: Container(
            child: Center(
              child: Text('CGPA Tab',style: const TextStyle(fontSize: 36, color: Colors.white,), textAlign: TextAlign.center,),),
            ),
        );
  }
}

/*class SgpaPage extends StatefulWidget{
  @override
  _SgpaPageState createState() => _SgpaPageState();
}

class _SgpaPageState extends State<CgpaPage>{
  
}*/

