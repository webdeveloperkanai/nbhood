import 'package:flutter/material.dart';
import 'exporter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 82, 82, 82),
        ),
        appBarTheme: const AppBarTheme(
            elevation: 1,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black),
      ),
      home: HomeScreen(uid: 1),
    );
  }
}
