import 'package:flutter/material.dart';
class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemo();
  }
}

class _BottomNavigationBarDemo extends State<BottomNavigationBarDemo>{
  int _currentIndex = 1;
  void _onTapHandler(int index){
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('explore')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('history')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My')
            ),
          ],
        );
  }
}