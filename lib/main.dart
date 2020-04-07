import 'package:flutter/material.dart';
import 'package:my_covid/pages/home.dart';
import 'package:syncfusion_flutter_core/core.dart';

void main() {
  SyncfusionLicense.registerLicense('@31382e312e30k1Rs00jdCHEZh9ktfpoVOtsfpI/Bj8mIGF7aiMTMaI8=');
  return runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}