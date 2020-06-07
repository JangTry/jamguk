import 'package:flutter/material.dart';
import 'package:practice_wordlist/Widget/divider.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class WordListScreen extends StatelessWidget{
  List<FileSystemEntity> contentsName;
  final dir = Directory("setupData/contents");
  WordListScreen(){

    contentsName = dir.listSync(recursive: true,followLinks: false);
    print(contentsName);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          AppBar(
            elevation: 2,
            title: Text("단어목록", style: TextStyle(color: Colors.lightBlueAccent),),
          ),
          Expanded(
            child:
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                MyDivider(text: "고전어휘",folding: false),
                makeWordTile("gojunword"),
                MyDivider(text: "고전시가 해설",folding: false),
                makeWordTile("gojunsiga_interpreting"),
                MyDivider(text: "그 외",folding: false),
                makeWordTile("etc")
              ],
            )
          )
        ],
      )
    );
  }
}

Future<String> get _localPath async{
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}
Future<File> _localFile(String fineName) async{
  final path = await _localPath;
  return File('$path/$fineName');
}
Widget makeWordTile(String kind){


  return GridView.count(
    padding: EdgeInsets.symmetric(vertical:5,horizontal: 5),
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    shrinkWrap: true,
    children: new List<Widget>.generate(4, (index) {
      return new GridTile(
        child: new Card(
          margin: EdgeInsets.symmetric(vertical: 7,horizontal: 7),
          elevation: 5,
            color: Colors.blue.shade200,
            child: new Center(
              child: new Text('tile $index'),
            )
        ),
      );
    }),
  );
}
