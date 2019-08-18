import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            child: Container(
              color: Color.fromRGBO(1, 1, 255, 1.0),
            ), 
            aspectRatio: 16.0/9.0,
          ),
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //stack属性是叠加的效果

          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment(0.0, -0.8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 455, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
                height: 30.0,
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 455, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 255, 144, 1.0),
                    ]),
                  ),
                  child:
                      Icon(Icons.desktop_mac, size: 50.0, color: Colors.white),
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 10.0,
                child: Icon(Icons.ac_unit, size: 50.0, color: Colors.white),
              ),
              Positioned(
                right: 33.0,
                top: 120.0,
                child: Icon(Icons.ac_unit, size: 35.0, color: Colors.white),
              ),
              Positioned(
                right: 44.0,
                top: 180.0,
                child: Icon(Icons.ac_unit, size: 35.0, color: Colors.white),
              ),
              Positioned(
                right: 3.0,
                top: 10.0,
                child: Icon(Icons.ac_unit, size: 20.0, color: Colors.white),
              ),
              Positioned(
                left: 20.0,
                bottom: 4.0,
                child: Icon(Icons.ac_unit, size: 30.0, color: Colors.white),
              ),
              Positioned(
                left: 02.0,
                bottom: 88.0,
                child: Icon(Icons.ac_unit, size: 50.0, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  //参数是图标的构造函数
  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(12, 12, 255, 1.0),
    );
  }
}
