import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:thinkui/detailpage.dart';
import 'package:thinkui/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => homepage(),
        '/detailpage' :(context) => detilpage(),
      },
    );
  }
}

