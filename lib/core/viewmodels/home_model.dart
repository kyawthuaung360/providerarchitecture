
import 'package:flutterproviderarchi/core/enums/viewstate.dart';
import 'package:flutterproviderarchi/core/models/post.dart';
import 'package:flutterproviderarchi/core/services/api.dart';
import 'package:flutterproviderarchi/core/viewmodels/base_model.dart';
import 'package:flutterproviderarchi/locator.dart';

class HomeModel extends BaseModel {
  Api _api = locator<Api>();

  List<Post> posts;

  Future getPosts() async {
    setState(ViewState.Busy);
    posts = await _api.getPostsForUser(5);
    setState(ViewState.Idle);
  }
}
