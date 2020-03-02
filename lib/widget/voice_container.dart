import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_progress_bar/progress_bar.dart';
import 'package:twodesigntwopage/widget/seem_text.dart';

class VoiceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  margin: EdgeInsets.only(left: 60, top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), color: Color(0xFFD6EFEF)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    leading: FloatingActionButton(
                      backgroundColor: Color(0xFFF5876B),
                      child: Icon(Icons.play_arrow),
                    ),
                    title: LinearProgressIndicator(
                      value: 0,
                      backgroundColor: Color(0xFFF5876B),
                    ),
                    subtitle: Text("03:19"),
                  ),
                ),
              ),
            ]),
        SeemText(statusText: "Seen", isSeem: true,)
      ],
    );
  }
}
