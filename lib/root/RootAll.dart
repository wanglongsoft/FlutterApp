
import 'package:flutter/material.dart';
import 'package:flutter_app/page/FirstRoute.dart';
import 'package:flutter_app/page/SecondRoute.dart';

final routes = {
  'main_page' : (context) => FirstRoute(),
  'second_page' : (context, {arguments}) => SecondRoute(argument:arguments),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};