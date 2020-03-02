import 'package:flutter/material.dart';
import 'package:twodesigntwopage/widget/chat_body.dart';

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
        title: Column(
          children: <Widget>[
            Text(
              user,
              style: TextStyle(color: Color(0xFF535A66)),
            ),
            Text("Last seen just now",
                style: TextStyle(color: Colors.grey, fontSize: 14))
          ],
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () => Navigator.pushNamed(context, "page1"),
            child: Icon(Icons.arrow_back_ios, color: Color(0XFF69BDCC))),
        elevation: 1,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              child: Image.asset('assets/images/0.png'),
              elevation: 18.0,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
            ),
          ),
        ],
      ),
      body: ChatBody(
      ),
    );
  }
}
