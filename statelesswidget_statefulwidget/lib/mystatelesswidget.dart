import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);
  int _counter = 0;
  void _incrementCounter() {
    _counter++;
    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My State less Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*
            const Placeholder(
              fallbackHeight: 200,
            ),
            */
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
