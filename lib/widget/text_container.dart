import 'package:flutter/material.dart';
import 'time_stamp.dart';

class TextContainer extends StatelessWidget {
  final String text;
  final bool isLeftAlign;
  final String statusMessage;
  final String timeStamp;

  TextContainer(
      {this.text, this.isLeftAlign, this.statusMessage = "", this.timeStamp});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
            mainAxisAlignment:
                isLeftAlign ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  margin: isLeftAlign
                      ? EdgeInsets.only(left: 60)
                      : EdgeInsets.only(right: 60),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:
                          isLeftAlign ? Color(0xFFD6EFEF) : Color(0xFFFDF8E5)),
                  padding: EdgeInsets.all(15),
                  child: Text(text),
                ),
              )
            ]),
        timeStamp != null ? TimeStamp(time: timeStamp,) : Text(""),
        Text(
          statusMessage.length > 0 ? "✔ " + statusMessage : "",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
