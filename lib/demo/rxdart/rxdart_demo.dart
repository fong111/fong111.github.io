import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';
class RxdartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxdartDemo'),
        elevation: 0.0,
      ),
      body: RxdartDemoHome(),
    );
  }
}

class RxdartDemoHome extends StatefulWidget {
  @override
  _RxdartDemoHomeState createState() => _RxdartDemoHomeState();
}

class _RxdartDemoHomeState extends State<RxdartDemoHome> {
  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _textFieldSubject = PublishSubject<String>();

    _textFieldSubject
    //.map((item) => 'item:${item}')//数据转换的方法
    //.where((item) => item.length > 9) //传到subject的数据需要大于9才可以输出
    .debounce((Duration(milliseconds:500))) //等到一定间隔才输出到控制台
    .listen((data) => print(data));
    

    //Observable<String> _observable = 
      //Observable(Stream.fromIterable(['hello','你好']));
      //Observable.fromFuture(Future.value('hello!!!'));
      //Observable.fromIterable(['data0','data1']);
      //Observable.just('data');
      //Observable.periodic(Duration(seconds: 3),(x) => x.toString());
      //_observable.listen(print);


      //streamController
   /*  ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);

    
    _subject.add('hello1');
    _subject.add('hello2');
    _subject.add('hello3');

    _subject.listen((data) => print('listen1:${data}'));
    _subject.listen((data) => print('listen2:${data.toUpperCase()}'));
    _subject.close(); */

  }
  @override
  void dispose() {
    _textFieldSubject.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value){
          _textFieldSubject.add('input:${value}');  
        },
        onSubmitted: (value){
          _textFieldSubject.add('submit:${value}');  
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
      
    );
  }
}

