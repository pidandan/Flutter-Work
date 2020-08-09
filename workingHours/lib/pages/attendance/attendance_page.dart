import 'package:flutter/material.dart';
import './attendance_header.dart';
import './attendance_work.dart';
// 考勤主页
class AttendancePage extends StatefulWidget {
  AttendancePage({Key key}) : super(key: key);

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '考勤信息',
            style:TextStyle(color:Colors.white) ,
            ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
              AttendanceHeader(),
              AttendanceWork(),
          ],
        ),
      )
    );
  }
}