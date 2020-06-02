import 'package:flutter/material.dart';
import 'package:flutterproviderarchi/locator.dart';
import 'package:flutterproviderarchi/router.dart';
import 'package:flutterproviderarchi/theme.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: (context, child){
        return Theme(
          data: buildThemeData(context),
          child: child,
        );
      },
      initialRoute: 'home',
      onGenerateRoute: Router.generateRoute,
    );
  }
}

