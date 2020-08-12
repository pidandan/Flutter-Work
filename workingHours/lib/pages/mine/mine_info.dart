import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MineInfo extends StatefulWidget {
  MineInfo({Key key}) : super(key: key);

  @override
  _MineInfoState createState() => _MineInfoState();
}

class _MineInfoState extends State<MineInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: ScreenUtil().setHeight(260),
                width: ScreenUtil().setWidth(750),
                color: Colors.indigo,
              ),
              _topPositionWidget(),
              _topImagePositionWidget()
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                height: ScreenUtil().setHeight(240),
                width: ScreenUtil().setWidth(750),
              ),
              _bottomPositionWidget()
            ],
          )
        ],
      ),
    );
  }

  // 顶部浮动框
  Widget _topPositionWidget() {
    return Positioned(
      left: 22,
      bottom: 0,
      child: Container(
        height: ScreenUtil().setHeight(120),
        width: ScreenUtil().setWidth(660),
        color: Colors.white,
        alignment: Alignment.bottomCenter,
        child: Text(
          "张三丰",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  // 顶部个人头像浮动
  Widget _topImagePositionWidget() {
    return Positioned(
      left: 124,
      right: 124,
      top: 12,
      child: Container(
        height: ScreenUtil().setHeight(160),
        child: Icon(
          Icons.computer,
          size: 44,
        ),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.indigo[200]),
      ),
    );
  }

  // 底部浮动
  Widget _bottomPositionWidget() {
    return Positioned(
        left: 22,
        top: 0,
        child: Container(
            height: ScreenUtil().setHeight(200),
            width: ScreenUtil().setWidth(660),
            color: Colors.white,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: ScreenUtil().setHeight(130),
                  width: ScreenUtil().setWidth(130),
                  color: Colors.red,
                ),
                Container(
                  height: ScreenUtil().setHeight(130),
                  width: ScreenUtil().setWidth(130),
                  color: Colors.blue,
                ),
                Container(
                  height: ScreenUtil().setHeight(130),
                  width: ScreenUtil().setWidth(130),
                  color: Colors.yellow,
                ),
              ],
            )));
  }
}
