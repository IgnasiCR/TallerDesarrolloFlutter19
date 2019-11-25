import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:taller_2/src/pages/home_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      theme: ThemeData(
      accentColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Taller Flutter',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
      }
    );
  }
}