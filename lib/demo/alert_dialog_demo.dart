import 'package:flutter/material.dart';
import 'dart:async';

enum Action{
  Ok,
  Cancel,
  Restart
}
class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "nothing";

  Future _openAlertDialog () async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context,Action.Cancel);
              },
            ), 
            FlatButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.pop(context,Action.Ok);
              },
            ), 
            FlatButton(
              child: Text('Restart'),
              onPressed: (){
                Navigator.pop(context,Action.Restart);
              },
            ), 
          ],
        );
      },
    );
    switch (action) {
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      case Action.Restart:
        setState(() {
          _choice = 'Restart';
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is:${_choice}'),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('open ALertDialog'),
                  onPressed: _openAlertDialog,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}