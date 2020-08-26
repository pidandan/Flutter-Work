import 'package:flutter/material.dart';

import "../pages/index_page.dart";
import "../pages/newsDetail/detail_page.dart";

//配置路由
final routes = {
  '/': (context) => IndexPage(),
  '/news_detail': (context, {arguments}) => NewsDetail(arguments: arguments),
};
//固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String routeName = settings.name;
  print("Open page: $routeName");

  final Function pageContentBuilder = routes[routeName];
  print("Open pageContentBuilder: $pageContentBuilder");
  // 对路由进行区分 
  if (pageContentBuilder != null) {
    // 路由传递参数
    if (settings.arguments != null) {
      return MaterialPageRoute<dynamic>(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
    } else {
      // 路由不传递参数
      return MaterialPageRoute<dynamic>(
          builder: (context) => pageContentBuilder(context));
    }
  }else{
    // 找不到路由
    return MaterialPageRoute(builder: (BuildContext context) {
        return Scaffold(
            body: Center(
          child: Text("Page not found"),
        ));
      });
  }
};
