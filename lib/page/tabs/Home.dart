
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              child: Text("进入词条"),
              color: Color.fromRGBO(72, 138, 247, 1),
              highlightColor: Colors.lightBlueAccent,
              textColor: Colors.white,
              elevation: 30,
              highlightElevation: 50,
              onPressed: () {

              },
            ),
          ),
          SizedBox(height: 10),
          FlatButton(
            child: Text("FlatButton"),
            color: Colors.green,
            highlightColor: Colors.lightBlueAccent,
            textColor: Colors.white,
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext dialogContext) {
                  return SimpleDialog(
                    title: Text("请选择喜欢的应用？"),
                    children: <Widget>[
                      SimpleDialogOption(
                        child: Text("快手"),
                        onPressed: () {
                          Navigator.of(dialogContext)
                              .pop();
                        },
                      ),
                      SimpleDialogOption(
                        child: Text("微信"),
                        onPressed: () {
                          Navigator.of(dialogContext)
                              .pop();
                        },
                      ),
                      SimpleDialogOption(
                        child: Text("腾讯视频"),
                        onPressed: () {
                          Navigator.of(dialogContext)
                              .pop();
                        },
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          OutlineButton.icon(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  // false = user must tap button, true = tap outside dialog
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      title: Text('提示'),
                      content: Text('您确定要删除当前文件吗?'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('取消'),
                          onPressed: () {
                            Navigator.of(dialogContext)
                                .pop(); // Dismiss alert dialog
                          },
                        ),
                        FlatButton(
                          child: Text('删除'),
                          onPressed: () {
                            Navigator.of(dialogContext)
                                .pop(); // Dismiss alert dialog
                          },
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.add),
              label: Text("添加")),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "用户名",
              border: OutlineInputBorder(),
            ),
          )
        ],
      ),
    );
  }
}