import 'package:flutter/material.dart';

Map<int, Color> colorMap = {
  50: Color.fromRGBO(255, 255, 255, .1),
  100: Color.fromRGBO(255, 255, 255, .2),
  200: Color.fromRGBO(255, 255, 255, .3),
  300: Color.fromRGBO(255, 255, 255, .4),
  400: Color.fromRGBO(255, 255, 255, .5),
  500: Color.fromRGBO(255, 255, 255, .6),
  600: Color.fromRGBO(255, 255, 255, .7),
  700: Color.fromRGBO(255, 255, 255, .8),
  800: Color.fromRGBO(255, 255, 255, .9),
  900: Color.fromRGBO(255, 255, 255, 1),
};


ThemeData buildThemeData(BuildContext context) {

  return ThemeData(
    scaffoldBackgroundColor: Colors.green,
    primaryColor: Color(0xFFffffff),
    backgroundColor: Color(0xFF1F2746),//0xFFc1c1c2
    accentColor: Color(0xFF57A11E), //0xFFfbd043
    canvasColor: Color(0xFF11151b),
    cardColor: Color(0xFFffffff),
    buttonColor: Color(0xFFFBD043),
    textSelectionColor: Color(0xFF1E233C),
    indicatorColor: Color(0xFFc1c1c2),
    unselectedWidgetColor:Colors.green,
    dividerColor: Color(0xFF35343a), //9e9da0
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
      color: Colors.blue,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
    ),

    textTheme: TextTheme(
      headline: TextStyle(
        fontSize: 90,
        fontFamily: "Aileron",
        color: Color(0xFF57A11E),
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Color(0xFFc1c1c2),
            offset: Offset(5.0, 5.0),
          ),
        ],
      ),
      subhead: TextStyle(
        fontFamily: "Aileron",
        fontSize: 16,
        color: Color(0xFFFFFFFF),
      ),
      display1: TextStyle(
        fontFamily: "Aileron",
        fontSize: 18,
        color: Color(0xFFFBD043),
      ),
      display2: TextStyle(
        fontFamily: "Aileron",
        fontSize: 15,
        color: Colors.white,
      ),
      display3: TextStyle(
        fontFamily: "Aileron",
        fontSize: 14,
        color: Color(0xFF878787),
      ),
      display4: TextStyle(
        fontFamily: "Aileron",
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      body1: TextStyle(
        fontFamily: "Aileron",
        fontSize: 16,
        color: Color(0xFF7a7a7d),
      ),
      body2: TextStyle(
        fontFamily: "Aileron",
        fontSize: 18,
        color: Color(0xFF000000),
      ),
      caption: TextStyle(
        fontFamily: "Aileron",
        fontSize: 10,
        color: Color(0xFF7a7a7d),
      ),
      button: TextStyle(
        fontFamily: "Aileron",
        fontSize: 14,
        color: Color(0xFF57A11E),
      ),
    ),
  );
}
