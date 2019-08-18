import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit:BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //crossAxisCount: 3,
        maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'Item $index',
            style:TextStyle(fontSize: 28.0,color:Colors.grey),
          ),
        );
    });
  }


  @override
  Widget build(BuildContext context) {
    // 网格视图
    //count 是固定的格子，而extent是可移动的
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 20.0,
      //scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}


class GridViewCountDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'Item $index',
            style:TextStyle(fontSize: 28.0,color:Colors.grey),
          ),
        );
    });
  }


  @override
  Widget build(BuildContext context) {
    // 网格视图
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget{
  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit:BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight:FontWeight.bold ),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontWeight:FontWeight.bold ),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
 
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      //pageSnapping:false,//页面之间可弹回
      //reverse: true,//第一页变成最后一页
      scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      controller: PageController(
        initialPage: 1,
        viewportFraction: 0.85,
      ),
      children: <Widget>[
        Container(
          color:Colors.grey[900] ,
          alignment: Alignment(0.0,0.0),
          child: Text(
            '第一页',
            style:TextStyle(fontSize:32.0,color:Colors.white)
          ),
        ),
        Container(
          color:Colors.yellow[900] ,
          alignment: Alignment(0.0,0.0),
          child: Text(
            '第二页',
            style:TextStyle(fontSize:32.0,color:Colors.white)
          ),
        ),
        Container(
          color:Colors.blue[900] ,
          alignment: Alignment(0.0,0.0),
          child: Text(
            '第三页',
            style:TextStyle(fontSize:32.0,color:Colors.white)
          ),
        ),
      ],
    );
  }
}