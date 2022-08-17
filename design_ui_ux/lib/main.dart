import 'package:ejemplo_ui_ux/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

////https://www.youtube.com/watch?v=-Zmw0VasN0c&list=PLV0nOzdUS5XtEcpFN5yH9LoVKfmgOFgU0&index=6
//https://www.youtube.com/watch?v=C5G-CvqNi1s&list=PLntQ_VE6-lYCz2DXgVpd7yNm3opgM-mH-
//https://rubenjromo.com/flutter-arquitectura-limpia-14-interfaz-del-usuario/
//https://medium.com/comunidad-flutter/como-ver-los-bordes-de-dise%C3%B1o-en-flutter-f06b0b0ec768
void main() {
  //Ver el mapa de paint de la pantalla
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

Para revisar y terminar el proyecto

https://editor.method.ac/
https://undraw.co/search
https://www.flaticon.com/packs?order_by=4


para seguir la guia
https://www.youtube.com/watch?v=-Zmw0VasN0c&list=PLV0nOzdUS5XtEcpFN5yH9LoVKfmgOFgU0&index=11




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
