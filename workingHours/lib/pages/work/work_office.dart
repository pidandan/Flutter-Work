import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkOffice extends StatefulWidget {
  WorkOffice({Key key}) : super(key: key);

  @override
  _WorkOfficeState createState() => _WorkOfficeState();
}

class _WorkOfficeState extends State<WorkOffice> {
  List officeList = [];
  @override
  void initState() {
    super.initState();
    officeList = [
      {
        "title": "审批申请",
        "icon": Icons.mode_edit,
        "iconSize": 38.0,
        "iconColor": Colors.cyanAccent[100],
      },
      {
        "title": "外勤申请",
        "icon": Icons.nature_people,
        "iconSize": 38.0,
        "iconColor": Colors.greenAccent[100],
      },
      {
        "title": "工作日志",
        "icon": Icons.event_available,
        "iconSize": 38.0,
        "iconColor": Colors.orangeAccent[100],
      },
      {
        "title": "公告",
        "icon": Icons.public,
        "iconSize": 38.0,
        "iconColor": Colors.pinkAccent[100],
      },
      {
        "title": "通讯录",
        "icon": Icons.mail_outline,
        "iconSize": 38.0,
        "iconColor": Colors.blue[200],
      },
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
      height: ScreenUtil().setHeight(500),
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
      child: Text('移动办公'),
    );
  }

  // 移动办公 采用网格布局
  Widget _officeInfoWidger() {
    return Container(
      height: ScreenUtil().setHeight(420),
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
