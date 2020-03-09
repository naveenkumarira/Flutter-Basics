
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(
      appBar: AppBar(title: Text("Flutter Workshop")),
      body: Column(children: <Widget>[Text("Child 1"), Text("Child 2")],),
    ));
  }
}
