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
    );
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
            color: Colors.lightBlue,
            onPressed: randomWordNavigator,
            child: Text('Random Words Generator')),
      ),
    );
  }

  void randomWordNavigator() {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
        body: Center(
          child: RandomWords(),
        ),
      );
    }));
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}
