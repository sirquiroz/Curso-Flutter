import 'package:flutter/material.dart';

// https://www.tldevtech.com/flutter-placeholder-widget-examples/
class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Placeholder(
                  color: Colors.red, fallbackHeight: 150, strokeWidth: 5),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  const Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Placeholder(color: Colors.blue, strokeWidth: 5),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: const Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Placeholder(color: Colors.blue, strokeWidth: 5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 150,
                child: const Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Placeholder(color: Colors.green, strokeWidth: 5),
                )),
          ],
        ),
      ),
    );
  }
}
