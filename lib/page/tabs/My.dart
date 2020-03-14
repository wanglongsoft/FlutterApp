import 'package:flutter/material.dart';
import 'package:flutter_app/data/list_dart.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  Widget _getListData(context, index){
    return ListTile(
        title: Text(listData[index]["title"]),
        leading:Image.asset(listData[index]["image"]),
        subtitle:Text(listData[index]["subtitle"]),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:listData.length,
        itemBuilder:this._getListData);
  }
}