import 'package:flutter/material.dart';
import 'package:session1/home.dart';
import 'package:session1/login_page.dart';
import 'package:session1/messnger_page.dart';


void main() {
  runApp(MyApp());
}

//stateless->widget
//stateful->widget

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Messanger(),
      debugShowCheckedModeBanner: false,
    );
  }

}