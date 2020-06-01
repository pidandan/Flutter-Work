import 'package:flutter/material.dart';
class WorkPage extends StatefulWidget {
  WorkPage({Key key}) : super(key: key);

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('工作中心')),
      body: Container(
        child: Text('工作中心内容'),
      ),
    );
  }
}