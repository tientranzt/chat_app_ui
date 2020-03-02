import 'package:flutter/material.dart';

class SeemText extends StatelessWidget {
  final statusText;
  final isSeem;
  SeemText({this.statusText, this.isSeem});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: isSeem ? '✔ ' : "",
        style: TextStyle(color: Color(0xFF70C7CF)),
        children: <TextSpan>[
          TextSpan(text: statusText, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
