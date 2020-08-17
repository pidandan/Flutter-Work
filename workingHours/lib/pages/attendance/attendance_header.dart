import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceHeader extends StatefulWidget {
  AttendanceHeader({Key key}) : super(key: key);

  @override
  _AttendanceHeaderState createState() => _AttendanceHeaderState();
}

class _AttendanceHeaderState extends State<AttendanceHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[_imageWidget(),  _workTime()],
    );
  }

  // 背景图片控件
  Widget _imageWidget() {
    return InkWell(
      onTap: () {
        print('打卡');
      },
      child: Container(
        height: ScreenUtil().setHeight(340),
        width: ScreenUtil().setWidth(750),
        child: Image.asset(
          'images/beijing.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }



  // 上班时段
  Widget _workTime() {
    return Positioned(
        left: 130,
        bottom: -4,
        child: Container(
          height: ScreenUtil().setHeight(80),
          width: ScreenUtil().setWidth(750),
          child: Text(
            '工作时段：09:00~18:00',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
