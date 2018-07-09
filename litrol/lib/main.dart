import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;


void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false,
    home: new MyTabs()
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {


  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Litrol"), 
        backgroundColor: new Color.fromRGBO(40, 23, 72,1.0),
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Text('Today')),
            new Tab(icon: new Text('Tomorrow')),
          ]
        )
      ),
      
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
        ]
      )
    );
  }
}