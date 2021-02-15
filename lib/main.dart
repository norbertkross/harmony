import 'package:flutter/material.dart';
import 'package:harmony/harmonyBody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      themeMode:ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        ), 

      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HarmonyBody(),
    );
  }
}
