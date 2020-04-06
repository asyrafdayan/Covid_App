import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {

  final String title;
  final String info;

  const InfoCard(this.title, this.info);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero
        )
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 10.0, color: Colors.lightBlue.shade900)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              )),
            Text(info,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),)
          ],
        ),
      ),
    );
  }
}