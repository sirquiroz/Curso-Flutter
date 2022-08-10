import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:statelesswidget_statefulwidget/mystatefulwidget.dart';
import 'package:statelesswidget_statefulwidget/mystatelesswidget.dart';

//void main() => runApp(const MyApp());
void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyStateFulWidget(title: 'Flutter Demo Home Page'),
      home: MyStatelessWidget(),
      //home: MyStateFulWidget(),
    );
  }
}
