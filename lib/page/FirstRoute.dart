import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/page/tabs/Category.dart';
import 'package:flutter_app/page/tabs/Home.dart';
import 'package:flutter_app/page/tabs/My.dart';
import 'package:flutter_app/page/tabs/Setting.dart';

class FirstRoute extends StatefulWidget {
  FirstRoute({Key key}) : super(key: key);

  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  int _currentIndex = 0;
  final List tab_item = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    MyPage(),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,//AppBar影响状态栏字体颜色，目前设置状态栏颜色为深色
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("关注"),
            onPressed: () {

            },
          ),
          FlatButton(
            child: Text("发现"),
            onPressed: () {

            },
          ),
          FlatButton(
            child: Text("同城"),
            onPressed: () {

            },
          ),
          SizedBox(width: 5,),
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.person_outline),
            onPressed: () {

            },
          )
        ],
      ),
      body: tab_item[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 35.0,
        //icon的大小
        fixedColor: Colors.green,
        //选中的颜色
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("设置")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text("我的"))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: DrawerHeader(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text("个人中心"),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/persion_one.jpeg"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.home, color: Colors.white,)
              ),
              title: Text("我的空间"),
              onTap: () {
                Navigator.pushNamed(context, "second_page");
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.settings, color: Colors.white,)
              ),
              title: Text("设置中心"),
              onTap: () {
                Navigator.of(context).pop();//隐藏Drawer
                Navigator.pushNamed(context, "second_page");
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
