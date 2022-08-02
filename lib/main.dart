import 'package:flutter/material.dart';
import 'package:navigation/select_colors.dart';
import 'package:navigation/shades_page.dart';
import 'package:navigation/shades_with_params.dart';
import 'home_page.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'yo'),
      routes: {
        '/shades_page':(context) => ShadeswithParams(),
        '/color_picker':(context) => SelectColors(),
      },
    );
  }
}

/////////////////////////////////////////////////////////////

