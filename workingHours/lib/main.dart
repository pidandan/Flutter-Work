import 'package:flutter/material.dart';
// import './pages/index_page.dart';
import 'package:provider/provider.dart';
import './store/counter.dart';
// import './pages/newsDetail/detail_page.dart';
import './routes/route.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Counter())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '工时管理',
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: "/", //名为"/"的路由作为应用的home(首页)
      onGenerateRoute: onGenerateRoute
    //  home: IndexPage(),
    );
  }
}
