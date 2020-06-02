import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproviderarchi/ui/home_view.dart';
import 'package:flutterproviderarchi/ui/post_view.dart';

import 'core/models/post.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/':
        var post = settings.arguments as Post;
        return MaterialPageRoute(builder: (_) => PostView(post: post,));
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for'),),
        ));
    }
  }
}