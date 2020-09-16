import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegi_login/WIDGET/commonwidget.dart';
import 'package:vegi_login/home.dart';
import 'package:vegi_login/login.dart';
import 'package:vegi_login/registration.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  var route = {
    login.Tag:(context)=>login(),
    registration.Tag: (context) => registration(),
    home.Tag: (context) => home(),
  };
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[400]),
      debugShowCheckedModeBanner: false,
      routes: route,
    );
  }
}

