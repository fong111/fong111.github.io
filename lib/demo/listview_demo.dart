import 'package:flutter/material.dart';
import 'package:nihao_app/demo/post_show.dart';
import '../model/post.dart';
import './post_show.dart';
class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              //显示比列的调节
              AspectRatio(
                aspectRatio: 16.0/9.0,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              
              SizedBox(height: 20.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(
                height: 16.0,
              )
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  //debugPrint('tap');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>PostShow(post:posts[index]),
                    )
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      //用到了_listItembuilder的方法
      itemBuilder: _listItemBuilder,
    );
  }
}
