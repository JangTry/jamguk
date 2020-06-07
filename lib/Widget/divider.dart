import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatefulWidget{
  String text;
  bool folding;
  MyDivider({this.text,this.folding});
  _MyDividerState createState() => _MyDividerState();
}

class _MyDividerState extends State<MyDivider>{
  @override
  String text;
  bool folding;
  void initState() {
    // TODO: implement initState
    super.initState();
    text=widget.text;
    folding = widget.folding;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.lightBlue.withOpacity(0.1), //범위 확인용
      child: Row(
        children: <Widget>[
          Container(
            width: 15,
            child:Divider(color: Colors.black54,endIndent: 5,),
          ),
          Text(text),
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 3),
            icon: folding
            ?Icon(Icons.keyboard_arrow_down, color: Colors.black54,)
            :Icon(Icons.keyboard_arrow_up, color: Colors.black54,),
//            onPressed: ,  이거 처리 어떻게 하지.. 꼭 해야하나?
          ),
          Expanded(
            child:Divider(color: Colors.black54,),
          ),
//          Container(
//            width: 10,
//            child: Divider(color: Colors.black54,),
//          )
        ],
      )
    );
  }
}