import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}
 
class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts()
      .then((value) => print(value));

    /* final post = {
      'title':'hello',
      'description':'nice to meet you',
    };

    print('---------------------1');
    print(post['title']);
    print(post['description']);

    print('---------------------2');
    final postJson = json.encode(post);//转化为json数据
    print(postJson);

    print('---------------------3');
    final postJsonConverted = json.decode(postJson);
    print(postJsonConverted['title']);
    print(postJsonConverted['description']);

    print('---------------------4');
    print(postJsonConverted is Map);

    print('---------------------5');
    final postModel = Post.fromJson(postJsonConverted);
    print('title:${postModel.title},description:${postModel.description}');

    print('---------------------6');
    print('${json.encode(postModel)}'); */


  } 
  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get('https://fong111.github.io/otherPrj/flutter.json');

    //print('statusCode:${response.statusCode}');
    //print('body:${response.body}');

    if(response.statusCode == 200){
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
        .map<Post>((item) => Post.fromJson(item))
        .toList();
      return posts;
    }else{
      throw('falied to fetch posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Post{
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;
  Post(
    this.id,
    this.title,
    this.description,
    this.author,
    this.imageUrl,
  );

  Post.fromJson(Map json)
    :id = json['id'],
     title = json['title'],
     description = json['description'],
     author = json['author'],
     imageUrl = json['imageUrl'];

  Map toJson() => {
    'id':id,
    'title':title,
    'description':description,
    'author':author,
    'imageUrl':imageUrl
  };
}