import 'package:flutter/material.dart';
import './work_office.dart';
import './work_manage.dart';
import '../public/color_help.dart';

class WorkPage extends StatefulWidget {
  WorkPage({Key key}) : super(key: key);

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '工作中心',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: HepColor("#7575F9"),
        ),
        body: Container(
          color: Colors.grey[200],
          child: ListView(
            children: <Widget>[WorkOffice(), WorkManage()],
          ),
        ));
  }
}
