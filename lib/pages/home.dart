import 'package:flutter/material.dart';
import 'package:my_covid/widgets/info_card.dart';
import 'package:charts_flutter/flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5.0),
              child: InfoCard('Recent Cases', '3793', Colors.blue)),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: InfoCard('Recent Discharges', '236', Colors.lightGreen)),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: InfoCard('Recent Death', '1', Colors.red)),
          ],
        ),
      ),
    );
  }
}