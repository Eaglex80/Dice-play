import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  Dice({Key key, this.title}) : super(key: key);

  final String title;

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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title,
            style: TextStyle(
              fontSize: _width / 12,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.all(8),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'You Got  -  ${_randomNumber + _randomNumber2}',
                            style: TextStyle(
                                color: Colors.black, fontSize: _width / 15),
                          ),
                        ),
                        ElevatedButton(
                          // co: Colors.orange,
                          // padding: EdgeInsets.all(20),
                          child: Text('Tap To Repeat'),
                          onPressed: _randomCounter,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
