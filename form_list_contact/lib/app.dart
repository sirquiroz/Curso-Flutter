import 'package:flutter/material.dart';
import 'package:form_list_contact/pages/form_register.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => FormRegister(),
        //"/list":(context) => ListRegistro()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
