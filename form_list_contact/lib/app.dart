import 'package:flutter/material.dart';
import 'package:form_list_contact/pages/form_register.dart';
import 'package:form_list_contact/pages/list_contact.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => FormRegister(),
        //"/list": (context) => ListContact()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.amber,
      ),
    );
  }
}
