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
    return Stack(
      children: <Widget>[
        Container(
          height: ScreenUtil().setHeight(240),
          width: ScreenUtil().setWidth(750),
          color: Colors.indigo,
        ),
        _nameWidget()
      ],
    );
  }

  // 公司名称
  Widget _nameWidget() {
    return Positioned(
        left: 20,
        top: 10,
        child: Container(
          child: Text(
            '精诚合作 共筑未来',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
