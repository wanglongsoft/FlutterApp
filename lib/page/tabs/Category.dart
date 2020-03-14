import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30,),
        Container(
          width: double.infinity,
          height: 30,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "请输入姓名"
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              FlatButton(
                color: Colors.green,
                child: Text("登录"),
                onPressed: () {

                },
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 150,
          height: 50,
          child: FlatButton(
            color: Colors.green,
            child: Text("搜索"),
            onPressed: () {

            },
          ),
        )
      ],
    );
  }
}