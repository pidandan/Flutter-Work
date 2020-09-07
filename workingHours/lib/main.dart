import 'package:flutter/material.dart';
import './routes/route.dart';

void main() {
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '工时管理',
      theme: ThemeData(primarySwatch: Colors.indigo),
      //名为"/"的路由作为应用的home(首页)
      initialRoute: "/", 
      //引入剩余的路由文件信息
      onGenerateRoute: onGenerateRoute
    );
  }
}
