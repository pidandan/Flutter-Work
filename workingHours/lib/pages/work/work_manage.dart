import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkManage extends StatefulWidget {
  WorkManage({Key key}) : super(key: key);

  @override
  _WorkManageState createState() => _WorkManageState();
}

class _WorkManageState extends State<WorkManage> {
  List officeList = [];
  @override
  void initState() {
    super.initState();
    officeList = [
      {
        "title": "员工管理",
        "icon": Icons.group_add,
        "iconSize": 38.0,
        "iconColor": Colors.greenAccent[100],
      },
      {
        "title": "设备管理",
        "icon": Icons.laptop_mac,
        "iconSize": 38.0,
        "iconColor": Colors.blueAccent[100],
      },
      {
        "title": "打卡地点",
        "icon": Icons.person_pin_circle,
        "iconSize": 38.0,
        "iconColor": Colors.redAccent[200],
      },
      {
        "title": "办公WIFI",
        "icon": Icons.signal_wifi_4_bar_lock,
        "iconSize": 36.0,
        "iconColor": Colors.pinkAccent[100],
      }
    ];
  }

  // 移动办公子项 通过for循环来展示每个功能块
  List<Widget> _buildGrid() {
    List<Widget> tiles = [];
    for (var item in officeList) {
      tiles.add(_officeItem(item));
    }
    return tiles;
  }

  // 移动办公每个子项的UI显示
  Widget _officeItem(item) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              height: ScreenUtil().setHeight(120),
              alignment: Alignment.center,
              child: Icon(
                item['icon'],
                size: item['iconSize'],
                color: item['iconColor'],
              )),
          Container(
            height: ScreenUtil().setHeight(70),
            child: Text(item['title']),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(340),
      width: ScreenUtil().setWidth(750),
      child: Column(
        children: <Widget>[_titleWidge(), _officeInfoWidger()],
      ),
    );
  }

// 标题
  Widget _titleWidge() {
    return Container(
      height: ScreenUtil().setHeight(80),
      width: ScreenUtil().setWidth(750),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10.0),
      child: Text('企业管理'),
    );
  }

  // 移动办公 采用网格布局
  Widget _officeInfoWidger() {
    return Container(
      height: ScreenUtil().setHeight(240),
      width: ScreenUtil().setWidth(750),
      padding: EdgeInsets.only(top: 6.0),
      color: Colors.white,
      child: GridView(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 4, mainAxisSpacing: 4),
        children: _buildGrid(),
      ),
    );
  }
}
