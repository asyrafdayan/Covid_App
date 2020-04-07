import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {

  final String title;
  final String info;
  final Color cardColor;

  const InfoCard(this.title, this.info, this.cardColor);

  @override
  Widget build(BuildContext context) {

    double _screenWidth = MediaQuery.of(context).size.width;

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
        width: _screenWidth,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 6.0, color: cardColor)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.arrow_upward, color: Colors.red, size: 15,),
                        Text('2')
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(info,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
            )
          ],
        ),
      ),
    );
  }
}