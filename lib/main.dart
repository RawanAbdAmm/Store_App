import 'package:flutter/material.dart';
import 'package:using_postman/screens/home_page.dart';
import 'package:using_postman/screens/updateproduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) =>const HomePage(),
        UpdateProductPage.id:(context)=> UpdateProductPage(),
      },
    );
  }
}
