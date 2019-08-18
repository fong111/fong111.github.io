import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
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
                Text(_currentItem),
                PopupMenuButton(
                  onSelected: (value){
                    print(value);
                    setState(() {
                      _currentItem = value;
                    });
                  },
                  //构建菜单的选项
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'Discover',
                      child: Text('Discover'),
                    ),
                    PopupMenuItem(
                      value: 'community',
                      child: Text('community'),
                    ),
                    
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}