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
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.grey[900],
        brightness: Brightness.dark,
      ),
      home:  Dice(title: 'Dice Play'),
    );
  }
}
