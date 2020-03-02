import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/widgets.dart';

class ListContact extends StatelessWidget {
  final bool hasBadge;
  final bool hasSeen;
  final String name;
  final String subTitle;
  final String time;
  final String image;
  final bool hasVisible;

  ListContact(
      {this.hasBadge,
      this.hasSeen,
      this.name,
      this.subTitle,
      this.time,
      this.image,
      this.hasVisible});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 15, bottom: 5, left: 20, right: 20),
      leading: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Card(
            child: Image.asset('assets/images/$image.png'),
            elevation: 18.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
          ),
          hasVisible ? Positioned(
            child: Card(
              color: Colors.white,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDEDEDF), width: 3),
                    color: Color(0XFF54D5B3), shape: BoxShape.circle),
              ),
              elevation: 18.0,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
            ),
            top: 35,
            left: 35,
          ): Text("")
        ],
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: hasSeen ? '✔ ' : "",
              style: TextStyle(color: Color(0xFF70C7CF)),
              children: <TextSpan>[
                TextSpan(text: time, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          hasBadge
              ? Badge(
                  padding: EdgeInsets.all(5),
                  badgeColor: Color(0XFF69BDCC),
                  badgeContent: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : Container(
                  child: Text(''),
                )
        ],
      ),
    );
  }
}
