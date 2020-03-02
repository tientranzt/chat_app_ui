import 'package:flutter/material.dart';
import 'package:twodesigntwopage/widget/list_contact.dart';

class Page1 extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      "name": "Brad Frost",
      "subTitle": "Hello Again! Looking forward too meet you at the conderence",
      "time": "15:30",
      "hasBadge": true,
      "hasSeen": false,
      "image": "0",
      "hasVisible": true
    },
    {
      "name": "Trend Walton",
      "subTitle": "How old are you, mate?",
      "time": "11:12",
      "hasBadge": false,
      "hasSeen": true,
      "image": "1",
      "hasVisible": false
    },
    {
      "name": "Tobias van Scheider",
      "subTitle": "Nice shot, man!, I was wondering if you want to have some good time",
      "time": "8:30",
      "hasBadge": false,
      "hasSeen": true,
      "image": "2",
      "hasVisible": false
    },
    {
      "name": "Dave Rupert",
      "subTitle": "Nice shot man!",
      "time": "THU",
      "hasBadge": true,
      "hasSeen": false,
      "image": "3",
      "hasVisible": true
    },
    {
      "name": "Paul Irish",
      "subTitle": "Hello again! Looking forard too meet you at the condercen",
      "time": "THU",
      "hasBadge": false,
      "hasSeen": true,
      "image": "4",
      "hasVisible": false
    },
    {
      "name": "Frank Chimero",
      "subTitle": "Nice shot, man",
      "time": "THU",
      "hasBadge": true,
      "hasSeen": true,
      "image": "5",
      "hasVisible": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
        title: Text(
          "Chats",
          style: TextStyle(color: Color(0xFF535A66)),
        ),
        centerTitle: true,
        leading: Icon(Icons.clear_all, color: Color(0XFF69BDCC)),
        elevation: 2,
        actions: <Widget>[
          Icon(
            Icons.accessibility,
            color: Color(0XFF69BDCC),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
          )
        ],
      ),
//      https://stackoverflow.com/questions/54898767/enumerate-or-map-through-a-list-with-index-and-value-in-dart/54899730
      body: ListView(
        children: data
            .map<Widget>((item) => GestureDetector(
          onTap: ()=> Navigator.pushNamed(context, "page2"),
              child: ListContact(
                    name: item["name"],
                    subTitle: item["subTitle"],
                    hasBadge: item["hasBadge"],
                    hasSeen: item["hasSeen"],
                    time: item["time"],
                    image: item["image"],
                    hasVisible: item["hasVisible"],
                  ),
            ))
            .toList(),
      ),
    );
  }
}
