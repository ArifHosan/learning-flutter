// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_learning_1/randomWords.dat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(primaryColor: Colors.tealAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Collection of Simple Flutter Elemenets'),
        ),
        body: Center(
//          child: RandomWords(),
          child: HomePage(),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/random-words': (BuildContext context) =>
            commonNavigator('random-words')
      },
    );
  }

  commonNavigator(name) {
    var childObject;
    if (name == "random-words") childObject = RandomWords();
    return Scaffold(
      body: Center(
        child: childObject,
      ),
    );
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Center(
              child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.pushNamed(context, '/random-words');
                  },
                  child: Text('Random Words Generator')))
        ],
      )),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}
