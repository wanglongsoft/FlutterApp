
import 'package:flutter/material.dart';
import 'package:flutter_app/data/list_dart.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  Widget _updateListData(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              cardData[index]["image"],
              fit: BoxFit.cover,),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(cardData[index]["headimage"]),
            ),
            title: Text(cardData[index]["title"]),
            subtitle: Text(cardData[index]["subtitle"]),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cardData.length,
        itemBuilder: _updateListData);
  }
}