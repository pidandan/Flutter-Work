import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
class AttendanceProvider with ChangeNotifier{
  String _nowTimeInfo ="no time";
  String _nowWeekInfo =" ";
  // 定时信息
  Timer _timer;

 String get nowTimeInfo =>_nowTimeInfo;
 String  get nowWeekInfo =>_nowWeekInfo;


   // 获取时间
  void getNowTimeInfo() {
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
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
      _nowTimeInfo = yearInfo + "-"+ monthInfo + "-" + dayInfo + "-" + hourInfo + "-"+ minuteInfo;
      _nowWeekInfo = weekInfo;
    });
      notifyListeners();
  }

    // 获取时间
  void deleteTimeInfo() {
     _timer.cancel();
      notifyListeners();
  }
}