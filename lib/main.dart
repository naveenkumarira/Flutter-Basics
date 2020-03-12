import 'package:flutter/material.dart';
import 'package:flutterworkshop/card_widget.dart';
import 'package:flutterworkshop/count_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
               primarySwatch: Colors.blue,
      ),
      home: CountWidget(defaultValue: 1, onChange: (v) => {
        print(v)
      }),
    );
  }
}



//home: CardWidget(pageTitle: "Flutter Workshop", onChange: (e)=>{
//        print(e)
//      },),

