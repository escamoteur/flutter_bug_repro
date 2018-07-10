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
                        EventInfoBlock(title: "Block1", children: <Widget>[

                        
                        Text('SomeText'),
                        Text('SomeText'),
                        Text('SomeText'),
                        Text('SomeText'),
                        Text('SomeText'),
                        ]),
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

class EventInfoBlock extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const EventInfoBlock({
    Key key,
    this.title,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [
      Text(
        title,
        style: Theme.of(context).textTheme.caption,
      ),
      SizedBox(
        height: 10.0,
      ),
      Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ))
    ];

    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.all(15.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: rows,
      ),
    );
  }
}