import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Pagina 2
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Segunda Ventana"),
      ),
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const Text("Hola desde pagina 2"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Ir Pag1"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.pushNamed(context, "/");
          Navigator.pop(context);
        },
        tooltip: "Regresar",
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
