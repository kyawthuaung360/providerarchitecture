import 'package:flutterproviderarchi/core/models/post.dart';
import 'package:flutter/material.dart';


class PostView extends StatelessWidget {
  final Post post;
  PostView({this.post});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('${post.title}',style: Theme.of(context).textTheme.title),
          Text('${post.body}',style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
    );
  }
}
