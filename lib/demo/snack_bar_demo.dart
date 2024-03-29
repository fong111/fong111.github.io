import 'dart:io';

import 'package:flutter/material.dart';
//提示窗口
class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return FlatButton(
      child: Text('Open SnackBar'),
      onPressed: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content:Text('Processing......'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: (){},
            ),
          ),
        );
      },
    );
  }
}
