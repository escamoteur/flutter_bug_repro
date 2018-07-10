import 'package:flutter/material.dart';
import 'package:flutter_bug_repro/row_stretch.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: new RowStretch(),
    );
  }
}

