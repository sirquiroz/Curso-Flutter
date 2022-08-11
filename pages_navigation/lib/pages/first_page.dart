import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_pages/pages/second_page.dart';

//Pagina 1
class FirtsPage extends StatelessWidget {
  const FirtsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi primera Ventana"),
      ),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const Text("Hola desde pagina 1"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/second");
                /*Navigator.push(context, 
                  CupertinoPageRoute(
                    builder: (context)=>   const SecondPage()
                  )
                );*/
              },
              child: const Text("Ir Pag2"),
            ),
            const SizedBox(height: 20),
            const ElevatedButton(
              onPressed: null,
              child: Text("Ir Pag3"),
            ),
          ],
        ),
      ),
    );
  }
}
