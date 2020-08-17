import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../public/color_help.dart';

class MineInfo extends StatefulWidget {
  MineInfo({Key key}) : super(key: key);

  @override
  _MineInfoState createState() => _MineInfoState();
}

class _MineInfoState extends State<MineInfo> {
  List minTagList = [];
  @override
  void initState() {
    super.initState();
    minTagList = [
      {"id": 0, "tagName": "动态", "type": 0},
      {"id": 1, "tagName": "公告", "type": 1},
      {"id": 2, "tagName": "使用帮助", "type": 2}
    ];
  }

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
                color: HepColor("#7575F9"),
              ),
              _topPositionWidget(),
              _topImagePositionWidget()
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                height: ScreenUtil().setHeight(280),
                width: ScreenUtil().setWidth(750),
              ),
              _bottomPositionWidget()
            ],
          )
        ],
      ),
    );
  }

  // 顶部背景浮动框
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
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  // 顶部个人头像浮动
  Widget _topImagePositionWidget() {
    return Positioned(
      left: 124,
      right: 124,
      top: 16,
      child: Container(
        height: ScreenUtil().setHeight(160),
        width: ScreenUtil().setWidth(160),
        child: Image.asset(
          'images/touxiang.png'
        ),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.indigo[200]),
      ),
    );
  }

  // 底部功能菜单浮动框：动态  公告  使用帮助
  Widget _bottomPositionWidget() {
    return Positioned(
        left: 22,
        top: 0,
        child: Container(
            height: ScreenUtil().setHeight(240),
            width: ScreenUtil().setWidth(660),
            color: Colors.white,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _buildTag(),
            )));
  }

  // 通过遍历展示具体的功能菜单
  List<Widget> _buildTag() {
    List<Widget> result = [];
    for (var item in minTagList) {
      result.add(Container(
        height: ScreenUtil().setHeight(170),
        width: ScreenUtil().setWidth(140),
        child: Column(
          children: <Widget>[
            Container(
              height: ScreenUtil().setHeight(100),
              width: ScreenUtil().setWidth(100),
              child: Icon(
                item['type'] == 0
                    ? Icons.dashboard
                    : item['type'] == 1 ? Icons.note : Icons.help,
                size: 28,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: HepColor("#7575F9")),
            ),
            Container(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(item['tagName']),
            )
          ],
        ),
      ));
    }
    return result;
  }
}
