import 'package:flutter/material.dart'; //material包含了颜色，窗口规范等
import 'package:nihao_app/demo/stream/stream_demo.dart';
import './demo/layout_demo.dart';
import './model/post.dart';
import './demo/listview_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import './demo/state/state_management_demo.dart';
import './demo/stream/stream_demo.dart';
import './demo/rxdart/rxdart_demo.dart';
import './demo/bloc/bloc_demo.dart';
import './demo/http/http_demo.dart';
void main() => runApp(App());
//挂载各种的widget

//自定义小部件
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      //initialRoute: '/http',
      /* routes: {
        '/': (context) => Home(),
        '/about':(context) =>Page(title: 'About'),
        '/mdc':(context) => MaterialComponents(),
        '/state-management':(context) => StateManagementDemo(),
        '/stream':(context) => StreamDemo(),
        '/rxdart':(context) => RxdartDemo(),
        '/bloc':(context) => BlocDemo(),
        '/http':(context) => HttpDemo(),
      },  */
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        //点击appbar 的样式
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white12,
        accentColor: Color.fromRGBO(1, 22, 255, 1.0),
      ),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          /*
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('navigation button is pressed'),
          ),
          */
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('search button is pressed'),
            ),
          ],
          title: Text("方耀正"),
          elevation: 30.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black26,
            indicatorColor: Colors.black87,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            SliverDemo(),
            MaterialComponents(),
            //ViewDemo(),
            //Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('xiaofong',style:TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('xiaofong@qq.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://hbimg.huabanimg.com/8ba9e37bd1339aace71b1a66359058594e5986f319bd7-ir3qym_fw658'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  image: DecorationImage(
                    image:NetworkImage('https://hbimg.huabanimg.com/907605885b6dac544640128d8f5c6b089de96519117bb5-VdbptL_fw658'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.2), 
                      BlendMode.plus
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right),
                trailing://后面加入一个图标
                    Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),//点击会关闭抽屉
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing:
                    Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                trailing:
                    Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
