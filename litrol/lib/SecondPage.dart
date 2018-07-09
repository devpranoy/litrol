import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text('Tomorrows price is ₹82.1',
        style: new TextStyle(
              
              fontSize: 25.0,
            ),
        )
      )
    );
  }
}