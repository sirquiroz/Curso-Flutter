import 'package:flutter/material.dart';
import 'package:layout/widgets/title.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'Llamar'),
          _buildButtonColumn(color, Icons.near_me, 'Enviar'),
          _buildButtonColumn(color, Icons.share, 'Compartir'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.network(
              'https://picsum.photos/250?image=9',
              fit: BoxFit.cover,
              width: 600,
              height: 240,
            ),
            /*Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),*/
            const MyTitle(),
            buttonSection,
            _textSection(),
            const Placeholder(
              fallbackHeight: 80,
            ),
          ],
        ),
      ),
    );
  }

  /*
  Widget _body() {
      return Column(
        children: <Widget>[
          _categorySelector(),
          _titleValue(),
          _detalle(),
          _submit(),
        ],
      );
    }
     Widget _categorySelector() => Placeholder(
      //fallbackHeight: 80,
      );
    */
  _textSection() => Container(
        padding: const EdgeInsets.all(32),
        child: const Text(
          'El Sistema PC LABORATORIOS es la solución '
          'completa para los Laboratorios Estatales '
          'desarrollada por PROFESIONALES EN '
          'COMPUTACIÓN, y que le facilita gestionar '
          'toda la información de su laboratorio en todo el '
          'proceso. El sistema se desplegó desde el 2008.',
          softWrap: true,
        ),
      );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
