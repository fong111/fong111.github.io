import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print('create a stream.');
    //Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController<String>();
    _sinkDemo = _streamDemo.sink;//使用sink往stream添加数据

    print('start listening on a stream.');
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);

    print('initialize completed.');
  }

  void onDone() {
    print('Done!');
  }

  void onError(error) {
    print('error:$error');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    //throw 'Some happen';
    return 'hello';
  }

//-----------------------
  void _pauseStream() {
    print('pause subscription');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('resume subscription');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('cancel subscription');
    _streamDemoSubscription.cancel();
  }




  void _addDataToStream() async {
    print('Add data to Stream');
    String data = await fetchData();
    
    //_streamDemo.add(data);
    _sinkDemo.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_data'),
            /* StreamBuilder(
              stream: _streamDemo.stream,
              initialData: '....',
              builder: (context,snapshot){
                return Text('${snapshot.data}');
              },
            ),  */ 
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('add'),
              onPressed: _addDataToStream,
            ),
            FlatButton(
              child: Text('Pause'),
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text('Resume'),
              onPressed: _resumeStream,
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: _cancelStream,
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}
