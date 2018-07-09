import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert' show json, utf8;

class First extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text('Todays price is ₹81.0',
        style: new TextStyle(
              
              fontSize: 25.0,
            ),
        )
      )
    );
  }
}
