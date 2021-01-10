import 'package:componentesFlutter/pages/home_page.dart';
import 'package:componentesFlutter/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: routes,
      initialRoute: 'Home',
    );
  }
}