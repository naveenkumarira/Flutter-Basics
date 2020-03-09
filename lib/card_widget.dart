
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {

  final String pageTitle;

    CardWidget({
    @required this.pageTitle
    });

  @override
  _CardWidgetState createState() => _CardWidgetState(pageTitle: pageTitle);
}

class _CardWidgetState extends State<CardWidget> {

  final String pageTitle;

  _CardWidgetState({
    @required this.pageTitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(
      appBar: AppBar(title: Text(pageTitle)),
      body: Column(children: <Widget>[Text("Child 1"), Text("Child 2")],),
    ));
  }
}

//Ref: Reusable widgets: https://itnext.io/building-your-first-reusable-widget-with-flutter-cadb54c3c253