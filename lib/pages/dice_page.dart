import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int _randomNumber = 1;
  int _randomNumber2 = 6;

  void _randomCounter() {
    setState(() {
      var random = Random();
      _randomNumber = random.nextInt(6) + 1;
      _randomNumber2 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('DICE PLAY',
                style: TextStyle(
                  fontSize: _width / 12,
                )),
            SizedBox(height: 20),
            Card(
              color: Colors.white,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    color: Colors.grey[300],
                    elevation: 0,
                    margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/$_randomNumber.png',
                              width: _width / 2,
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/$_randomNumber2.png',
                              width: _width / 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'You Got  :  ${_randomNumber + _randomNumber2}',
                      style:
                          TextStyle(color: Colors.black, fontSize: _width / 15),
                    ),
                  ),
                  Container(
                    width: _width,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('Tap To Repeat'),
                      onPressed: _randomCounter,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
