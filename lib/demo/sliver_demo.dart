import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //title: Text('fongyz'),
            //pinned: true,
            //floating: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Flutter fongyauching',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight:FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://resources.ninghao.net/images/overkill.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGridDemo(),
          ),
          )
        ],
      ),
    );
  }
}


class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 18.0,
              mainAxisSpacing: 18.0,
              childAspectRatio: 1.25,
            ),
            delegate:SliverChildBuilderDelegate(
              (BuildContext context, int index) {
              return Container(
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              );

            },
            childCount:posts.length,
            ),
          );
  }
}