import 'package:flutter/material.dart';

class CountWidget extends StatefulWidget {
  final int defaultValue;
  final ValueChanged<int> onChange;

  CountWidget({@required this.defaultValue, @required this.onChange});

  @override
  State<StatefulWidget> createState() => _CountState(defaultValue: defaultValue);
}

class _CountState extends State<CountWidget> {
  final int defaultValue;
  final ValueChanged<int> onChange;
  int count =0;

  _CountState({
  @required this.defaultValue,
    @required this.onChange
}) {
    count = defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    print("DEFAULT VALUE: $count");
    return Container(
        child: Scaffold(
      appBar: AppBar(title: Text("Count Task")),
      body: Row(
        children: <Widget>[
          RaisedButton(
            child: Text("Increment"),
            onPressed: () => increment(),
          ),
          Text("$count"),
          FlatButton(
            child: Text("Decrement"),
            onPressed: () => decrement(),
          )
        ],
      ),
    ));
  }

  void increment() {
    //print("Count inc: $count");
    setState(() {
      count = count + 1;
    //  print("Count inc: $count");
    });

    widget.onChange(count);
  }

  void decrement() {
    setState(() {
      count--;
    });

    widget.onChange(count);
  }
}
