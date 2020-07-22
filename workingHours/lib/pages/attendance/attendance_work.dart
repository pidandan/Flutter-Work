import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// 考勤功能区
class AttendanceWork extends StatelessWidget {
  const AttendanceWork({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(500),
      width: ScreenUtil().setWidth(750),
      child: Column(
        children: <Widget>[_topInfo(), _bottomInfo()],
      ),
    );
  }

  // 上部分显示内容
  Widget _topInfo() {
    return Container(
      height: ScreenUtil().setHeight(210),
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () => _moduleOnTap('0'),
            child: Container(
              height: ScreenUtil().setHeight(210),
              width: ScreenUtil().setWidth(340),
              margin: EdgeInsets.only(right: 5),
              child: Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: ScreenUtil().setWidth(120),
                      height: ScreenUtil().setHeight(210),
                      child: Icon(
                        Icons.pin_drop,
                        color: Colors.blue[300],
                        size: 40,
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(200),
                      height: ScreenUtil().setHeight(210),
                      child: Text(
                        '打卡记录',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _moduleOnTap('1'),
            child: Container(
              height: ScreenUtil().setHeight(210),
              width: ScreenUtil().setWidth(340),
              margin: EdgeInsets.only(left: 5),
              child: Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: ScreenUtil().setWidth(120),
                      height: ScreenUtil().setHeight(210),
                      child: Icon(
                        Icons.flip_to_back,
                        color: Colors.yellow[300],
                        size: 40,
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(200),
                      height: ScreenUtil().setHeight(210),
                      child: Text(
                        '考勤详情',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // 下部分显示内容
  Widget _bottomInfo() {
    return Container(
      height: ScreenUtil().setHeight(210),
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () => _moduleOnTap('2'),
            child: Container(
              height: ScreenUtil().setHeight(210),
              width: ScreenUtil().setWidth(340),
              margin: EdgeInsets.only(right: 5),
              child: Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: ScreenUtil().setWidth(120),
                      height: ScreenUtil().setHeight(210),
                      child: Icon(
                        Icons.trending_up,
                        color: Colors.red[200],
                        size: 40,
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(200),
                      height: ScreenUtil().setHeight(210),
                      child: Text(
                        '考勤统计',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _moduleOnTap('3'),
            child: Container(
              height: ScreenUtil().setHeight(210),
              width: ScreenUtil().setWidth(340),
              margin: EdgeInsets.only(left: 5),
              child: Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: ScreenUtil().setWidth(120),
                      height: ScreenUtil().setHeight(210),
                      child: Icon(
                        Icons.personal_video,
                        color: Colors.green[300],
                        size: 38,
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(200),
                      height: ScreenUtil().setHeight(210),
                      child: Text(
                        '排班信息',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // 模块点击事件 flag为模块标识 0--打卡记录  1--考勤详情 2--考勤统计  3--排班信息
  _moduleOnTap(String flag) {
    switch (flag) {
      case '0':
        break;

      case '1':
        break;

      case '2':
        break;

      case '3':
        break;
    }
  }
}
