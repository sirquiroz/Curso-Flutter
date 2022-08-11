import 'package:flutter/material.dart';
import 'package:navigation_pages/pages/first_page.dart';
import 'package:navigation_pages/pages/second_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes: {        
          "/":(context) => FirtsPage(),
          "/second":(context) => SecondPage(),
        },
        
        //no trabaja en modo desarrollo
        debugShowCheckedModeBanner: false,       
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
    );
    
  }
}