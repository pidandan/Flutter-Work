import 'package:flutter/material.dart';
import './mine_info.dart';
import './mine_operate.dart';
import '../public/color_help.dart';
class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: Text(
            '工作中心',
            style:TextStyle(color:Colors.white) ,
            ),
          centerTitle: true,
           backgroundColor: HepColor("#7575F9"),
          ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            MineInfo(),
            MineOperate()
          ],
        ),
      ),
    );
  }
}
