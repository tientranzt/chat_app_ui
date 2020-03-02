import 'package:flutter/material.dart';

class TimeStamp extends StatelessWidget {
  final String time;
  TimeStamp({this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(15),
            child: Text(
              time,
              style: TextStyle(color: Colors.grey),
            ))
      ],
    );
  }
}
