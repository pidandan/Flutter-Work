import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MineOperate extends StatefulWidget {
  MineOperate({Key key}) : super(key: key);

  @override
  _MineOperateState createState() => _MineOperateState();
}

class _MineOperateState extends State<MineOperate> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          height: ScreenUtil().setHeight(120),
          // padding: EdgeInsets.symmetric(horizontal: 10),

          decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.grey[200])),
            color: Colors.white,
          ),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.cached),
              ),
              Container(
                child: Text("设置信息", style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(120),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.crop_free),
              ),
              Container(
                child: Text("扫码考勤", style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        )
      ],
    ));
  }
}
