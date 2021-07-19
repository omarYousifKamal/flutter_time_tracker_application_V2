import 'package:flutter/material.dart';
import 'package:flutter_time_tracker_course/app/sign_in/sign_in_page.dart';

void main() {
  runApp(MyApp());

  //root widget
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'omar',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        //primary color for all of the widgets
      ),
      home: SignInPage(),
    );
  } //omar omar omar
}
