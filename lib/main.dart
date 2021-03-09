import 'package:flutter/material.dart';

import 'pages/dice_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Play',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        brightness: Brightness.dark,
        canvasColor: Colors.black
      ),
      home:  Dice(),
    );
  }
}
