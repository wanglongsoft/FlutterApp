
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {

  final Map argument;
  SecondRoute({this.argument});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second route"),
      ),
      body: Center(
        child: FlatButton.icon(
          icon: Icon(Icons.swap_horizontal_circle),
          label: Text("Page"),
          onPressed: () {
            print(argument);
            Navigator.of(context).pop();
          },
        )
      ),
    );
  }
}