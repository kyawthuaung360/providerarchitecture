import 'package:flutter/material.dart';
import 'package:flutterproviderarchi/core/enums/viewstate.dart';
import 'package:flutterproviderarchi/core/models/post.dart';
import 'package:flutterproviderarchi/core/viewmodels/home_model.dart';
import 'package:flutterproviderarchi/ui/base_view.dart';
import 'package:flutterproviderarchi/widgets/postlist_item.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) => model.getPosts(),
      builder: (context, model, child) => Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: model.state == ViewState.Busy
              ? Center(child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          ))
              : getPostsUi(model.posts)),
    );
  }

  Widget getPostsUi(List<Post> posts) => ListView.builder(
      itemCount: posts.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => PostListItem(
            post: posts[index],
            onTap: () {
              Navigator.pushNamed(context, '/', arguments: posts[index]);
            },
          ));
}
