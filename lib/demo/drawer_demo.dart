import 'package:flutter/material.dart';

class Drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
    /* Drawer(
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
        ); */
  }
}