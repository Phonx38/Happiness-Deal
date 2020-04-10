import 'package:couponzz/screens/homepage.dart';
import 'package:couponzz/shared/bottomnav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat-Medium',
        primaryColor: Color.fromRGBO(64,126,239,1),
        primarySwatch: Colors.yellow,
      ),
      home: BottomNav(),
    );
  }
}
