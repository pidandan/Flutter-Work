import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:provider/provider.dart';
import './store/attendance_provider.dart';
import './store/counter.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => AttendanceProvider())
      ],
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
      home: IndexPage(),
    );
  }
}
