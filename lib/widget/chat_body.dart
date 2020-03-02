import 'package:flutter/material.dart';
import 'package:twodesigntwopage/widget/input_text_container.dart';
import 'package:twodesigntwopage/widget/text_container.dart';
import 'package:twodesigntwopage/widget/voice_container.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: <Widget>[
          TextContainer(
            isLeftAlign: false,
            text: "Hello Again! Looking forward too meet you at the conderence",
            timeStamp: "OCT 16TH",
          ),
          TextContainer(
            isLeftAlign: false,
            text: "Nice shot, man!, ",
          ),
          VoiceContainer(),
          TextContainer(
            text: "Nice shot, man!",
            isLeftAlign: false,
            timeStamp: "TODAY",
          ),
          TextContainer(
            isLeftAlign: true,
            text: "Hello again! Looking forard too meet you at the condercen",
            statusMessage: "Delivered",
          ),
          InputTextContainer(size: height,)
        ],
      ),
    );
  }
}
