import 'package:flutter/material.dart';
import 'package:my_covid/widgets/info_card.dart';
import 'package:my_covid/charts/line_chart.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: InfoCard('Recent Cases', '3793', Colors.blue, null)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InfoCard('Discharges', '236', Colors.lightGreen, _screenWidth / 2))),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InfoCard('Deaths', '1', Colors.red, _screenWidth / 2)))
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                height: 300.0,
                child: CovidLineChart(),
              )
            ],
          ),
        ),
      ),
    );
  }
}