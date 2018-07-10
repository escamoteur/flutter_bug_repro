import 'package:flutter/material.dart';

class RowStretch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text("Event Details"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: const Color(0xffE5E5E5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Heder'),
                SizedBox(
                  height: 10.0,
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 5.0),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('SomeText'),
                        Text('SomeText'),
                        Text('SomeText'),
                        Text('SomeText'),
                        Text('SomeText'),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
