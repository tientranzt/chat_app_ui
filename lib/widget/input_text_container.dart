import 'package:flutter/material.dart';


class InputTextContainer extends StatelessWidget {
  final  size;
  InputTextContainer({this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size * 0.12),
      decoration: BoxDecoration(color: Color(0xFFE7F7FF), borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        leading: Icon(Icons.mic, color: Color(0xFFDB8155),),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Your message",
          border: InputBorder.none
        ),
      ),
        trailing: Wrap(
          spacing: 12,
          children: <Widget>[
            Icon(Icons.child_care, color: Color(0xFFFFBB4A),),
            Icon(Icons.alternate_email, color: Color(0xFF8CCCD4),)
          ],
        ),

      ),
    );
  }
}
