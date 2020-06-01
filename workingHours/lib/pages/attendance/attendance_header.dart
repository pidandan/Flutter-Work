import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../store/attendance_provider.dart';
import 'package:provider/provider.dart';
import 'dart:async';

class AttendanceHeader extends StatefulWidget {
  AttendanceHeader({Key key}) : super(key: key);

  @override
  _AttendanceHeaderState createState() => _AttendanceHeaderState();
}

class _AttendanceHeaderState extends State<AttendanceHeader> {
  String _nowTimeInfo = "no time";
  String _nowWeekInfo = " ";
  // 定时信息
  Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    cancelTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[_imageWidget(), _nameWidget(), _showNowTime()],
    );
  }

  // 背景图片控件
  Widget _imageWidget() {
    return Container(
      height: ScreenUtil().setHeight(400),
      width: ScreenUtil().setWidth(750),
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.fill,
      ),
    );
  }

  // 公司名称
  Widget _nameWidget() {
    return Positioned(
        left: 10,
        top: 10,
        child: Container(
          child: Text(
            '啄木鸟科技有限公司',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ));
  }

  // 制作时间计时器显示当前的时间信息
  // Widget _nowTimeInfo() {
  //   return Consumer<AttendanceProvider>(
  //       builder: (context, AttendanceProvider attendanceProvider, _) {
  //     return Positioned(
  //         left: 10,
  //         top: 40,
  //         child: Container(
  //           child: Text(
  //             attendanceProvider.nowTimeInfo,
  //             style: TextStyle(
  //                 color: Colors.black54,
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.bold),
  //           ),
  //         ));
  //   });
  // }

  Widget _showNowTime() {
    return Positioned(
        left: 10,
        top: 40,
        child: Container(
          child: Text(
            _nowTimeInfo,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ));
  }

  // 定时器开启
  void startTimer() {
    //设置 1 秒回调一次
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      DateTime now = new DateTime.now();
      // 日
      String dayInfo = now.day.toString();
      // 月
      String monthInfo = now.month.toString();
      // 年
      String yearInfo = now.year.toString();
      // 时
      String hourInfo = now.hour.toString();
      // 分
      String minuteInfo = now.minute.toString();
      // 周
      String weekInfo = now.weekday.toString();
      //更新界面
      setState(() {
        _nowTimeInfo = yearInfo +
            "-" +
            monthInfo +
            "-" +
            dayInfo +
            hourInfo +
            ":" +
            minuteInfo;
        _nowWeekInfo = weekInfo;
      });
    });
  }

  // 清除定时器
  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }
}
