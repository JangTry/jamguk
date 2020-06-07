import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_wordlist/Screen/WordListScreen.dart';
import 'package:practice_wordlist/Widget/bottom.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '잠금화면 수능어휘',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[
                WordListScreen(),
//              QuizScreen(),
//              MoreScreen(),
//              SettingScreen(),
            Container(
              child: Center(
                child: Text("Quiz"),
              ),
            ),
            Container(
              child: Center(
                child: Text("More"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Setting"),
              ),
            ),
            ],
          )
          ,
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
