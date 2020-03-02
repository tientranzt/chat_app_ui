import 'package:flutter/material.dart';
import 'package:twodesigntwopage/page/page1.dart';
import 'package:twodesigntwopage/page/page2.dart';

void main() => runApp(MaterialApp(routes: {
      "page1": (context) => Page1(),
      "page2": (context) => Page2(),
    }, debugShowCheckedModeBanner: false /**/, home: ChatApp()));

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page1();
  }
}
