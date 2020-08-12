import 'package:flutter/material.dart';
import './mine_info.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的')),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            MineInfo(),
          ],
        ),
      ),
    );
  }
}
