import 'package:flutter/material.dart';

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);
  //const MyStateFulWidget({super.key, required this.title});
  // final String title;
  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  @override
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(widget.title),
        title: Text("My State Ful Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementa',
        child: const Icon(Icons.add),
      ),
    );
  }
}
