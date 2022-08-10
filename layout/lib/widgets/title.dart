import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          //Se expande al maximo la fila
          //Lectura opcional: https://www.youtube.com/watch?v=-CBKW-90VxQ
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Equipos De Escritorio Pc',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Computadoras En Combo Core I3 I5',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star_half,
            color: Colors.red[500],
          ),
          const Text('4.1'),
        ],
      ),
    );
  }
}
