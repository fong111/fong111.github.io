import 'package:flutter/material.dart';
//单选按钮
class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;
  void _HandleRadioValueChanged(value){
    setState(() {
      _radioGroupA = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Option is:${_radioGroupA}'),
            SizedBox(
              height: 100.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _HandleRadioValueChanged,
              title: Text('Options A'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _HandleRadioValueChanged,
              title: Text('Options A'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               /*  Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _HandleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _HandleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
