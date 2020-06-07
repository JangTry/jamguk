import 'package:flutter/material.dart';

class Bottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        height: 60,
        child: TabBar(
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.black.withOpacity(0.7),
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              child: Text("단어목록",style: TextStyle(fontSize: 10),),
              icon: Icon(Icons.apps),
            ),
            Tab(
              child: Text("문제풀기",style: TextStyle(fontSize: 10),),
              icon: Icon(Icons.edit),
            ),
            Tab(
              child: Text("더 보기",style: TextStyle(fontSize: 10),textAlign: TextAlign.center),
              icon: Icon(Icons.more_horiz),
            ),
            Tab(
              child: Text("설정",style: TextStyle(fontSize: 10),),
              icon: Icon(Icons.settings),
            ),
          ],

        )
    );
  }
}