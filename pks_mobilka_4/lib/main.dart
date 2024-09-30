import 'package:flutter/material.dart';
import 'package:pks_mobilka_4/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
        secondary: Color.fromARGB(255, 0, 0, 0), primary: Color.fromRGBO(0, 0, 0, 1)),
        useMaterial3: true,
      ),
      home: const HomePage()
    );
  }
}