import 'package:flutter/material.dart';
class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 0.0,
            textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 3.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Theme.of(context).accentColor,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 3.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget fixedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );
    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          //按钮占满整一行
          //width: 200.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Expanded(
          //按钮占满整一行
          //width: 200.0,
          flex: 3, //默认是1，所占一行的比例
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );
    final Widget buttonnBarDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                    ),
                  ),
                  child: ButtonBar(
                  children: <Widget>[
                    OutlineButton(
                      child: Text('Button'),
                      onPressed: () {},
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                    ),
                    OutlineButton(
                      child: Text('Button'),
                      onPressed: () {},
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                    ),
                  ],
                ),
                ),
              ],
            );
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedButton,
            expandedButton,
            buttonnBarDemo,

          ],
        ),
      ),
    );
  }
}